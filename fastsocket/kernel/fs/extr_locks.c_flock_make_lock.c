
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_lock {int fl_type; int fl_end; int fl_flags; int fl_pid; struct file* fl_file; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int tgid; } ;


 int ENOMEM ;
 int FL_FLOCK ;
 int OFFSET_MAX ;
 TYPE_1__* current ;
 int flock_translate_cmd (unsigned int) ;
 struct file_lock* locks_alloc_lock () ;

__attribute__((used)) static int flock_make_lock(struct file *filp, struct file_lock **lock,
  unsigned int cmd)
{
 struct file_lock *fl;
 int type = flock_translate_cmd(cmd);
 if (type < 0)
  return type;

 fl = locks_alloc_lock();
 if (fl == ((void*)0))
  return -ENOMEM;

 fl->fl_file = filp;
 fl->fl_pid = current->tgid;
 fl->fl_flags = FL_FLOCK;
 fl->fl_type = type;
 fl->fl_end = OFFSET_MAX;

 *lock = fl;
 return 0;
}
