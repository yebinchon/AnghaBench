
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file_lock {TYPE_2__* fl_lmops; TYPE_1__* fl_ops; } ;
struct TYPE_4__ {int (* fl_copy_lock ) (struct file_lock*,struct file_lock*) ;} ;
struct TYPE_3__ {int (* fl_copy_lock ) (struct file_lock*,struct file_lock*) ;} ;


 int stub1 (struct file_lock*,struct file_lock*) ;
 int stub2 (struct file_lock*,struct file_lock*) ;

__attribute__((used)) static void locks_copy_private(struct file_lock *new, struct file_lock *fl)
{
 if (fl->fl_ops) {
  if (fl->fl_ops->fl_copy_lock)
   fl->fl_ops->fl_copy_lock(new, fl);
  new->fl_ops = fl->fl_ops;
 }
 if (fl->fl_lmops) {
  if (fl->fl_lmops->fl_copy_lock)
   fl->fl_lmops->fl_copy_lock(new, fl);
  new->fl_lmops = fl->fl_lmops;
 }
}
