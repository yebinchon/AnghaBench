
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ prev_sum_exec_runtime; scalar_t__ sum_exec_runtime; scalar_t__ nr_wakeups_idle; scalar_t__ nr_wakeups_passive; scalar_t__ nr_wakeups_affine_attempts; scalar_t__ nr_wakeups_affine; scalar_t__ nr_wakeups_remote; scalar_t__ nr_wakeups_local; scalar_t__ nr_wakeups_migrate; scalar_t__ nr_wakeups_sync; scalar_t__ nr_wakeups; scalar_t__ nr_forced_migrations; scalar_t__ nr_failed_migrations_hot; scalar_t__ nr_failed_migrations_running; scalar_t__ nr_failed_migrations_affine; scalar_t__ nr_migrations_cold; scalar_t__ nr_migrations; scalar_t__ slice_max; scalar_t__ exec_max; scalar_t__ block_max; scalar_t__ sum_sleep_runtime; scalar_t__ sleep_max; scalar_t__ iowait_count; scalar_t__ iowait_sum; scalar_t__ wait_count; scalar_t__ wait_sum; scalar_t__ wait_max; } ;
struct TYPE_3__ {scalar_t__ bkl_count; } ;
struct task_struct {scalar_t__ nivcsw; scalar_t__ nvcsw; TYPE_2__ se; TYPE_1__ sched_info; } ;



void proc_sched_set_task(struct task_struct *p)
{
 p->se.sum_exec_runtime = 0;
 p->se.prev_sum_exec_runtime = 0;
 p->nvcsw = 0;
 p->nivcsw = 0;
}
