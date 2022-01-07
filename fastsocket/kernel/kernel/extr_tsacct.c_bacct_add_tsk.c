
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct timespec {scalar_t__ tv_sec; } ;
struct taskstats {int ac_comm; int ac_majflt; int ac_minflt; void* ac_stimescaled; void* ac_utimescaled; void* ac_stime; void* ac_utime; int ac_ppid; int ac_gid; int ac_uid; int ac_pid; int ac_sched; int ac_nice; int ac_flag; int ac_exitcode; scalar_t__ ac_btime; int ac_etime; } ;
struct task_struct {int flags; int comm; int maj_flt; int min_flt; int stimescaled; int utimescaled; int stime; int utime; int real_parent; int pid; int policy; int exit_code; int start_time; } ;
struct cred {int gid; int uid; } ;
struct TYPE_2__ {int tgid; } ;


 int ACORE ;
 int AFORK ;
 int ASU ;
 int AXSIG ;
 int BUILD_BUG_ON (int) ;
 int NSEC_PER_USEC ;
 int PF_DUMPCORE ;
 int PF_FORKNOEXEC ;
 int PF_SIGNALED ;
 int PF_SUPERPRIV ;
 scalar_t__ TASK_COMM_LEN ;
 scalar_t__ TS_COMM_LEN ;
 struct cred* __task_cred (struct task_struct*) ;
 void* cputime_to_usecs (int ) ;
 int do_div (int ,int ) ;
 int do_posix_clock_monotonic_gettime (struct timespec*) ;
 scalar_t__ get_seconds () ;
 scalar_t__ pid_alive (struct task_struct*) ;
 TYPE_1__* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int strncpy (int ,int ,int) ;
 int task_nice (struct task_struct*) ;
 scalar_t__ thread_group_leader (struct task_struct*) ;
 struct timespec timespec_sub (struct timespec,int ) ;
 int timespec_to_ns (struct timespec*) ;

void bacct_add_tsk(struct taskstats *stats, struct task_struct *tsk)
{
 const struct cred *tcred;
 struct timespec uptime, ts;
 u64 ac_etime;

 BUILD_BUG_ON(TS_COMM_LEN < TASK_COMM_LEN);


 do_posix_clock_monotonic_gettime(&uptime);
 ts = timespec_sub(uptime, tsk->start_time);

 ac_etime = timespec_to_ns(&ts);
 do_div(ac_etime, NSEC_PER_USEC);
 stats->ac_etime = ac_etime;
 stats->ac_btime = get_seconds() - ts.tv_sec;
 if (thread_group_leader(tsk)) {
  stats->ac_exitcode = tsk->exit_code;
  if (tsk->flags & PF_FORKNOEXEC)
   stats->ac_flag |= AFORK;
 }
 if (tsk->flags & PF_SUPERPRIV)
  stats->ac_flag |= ASU;
 if (tsk->flags & PF_DUMPCORE)
  stats->ac_flag |= ACORE;
 if (tsk->flags & PF_SIGNALED)
  stats->ac_flag |= AXSIG;
 stats->ac_nice = task_nice(tsk);
 stats->ac_sched = tsk->policy;
 stats->ac_pid = tsk->pid;
 rcu_read_lock();
 tcred = __task_cred(tsk);
 stats->ac_uid = tcred->uid;
 stats->ac_gid = tcred->gid;
 stats->ac_ppid = pid_alive(tsk) ?
    rcu_dereference(tsk->real_parent)->tgid : 0;
 rcu_read_unlock();
 stats->ac_utime = cputime_to_usecs(tsk->utime);
 stats->ac_stime = cputime_to_usecs(tsk->stime);
 stats->ac_utimescaled = cputime_to_usecs(tsk->utimescaled);
 stats->ac_stimescaled = cputime_to_usecs(tsk->stimescaled);
 stats->ac_minflt = tsk->min_flt;
 stats->ac_majflt = tsk->maj_flt;

 strncpy(stats->ac_comm, tsk->comm, sizeof(stats->ac_comm));
}
