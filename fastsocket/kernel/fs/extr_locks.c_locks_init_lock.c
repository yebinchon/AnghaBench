
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int * fl_lmops; int * fl_ops; scalar_t__ fl_end; scalar_t__ fl_start; scalar_t__ fl_type; scalar_t__ fl_flags; int * fl_file; int * fl_nspid; scalar_t__ fl_pid; int * fl_owner; int * fl_fasync; int * fl_next; int fl_wait; int fl_block; int fl_link; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;

void locks_init_lock(struct file_lock *fl)
{
 INIT_LIST_HEAD(&fl->fl_link);
 INIT_LIST_HEAD(&fl->fl_block);
 init_waitqueue_head(&fl->fl_wait);
 fl->fl_next = ((void*)0);
 fl->fl_fasync = ((void*)0);
 fl->fl_owner = ((void*)0);
 fl->fl_pid = 0;
 fl->fl_nspid = ((void*)0);
 fl->fl_file = ((void*)0);
 fl->fl_flags = 0;
 fl->fl_type = 0;
 fl->fl_start = fl->fl_end = 0;
 fl->fl_ops = ((void*)0);
 fl->fl_lmops = ((void*)0);
}
