
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int mapping; } ;
struct inode {int i_ino; struct address_space* i_mapping; } ;
struct ext2_dir_entry_2 {int name_len; int name; void* inode; void* rec_len; } ;
struct address_space {int dummy; } ;


 int ENOMEM ;
 int EXT2_DIR_REC_LEN (int) ;
 int KM_USER0 ;
 int __ext2_write_begin (int *,int ,int ,unsigned int,int ,struct page**,int *) ;
 void* cpu_to_le32 (int ) ;
 unsigned int ext2_chunk_size (struct inode*) ;
 int ext2_commit_chunk (struct page*,int ,unsigned int) ;
 void* ext2_rec_len_to_disk (int) ;
 int ext2_set_de_type (struct ext2_dir_entry_2*,struct inode*) ;
 struct page* grab_cache_page (struct address_space*,int ) ;
 void* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (void*,int ) ;
 int memcpy (int ,char*,int) ;
 int memset (void*,int ,unsigned int) ;
 int page_cache_release (struct page*) ;
 int unlock_page (struct page*) ;

int ext2_make_empty(struct inode *inode, struct inode *parent)
{
 struct address_space *mapping = inode->i_mapping;
 struct page *page = grab_cache_page(mapping, 0);
 unsigned chunk_size = ext2_chunk_size(inode);
 struct ext2_dir_entry_2 * de;
 int err;
 void *kaddr;

 if (!page)
  return -ENOMEM;

 err = __ext2_write_begin(((void*)0), page->mapping, 0, chunk_size, 0,
       &page, ((void*)0));
 if (err) {
  unlock_page(page);
  goto fail;
 }
 kaddr = kmap_atomic(page, KM_USER0);
 memset(kaddr, 0, chunk_size);
 de = (struct ext2_dir_entry_2 *)kaddr;
 de->name_len = 1;
 de->rec_len = ext2_rec_len_to_disk(EXT2_DIR_REC_LEN(1));
 memcpy (de->name, ".\0\0", 4);
 de->inode = cpu_to_le32(inode->i_ino);
 ext2_set_de_type (de, inode);

 de = (struct ext2_dir_entry_2 *)(kaddr + EXT2_DIR_REC_LEN(1));
 de->name_len = 2;
 de->rec_len = ext2_rec_len_to_disk(chunk_size - EXT2_DIR_REC_LEN(1));
 de->inode = cpu_to_le32(parent->i_ino);
 memcpy (de->name, "..\0", 4);
 ext2_set_de_type (de, inode);
 kunmap_atomic(kaddr, KM_USER0);
 err = ext2_commit_chunk(page, 0, chunk_size);
fail:
 page_cache_release(page);
 return err;
}
