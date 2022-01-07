
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int bh_offset (struct buffer_head const*) ;

__attribute__((used)) static unsigned char *
nilfs_palloc_block_get_bitmap(const struct inode *inode,
         const struct buffer_head *bh, void *kaddr)
{
 return (unsigned char *)(kaddr + bh_offset(bh));
}
