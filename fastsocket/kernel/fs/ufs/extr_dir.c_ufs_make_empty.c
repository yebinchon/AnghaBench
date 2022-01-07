
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ufs_dir_entry {int d_name; void* d_reclen; void* d_ino; } ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct inode {int i_mode; int i_ino; struct address_space* i_mapping; struct super_block* i_sb; } ;
struct address_space {int dummy; } ;
struct TYPE_4__ {TYPE_1__* s_uspi; } ;
struct TYPE_3__ {unsigned int s_dirblksize; } ;


 int AOP_FLAG_UNINTERRUPTIBLE ;
 int ENOMEM ;
 int PAGE_CACHE_SIZE ;
 scalar_t__ UFS_DIR_REC_LEN (int) ;
 TYPE_2__* UFS_SB (struct super_block*) ;
 int __ufs_write_begin (int *,struct address_space*,int ,unsigned int const,int ,struct page**,int *) ;
 void* cpu_to_fs16 (struct super_block*,scalar_t__) ;
 void* cpu_to_fs32 (struct super_block*,int ) ;
 int fs16_to_cpu (struct super_block*,void*) ;
 struct page* grab_cache_page (struct address_space*,int ) ;
 int kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memset (char*,int ,int ) ;
 scalar_t__ page_address (struct page*) ;
 int page_cache_release (struct page*) ;
 int strcpy (int ,char*) ;
 int ufs_commit_chunk (struct page*,int ,unsigned int const) ;
 int ufs_set_de_namlen (struct super_block*,struct ufs_dir_entry*,int) ;
 int ufs_set_de_type (struct super_block*,struct ufs_dir_entry*,int ) ;
 int unlock_page (struct page*) ;

int ufs_make_empty(struct inode * inode, struct inode *dir)
{
 struct super_block * sb = dir->i_sb;
 struct address_space *mapping = inode->i_mapping;
 struct page *page = grab_cache_page(mapping, 0);
 const unsigned int chunk_size = UFS_SB(sb)->s_uspi->s_dirblksize;
 struct ufs_dir_entry * de;
 char *base;
 int err;

 if (!page)
  return -ENOMEM;

 err = __ufs_write_begin(((void*)0), mapping, 0, chunk_size,
    AOP_FLAG_UNINTERRUPTIBLE, &page, ((void*)0));
 if (err) {
  unlock_page(page);
  goto fail;
 }

 kmap(page);
 base = (char*)page_address(page);
 memset(base, 0, PAGE_CACHE_SIZE);

 de = (struct ufs_dir_entry *) base;

 de->d_ino = cpu_to_fs32(sb, inode->i_ino);
 ufs_set_de_type(sb, de, inode->i_mode);
 ufs_set_de_namlen(sb, de, 1);
 de->d_reclen = cpu_to_fs16(sb, UFS_DIR_REC_LEN(1));
 strcpy (de->d_name, ".");
 de = (struct ufs_dir_entry *)
  ((char *)de + fs16_to_cpu(sb, de->d_reclen));
 de->d_ino = cpu_to_fs32(sb, dir->i_ino);
 ufs_set_de_type(sb, de, dir->i_mode);
 de->d_reclen = cpu_to_fs16(sb, chunk_size - UFS_DIR_REC_LEN(1));
 ufs_set_de_namlen(sb, de, 2);
 strcpy (de->d_name, "..");
 kunmap(page);

 err = ufs_commit_chunk(page, 0, chunk_size);
fail:
 page_cache_release(page);
 return err;
}
