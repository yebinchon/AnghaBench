
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file_lock {TYPE_2__* fl_lmops; TYPE_1__* fl_ops; } ;
struct TYPE_4__ {int (* fl_release_private ) (struct file_lock*) ;} ;
struct TYPE_3__ {int (* fl_release_private ) (struct file_lock*) ;} ;


 int stub1 (struct file_lock*) ;
 int stub2 (struct file_lock*) ;

void locks_release_private(struct file_lock *fl)
{
 if (fl->fl_ops) {
  if (fl->fl_ops->fl_release_private)
   fl->fl_ops->fl_release_private(fl);
  fl->fl_ops = ((void*)0);
 }
 if (fl->fl_lmops) {
  if (fl->fl_lmops->fl_release_private)
   fl->fl_lmops->fl_release_private(fl);
  fl->fl_lmops = ((void*)0);
 }

}
