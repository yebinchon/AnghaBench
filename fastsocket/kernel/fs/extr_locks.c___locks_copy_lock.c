
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int * fl_lmops; int * fl_ops; int fl_end; int fl_start; int fl_type; int fl_flags; int * fl_file; int fl_pid; int fl_owner; } ;



void __locks_copy_lock(struct file_lock *new, const struct file_lock *fl)
{
 new->fl_owner = fl->fl_owner;
 new->fl_pid = fl->fl_pid;
 new->fl_file = ((void*)0);
 new->fl_flags = fl->fl_flags;
 new->fl_type = fl->fl_type;
 new->fl_start = fl->fl_start;
 new->fl_end = fl->fl_end;
 new->fl_ops = ((void*)0);
 new->fl_lmops = ((void*)0);
}
