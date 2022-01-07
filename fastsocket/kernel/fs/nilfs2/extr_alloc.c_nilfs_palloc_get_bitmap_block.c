
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int nilfs_mdt_get_block (struct inode*,int ,int,int *,struct buffer_head**) ;
 int nilfs_palloc_bitmap_blkoff (struct inode*,unsigned long) ;

__attribute__((used)) static int nilfs_palloc_get_bitmap_block(struct inode *inode,
      unsigned long group,
      int create, struct buffer_head **bhp)
{
 return nilfs_mdt_get_block(inode,
       nilfs_palloc_bitmap_blkoff(inode, group),
       create, ((void*)0), bhp);
}
