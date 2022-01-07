
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sigset_t ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int trace; } ;


 int SIGUSR1 ;
 int SIG_BLOCK ;
 TYPE_2__* SYSPAGE_ENTRY (int ) ;
 int add_info (char*,int ,char*) ;
 int add_target (int *) ;
 int cpuinfo ;
 int init_procfs_ops () ;
 int notice_signals () ;
 int nto_cpuinfo_flags ;
 int nto_cpuinfo_valid ;
 int procfs_meminfo ;
 int procfs_ops ;
 int procfs_pidlist ;
 TYPE_1__ run ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;

void
_initialize_procfs (void)
{
  sigset_t set;

  init_procfs_ops ();
  add_target (&procfs_ops);



  sigemptyset (&set);
  sigaddset (&set, SIGUSR1);
  sigprocmask (SIG_BLOCK, &set, ((void*)0));


  sigemptyset (&run.trace);
  notice_signals ();


  nto_cpuinfo_flags = SYSPAGE_ENTRY (cpuinfo)->flags;
  nto_cpuinfo_valid = 1;

  add_info ("pidlist", procfs_pidlist, "pidlist");
  add_info ("meminfo", procfs_meminfo, "memory information");
}
