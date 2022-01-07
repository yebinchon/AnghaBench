
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_inode {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_page; } ;
typedef int ino_t ;


 void* kmap (int ) ;
 struct nilfs_inode* nilfs_palloc_block_get_entry (struct inode*,int ,struct buffer_head*,void*) ;

__attribute__((used)) static inline struct nilfs_inode *
nilfs_ifile_map_inode(struct inode *ifile, ino_t ino, struct buffer_head *ibh)
{
 void *kaddr = kmap(ibh->b_page);
 return nilfs_palloc_block_get_entry(ifile, ino, ibh, kaddr);
}
