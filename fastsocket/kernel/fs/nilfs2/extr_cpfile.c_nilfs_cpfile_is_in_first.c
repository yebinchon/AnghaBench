
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int __u64 ;


 scalar_t__ nilfs_cpfile_get_blkoff (struct inode const*,int ) ;

__attribute__((used)) static inline int nilfs_cpfile_is_in_first(const struct inode *cpfile,
        __u64 cno)
{
 return nilfs_cpfile_get_blkoff(cpfile, cno) == 0;
}
