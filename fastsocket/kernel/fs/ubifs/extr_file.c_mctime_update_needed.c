
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct inode {int i_ctime; int i_mtime; } ;


 int timespec_equal (int *,struct timespec const*) ;

__attribute__((used)) static inline int mctime_update_needed(const struct inode *inode,
           const struct timespec *now)
{
 if (!timespec_equal(&inode->i_mtime, now) ||
     !timespec_equal(&inode->i_ctime, now))
  return 1;
 return 0;
}
