
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_blocks; } ;


 int i_size_read (struct inode*) ;
 int i_size_write (struct inode*,int ) ;

void fsstack_copy_inode_size(struct inode *dst, const struct inode *src)
{
 i_size_write(dst, i_size_read((struct inode *)src));
 dst->i_blocks = src->i_blocks;
}
