
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int __u64 ;


 int nilfs_sufile_do_set_error ;
 int nilfs_sufile_update (struct inode*,int ,int ,int ) ;

__attribute__((used)) static inline int nilfs_sufile_set_error(struct inode *sufile, __u64 segnum)
{
 return nilfs_sufile_update(sufile, segnum, 0,
       nilfs_sufile_do_set_error);
}
