
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_lock {scalar_t__ fl_owner; TYPE_1__* fl_lmops; } ;
struct TYPE_2__ {scalar_t__ (* fl_compare_owner ) (struct file_lock*,struct file_lock*) ;} ;


 scalar_t__ stub1 (struct file_lock*,struct file_lock*) ;

__attribute__((used)) static int posix_same_owner(struct file_lock *fl1, struct file_lock *fl2)
{
 if (fl1->fl_lmops && fl1->fl_lmops->fl_compare_owner)
  return fl2->fl_lmops == fl1->fl_lmops &&
   fl1->fl_lmops->fl_compare_owner(fl1, fl2);
 return fl1->fl_owner == fl2->fl_owner;
}
