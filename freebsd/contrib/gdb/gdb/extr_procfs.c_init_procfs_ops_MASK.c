#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* to_shortname; char* to_longname; char* to_doc; int to_has_all_memory; int to_has_memory; int to_has_execution; int to_has_stack; int to_has_registers; int /*<<< orphan*/  to_magic; int /*<<< orphan*/  to_can_use_hw_breakpoint; int /*<<< orphan*/  to_make_corefile_notes; int /*<<< orphan*/  to_find_memory_regions; int /*<<< orphan*/  to_has_thread_control; int /*<<< orphan*/  to_stratum; int /*<<< orphan*/  to_pid_to_str; int /*<<< orphan*/  to_thread_alive; int /*<<< orphan*/  to_find_new_threads; int /*<<< orphan*/  to_terminal_info; int /*<<< orphan*/  to_terminal_save_ours; int /*<<< orphan*/  to_terminal_ours; int /*<<< orphan*/  to_terminal_ours_for_output; int /*<<< orphan*/  to_terminal_inferior; int /*<<< orphan*/  to_terminal_init; int /*<<< orphan*/  to_stop; int /*<<< orphan*/  to_files_info; int /*<<< orphan*/  to_notice_signals; int /*<<< orphan*/  to_remove_breakpoint; int /*<<< orphan*/  to_insert_breakpoint; int /*<<< orphan*/  to_xfer_memory; int /*<<< orphan*/  to_xfer_partial; int /*<<< orphan*/  to_store_registers; int /*<<< orphan*/  to_fetch_registers; int /*<<< orphan*/  to_prepare_to_store; int /*<<< orphan*/  to_resume; int /*<<< orphan*/  to_wait; int /*<<< orphan*/  to_detach; int /*<<< orphan*/  to_attach; int /*<<< orphan*/  to_mourn_inferior; int /*<<< orphan*/  to_kill; int /*<<< orphan*/  to_create_inferior; int /*<<< orphan*/  to_can_run; int /*<<< orphan*/  to_open; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPS_MAGIC ; 
 int /*<<< orphan*/  child_terminal_info ; 
 int /*<<< orphan*/  memory_insert_breakpoint ; 
 int /*<<< orphan*/  memory_remove_breakpoint ; 
 int /*<<< orphan*/  proc_find_memory_regions ; 
 int /*<<< orphan*/  process_stratum ; 
 int /*<<< orphan*/  procfs_attach ; 
 int /*<<< orphan*/  procfs_can_run ; 
 int /*<<< orphan*/  procfs_can_use_hw_breakpoint ; 
 int /*<<< orphan*/  procfs_create_inferior ; 
 int /*<<< orphan*/  procfs_detach ; 
 int /*<<< orphan*/  procfs_fetch_registers ; 
 int /*<<< orphan*/  procfs_files_info ; 
 int /*<<< orphan*/  procfs_find_new_threads ; 
 int /*<<< orphan*/  procfs_kill_inferior ; 
 int /*<<< orphan*/  procfs_make_note_section ; 
 int /*<<< orphan*/  procfs_mourn_inferior ; 
 int /*<<< orphan*/  procfs_notice_signals ; 
 int /*<<< orphan*/  procfs_open ; 
 TYPE_1__ procfs_ops ; 
 int /*<<< orphan*/  procfs_pid_to_str ; 
 int /*<<< orphan*/  procfs_prepare_to_store ; 
 int /*<<< orphan*/  procfs_resume ; 
 int /*<<< orphan*/  procfs_stop ; 
 int /*<<< orphan*/  procfs_store_registers ; 
 int /*<<< orphan*/  procfs_thread_alive ; 
 int /*<<< orphan*/  procfs_wait ; 
 int /*<<< orphan*/  procfs_xfer_memory ; 
 int /*<<< orphan*/  procfs_xfer_partial ; 
 int /*<<< orphan*/  tc_schedlock ; 
 int /*<<< orphan*/  terminal_inferior ; 
 int /*<<< orphan*/  terminal_init_inferior ; 
 int /*<<< orphan*/  terminal_ours ; 
 int /*<<< orphan*/  terminal_ours_for_output ; 
 int /*<<< orphan*/  terminal_save_ours ; 

__attribute__((used)) static void
FUNC0 (void)
{
  procfs_ops.to_shortname           = "procfs";
  procfs_ops.to_longname            = "Unix /proc child process";
  procfs_ops.to_doc                 =
    "Unix /proc child process (started by the \"run\" command).";
  procfs_ops.to_open                = procfs_open;
  procfs_ops.to_can_run             = procfs_can_run;
  procfs_ops.to_create_inferior     = procfs_create_inferior;
  procfs_ops.to_kill                = procfs_kill_inferior;
  procfs_ops.to_mourn_inferior      = procfs_mourn_inferior;
  procfs_ops.to_attach              = procfs_attach;
  procfs_ops.to_detach              = procfs_detach;
  procfs_ops.to_wait                = procfs_wait;
  procfs_ops.to_resume              = procfs_resume;
  procfs_ops.to_prepare_to_store    = procfs_prepare_to_store;
  procfs_ops.to_fetch_registers     = procfs_fetch_registers;
  procfs_ops.to_store_registers     = procfs_store_registers;
  procfs_ops.to_xfer_partial        = procfs_xfer_partial;
  procfs_ops.to_xfer_memory         = procfs_xfer_memory;
  procfs_ops.to_insert_breakpoint   =  memory_insert_breakpoint;
  procfs_ops.to_remove_breakpoint   =  memory_remove_breakpoint;
  procfs_ops.to_notice_signals      = procfs_notice_signals;
  procfs_ops.to_files_info          = procfs_files_info;
  procfs_ops.to_stop                = procfs_stop;

  procfs_ops.to_terminal_init       = terminal_init_inferior;
  procfs_ops.to_terminal_inferior   = terminal_inferior;
  procfs_ops.to_terminal_ours_for_output = terminal_ours_for_output;
  procfs_ops.to_terminal_ours       = terminal_ours;
  procfs_ops.to_terminal_save_ours  = terminal_save_ours;
  procfs_ops.to_terminal_info       = child_terminal_info;

  procfs_ops.to_find_new_threads    = procfs_find_new_threads;
  procfs_ops.to_thread_alive        = procfs_thread_alive;
  procfs_ops.to_pid_to_str          = procfs_pid_to_str;

  procfs_ops.to_has_all_memory      = 1;
  procfs_ops.to_has_memory          = 1;
  procfs_ops.to_has_execution       = 1;
  procfs_ops.to_has_stack           = 1;
  procfs_ops.to_has_registers       = 1;
  procfs_ops.to_stratum             = process_stratum;
  procfs_ops.to_has_thread_control  = tc_schedlock;
  procfs_ops.to_find_memory_regions = proc_find_memory_regions;
  procfs_ops.to_make_corefile_notes = procfs_make_note_section;
  procfs_ops.to_can_use_hw_breakpoint = procfs_can_use_hw_breakpoint;
  procfs_ops.to_magic               = OPS_MAGIC;
}