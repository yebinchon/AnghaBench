
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int fl_lmops; int fl_ops; int fl_file; } ;


 int __locks_copy_lock (struct file_lock*,struct file_lock*) ;
 int locks_copy_private (struct file_lock*,struct file_lock*) ;
 int locks_release_private (struct file_lock*) ;

void locks_copy_lock(struct file_lock *new, struct file_lock *fl)
{
 locks_release_private(new);

 __locks_copy_lock(new, fl);
 new->fl_file = fl->fl_file;
 new->fl_ops = fl->fl_ops;
 new->fl_lmops = fl->fl_lmops;

 locks_copy_private(new, fl);
}
