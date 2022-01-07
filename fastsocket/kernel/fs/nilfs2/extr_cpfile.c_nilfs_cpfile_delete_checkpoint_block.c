
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int __u64 ;


 int nilfs_cpfile_get_blkoff (struct inode*,int ) ;
 int nilfs_mdt_delete_block (struct inode*,int ) ;

__attribute__((used)) static inline int nilfs_cpfile_delete_checkpoint_block(struct inode *cpfile,
             __u64 cno)
{
 return nilfs_mdt_delete_block(cpfile,
          nilfs_cpfile_get_blkoff(cpfile, cno));
}
