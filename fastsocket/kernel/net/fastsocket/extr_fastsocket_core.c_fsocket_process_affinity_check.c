
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cpumask_var_t ;
struct TYPE_2__ {int pid; } ;


 int DEBUG ;
 scalar_t__ DISABLE_LISTEN_SPAWN ;
 int DPRINTK (int ,char*,...) ;
 int EINVAL ;
 scalar_t__ ENABLE_LISTEN_SPAWN_AUTOSET_AFFINITY ;
 int ENOMEM ;
 int EPERM ;
 int EPRINTK_LIMIT (int ,char*,...) ;
 int ERR ;
 int GFP_KERNEL ;
 int INFO ;
 int alloc_cpumask_var (int *,int ) ;
 int cpu_isset (int,int ) ;
 int cpu_set (int,int ) ;
 int cpumask_first (int ) ;
 int cpumask_next (int,int ) ;
 TYPE_1__* current ;
 scalar_t__ enable_listen_spawn ;
 int fastsocket_spawn_cpu ;
 int fastsocket_spawn_cpuset ;
 int free_cpumask_var (int ) ;
 int nr_cpu_ids ;
 int num_active_cpus () ;
 int sched_getaffinity (int ,int ) ;

__attribute__((used)) static int fsocket_process_affinity_check(int rcpu)
{
 int ccpu, ncpu, cpu;
 int tcpu = -1;
 cpumask_var_t omask;


 if (enable_listen_spawn == DISABLE_LISTEN_SPAWN) {
  EPRINTK_LIMIT(ERR, "Module para disable listen-spawn feature\n");
  return -EPERM;
 }

 if ((rcpu >= 0) && (rcpu > num_active_cpus())) {
  EPRINTK_LIMIT(ERR, "Requested CPU %d is greater than system available CPU core %d\n", rcpu, num_active_cpus());
  return -EINVAL;
 }



 if (rcpu >= 0)
  return rcpu;

 if (!alloc_cpumask_var(&omask, GFP_KERNEL))
  return -ENOMEM;

 sched_getaffinity(current->pid, omask);
 ccpu = cpumask_first(omask);
 ncpu = cpumask_next(ccpu, omask);
 free_cpumask_var(omask);

 DPRINTK(DEBUG, "Current process ccpu(%d) ncpu(%d)\n", ccpu, ncpu);

 if (ccpu >= nr_cpu_ids) {
  DPRINTK(DEBUG, "Current process affinity is messed up\n");
  return -EINVAL;
 }

 if (ncpu >= nr_cpu_ids) {
  DPRINTK(INFO, "Current process already binds to CPU %d\n", ccpu);
  return ccpu;
 }

 if (enable_listen_spawn != ENABLE_LISTEN_SPAWN_AUTOSET_AFFINITY) {
  EPRINTK_LIMIT(ERR, "Module para disable autoset affinity for listen-spawn\n");
  return -EPERM;
 }



 for (cpu = fastsocket_spawn_cpu; cpu < num_active_cpus(); cpu++) {
  if (!cpu_isset(cpu, fastsocket_spawn_cpuset)) {
   DPRINTK(INFO, "CPU %d is available for process affinity\n", cpu);
   tcpu = cpu;
   break;
  }
 }

 if (tcpu >= 0) {
  cpu_set(cpu, fastsocket_spawn_cpuset);
  fastsocket_spawn_cpu++;
 } else {
  EPRINTK_LIMIT(ERR, "Process number is more than CPU number\n");
  return -EINVAL;
 }

 DPRINTK(INFO, "Target process affinity: %d\n", tcpu);

 return tcpu;
}
