
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int nilfs_mdt_get_block (struct inode*,int ,int,int ,struct buffer_head**) ;
 int nilfs_palloc_desc_blkoff (struct inode*,unsigned long) ;
 int nilfs_palloc_desc_block_init ;

__attribute__((used)) static int nilfs_palloc_get_desc_block(struct inode *inode,
           unsigned long group,
           int create, struct buffer_head **bhp)
{
 return nilfs_mdt_get_block(inode,
       nilfs_palloc_desc_blkoff(inode, group),
       create, nilfs_palloc_desc_block_init, bhp);
}
