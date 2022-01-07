
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int __u64 ;


 int nilfs_cpfile_block_init ;
 int nilfs_cpfile_get_blkoff (struct inode*,int ) ;
 int nilfs_mdt_get_block (struct inode*,int ,int,int ,struct buffer_head**) ;

__attribute__((used)) static inline int nilfs_cpfile_get_checkpoint_block(struct inode *cpfile,
          __u64 cno,
          int create,
          struct buffer_head **bhp)
{
 return nilfs_mdt_get_block(cpfile,
       nilfs_cpfile_get_blkoff(cpfile, cno),
       create, nilfs_cpfile_block_init, bhp);
}
