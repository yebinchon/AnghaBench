
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nilfs_dir_entry {int name_len; int name; void* inode; void* rec_len; } ;
struct inode {int i_ino; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;


 int ENOMEM ;
 int KM_USER0 ;
 int NILFS_DIR_REC_LEN (int) ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le64 (int ) ;
 struct page* grab_cache_page (struct address_space*,int ) ;
 void* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (void*,int ) ;
 int memcpy (int ,char*,int) ;
 int memset (void*,int ,unsigned int) ;
 unsigned int nilfs_chunk_size (struct inode*) ;
 int nilfs_commit_chunk (struct page*,struct address_space*,int ,unsigned int) ;
 int nilfs_prepare_chunk (struct page*,struct address_space*,int ,unsigned int) ;
 int nilfs_set_de_type (struct nilfs_dir_entry*,struct inode*) ;
 int page_cache_release (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

int nilfs_make_empty(struct inode *inode, struct inode *parent)
{
 struct address_space *mapping = inode->i_mapping;
 struct page *page = grab_cache_page(mapping, 0);
 unsigned chunk_size = nilfs_chunk_size(inode);
 struct nilfs_dir_entry *de;
 int err;
 void *kaddr;

 if (!page)
  return -ENOMEM;

 err = nilfs_prepare_chunk(page, mapping, 0, chunk_size);
 if (unlikely(err)) {
  unlock_page(page);
  goto fail;
 }
 kaddr = kmap_atomic(page, KM_USER0);
 memset(kaddr, 0, chunk_size);
 de = (struct nilfs_dir_entry *)kaddr;
 de->name_len = 1;
 de->rec_len = cpu_to_le16(NILFS_DIR_REC_LEN(1));
 memcpy(de->name, ".\0\0", 4);
 de->inode = cpu_to_le64(inode->i_ino);
 nilfs_set_de_type(de, inode);

 de = (struct nilfs_dir_entry *)(kaddr + NILFS_DIR_REC_LEN(1));
 de->name_len = 2;
 de->rec_len = cpu_to_le16(chunk_size - NILFS_DIR_REC_LEN(1));
 de->inode = cpu_to_le64(parent->i_ino);
 memcpy(de->name, "..\0", 4);
 nilfs_set_de_type(de, inode);
 kunmap_atomic(kaddr, KM_USER0);
 err = nilfs_commit_chunk(page, mapping, 0, chunk_size);
fail:
 page_cache_release(page);
 return err;
}
