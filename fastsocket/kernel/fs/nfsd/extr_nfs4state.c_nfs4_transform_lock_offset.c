
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {scalar_t__ fl_start; scalar_t__ fl_end; } ;


 void* OFFSET_MAX ;

__attribute__((used)) static inline void
nfs4_transform_lock_offset(struct file_lock *lock)
{
 if (lock->fl_start < 0)
  lock->fl_start = OFFSET_MAX;
 if (lock->fl_end < 0)
  lock->fl_end = OFFSET_MAX;
}
