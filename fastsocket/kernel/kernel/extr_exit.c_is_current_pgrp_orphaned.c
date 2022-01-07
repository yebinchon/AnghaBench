
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int task_pgrp (int ) ;
 int tasklist_lock ;
 int will_become_orphaned_pgrp (int ,int *) ;

int is_current_pgrp_orphaned(void)
{
 int retval;

 read_lock(&tasklist_lock);
 retval = will_become_orphaned_pgrp(task_pgrp(current), ((void*)0));
 read_unlock(&tasklist_lock);

 return retval;
}
