
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {scalar_t__ s_time_gran; } ;


 struct timespec CURRENT_TIME_SEC ;
 scalar_t__ NSEC_PER_SEC ;
 struct timespec current_fs_time (TYPE_1__*) ;

__attribute__((used)) static inline struct timespec ubifs_current_time(struct inode *inode)
{
 return (inode->i_sb->s_time_gran < NSEC_PER_SEC) ?
  current_fs_time(inode->i_sb) : CURRENT_TIME_SEC;
}
