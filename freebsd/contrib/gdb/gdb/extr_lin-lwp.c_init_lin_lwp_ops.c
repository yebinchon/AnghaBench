
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_magic; int to_has_thread_control; int to_stratum; int to_insert_exec_catchpoint; int to_insert_vfork_catchpoint; int to_insert_fork_catchpoint; int to_post_attach; int to_post_startup_inferior; int to_pid_to_str; int to_thread_alive; int to_mourn_inferior; int to_create_inferior; int to_kill; int to_xfer_memory; int to_store_registers; int to_fetch_registers; int to_wait; int to_resume; int to_detach; int to_attach; int to_open; } ;


 int OPS_MAGIC ;
 int child_insert_exec_catchpoint ;
 int child_insert_fork_catchpoint ;
 int child_insert_vfork_catchpoint ;
 int child_post_attach ;
 int child_post_startup_inferior ;
 int fetch_inferior_registers ;
 int lin_lwp_attach ;
 int lin_lwp_create_inferior ;
 int lin_lwp_detach ;
 int lin_lwp_kill ;
 int lin_lwp_mourn_inferior ;
 int lin_lwp_open ;
 TYPE_1__ lin_lwp_ops ;
 int lin_lwp_pid_to_str ;
 int lin_lwp_resume ;
 int lin_lwp_thread_alive ;
 int lin_lwp_wait ;
 int lin_lwp_xfer_memory ;
 int store_inferior_registers ;
 int tc_schedlock ;
 int thread_stratum ;

__attribute__((used)) static void
init_lin_lwp_ops (void)
{



  lin_lwp_ops.to_shortname = "lwp-layer";
  lin_lwp_ops.to_longname = "lwp-layer";
  lin_lwp_ops.to_doc = "Low level threads support (LWP layer)";
  lin_lwp_ops.to_attach = lin_lwp_attach;
  lin_lwp_ops.to_detach = lin_lwp_detach;
  lin_lwp_ops.to_resume = lin_lwp_resume;
  lin_lwp_ops.to_wait = lin_lwp_wait;


  lin_lwp_ops.to_fetch_registers = fetch_inferior_registers;
  lin_lwp_ops.to_store_registers = store_inferior_registers;
  lin_lwp_ops.to_xfer_memory = lin_lwp_xfer_memory;
  lin_lwp_ops.to_kill = lin_lwp_kill;
  lin_lwp_ops.to_create_inferior = lin_lwp_create_inferior;
  lin_lwp_ops.to_mourn_inferior = lin_lwp_mourn_inferior;
  lin_lwp_ops.to_thread_alive = lin_lwp_thread_alive;
  lin_lwp_ops.to_pid_to_str = lin_lwp_pid_to_str;
  lin_lwp_ops.to_post_startup_inferior = child_post_startup_inferior;
  lin_lwp_ops.to_post_attach = child_post_attach;
  lin_lwp_ops.to_insert_fork_catchpoint = child_insert_fork_catchpoint;
  lin_lwp_ops.to_insert_vfork_catchpoint = child_insert_vfork_catchpoint;
  lin_lwp_ops.to_insert_exec_catchpoint = child_insert_exec_catchpoint;

  lin_lwp_ops.to_stratum = thread_stratum;
  lin_lwp_ops.to_has_thread_control = tc_schedlock;
  lin_lwp_ops.to_magic = OPS_MAGIC;
}
