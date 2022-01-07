
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int __u64 ;


 int nilfs_mdt_get_block (struct inode*,int ,int,int *,struct buffer_head**) ;
 int nilfs_palloc_entry_blkoff (struct inode*,int ) ;

int nilfs_palloc_get_entry_block(struct inode *inode, __u64 nr,
     int create, struct buffer_head **bhp)
{
 return nilfs_mdt_get_block(inode, nilfs_palloc_entry_blkoff(inode, nr),
       create, ((void*)0), bhp);
}
