
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_writer_sem; struct nilfs_sb_info* ns_writer; } ;
struct nilfs_sb_info {int dummy; } ;


 int down_write (int *) ;
 int up_write (int *) ;

__attribute__((used)) static inline void
nilfs_detach_writer(struct the_nilfs *nilfs, struct nilfs_sb_info *sbi)
{
 down_write(&nilfs->ns_writer_sem);
 if (sbi == nilfs->ns_writer)
  nilfs->ns_writer = ((void*)0);
 up_write(&nilfs->ns_writer_sem);
}
