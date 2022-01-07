; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-procfs.c_init_procfs_ops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-procfs.c_init_procfs_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"procfs\00", align 1
@procfs_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"QNX Neutrino procfs child process\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"QNX Neutrino procfs child process (started by the \22run\22 command).\0A\09target procfs <node>\00", align 1
@procfs_open = common dso_local global i32 0, align 4
@procfs_attach = common dso_local global i32 0, align 4
@procfs_post_attach = common dso_local global i32 0, align 4
@procfs_detach = common dso_local global i32 0, align 4
@procfs_resume = common dso_local global i32 0, align 4
@procfs_wait = common dso_local global i32 0, align 4
@procfs_fetch_registers = common dso_local global i32 0, align 4
@procfs_store_registers = common dso_local global i32 0, align 4
@procfs_prepare_to_store = common dso_local global i32 0, align 4
@procfs_xfer_memory = common dso_local global i32 0, align 4
@procfs_files_info = common dso_local global i32 0, align 4
@procfs_insert_breakpoint = common dso_local global i32 0, align 4
@procfs_remove_breakpoint = common dso_local global i8* null, align 8
@procfs_can_use_hw_breakpoint = common dso_local global i32 0, align 4
@procfs_insert_hw_breakpoint = common dso_local global i32 0, align 4
@procfs_insert_hw_watchpoint = common dso_local global i32 0, align 4
@procfs_remove_hw_watchpoint = common dso_local global i32 0, align 4
@procfs_stopped_by_watchpoint = common dso_local global i32 0, align 4
@terminal_init_inferior = common dso_local global i32 0, align 4
@terminal_inferior = common dso_local global i32 0, align 4
@terminal_ours_for_output = common dso_local global i32 0, align 4
@terminal_ours = common dso_local global i32 0, align 4
@child_terminal_info = common dso_local global i32 0, align 4
@procfs_kill_inferior = common dso_local global i32 0, align 4
@procfs_create_inferior = common dso_local global i32 0, align 4
@procfs_mourn_inferior = common dso_local global i32 0, align 4
@procfs_can_run = common dso_local global i32 0, align 4
@procfs_notice_signals = common dso_local global i32 0, align 4
@procfs_thread_alive = common dso_local global i32 0, align 4
@procfs_find_new_threads = common dso_local global i32 0, align 4
@procfs_pid_to_str = common dso_local global i32 0, align 4
@procfs_stop = common dso_local global i32 0, align 4
@process_stratum = common dso_local global i32 0, align 4
@OPS_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_procfs_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_procfs_ops() #0 {
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 2), align 8
  %1 = load i32, i32* @procfs_open, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 43), align 4
  %2 = load i32, i32* @procfs_attach, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 42), align 8
  %3 = load i32, i32* @procfs_post_attach, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 41), align 4
  %4 = load i32, i32* @procfs_detach, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 40), align 8
  %5 = load i32, i32* @procfs_resume, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 39), align 4
  %6 = load i32, i32* @procfs_wait, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 38), align 8
  %7 = load i32, i32* @procfs_fetch_registers, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 37), align 4
  %8 = load i32, i32* @procfs_store_registers, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 36), align 8
  %9 = load i32, i32* @procfs_prepare_to_store, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 35), align 4
  %10 = load i32, i32* @procfs_xfer_memory, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 34), align 8
  %11 = load i32, i32* @procfs_files_info, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 33), align 4
  %12 = load i32, i32* @procfs_insert_breakpoint, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 32), align 8
  %13 = load i8*, i8** @procfs_remove_breakpoint, align 8
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 31), align 8
  %14 = load i32, i32* @procfs_can_use_hw_breakpoint, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 30), align 4
  %15 = load i32, i32* @procfs_insert_hw_breakpoint, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 29), align 8
  %16 = load i8*, i8** @procfs_remove_breakpoint, align 8
  store i8* %16, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 28), align 8
  %17 = load i32, i32* @procfs_insert_hw_watchpoint, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 27), align 8
  %18 = load i32, i32* @procfs_remove_hw_watchpoint, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 26), align 4
  %19 = load i32, i32* @procfs_stopped_by_watchpoint, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 25), align 8
  %20 = load i32, i32* @terminal_init_inferior, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 24), align 4
  %21 = load i32, i32* @terminal_inferior, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 23), align 8
  %22 = load i32, i32* @terminal_ours_for_output, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 22), align 4
  %23 = load i32, i32* @terminal_ours, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 21), align 8
  %24 = load i32, i32* @child_terminal_info, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 20), align 4
  %25 = load i32, i32* @procfs_kill_inferior, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 19), align 8
  %26 = load i32, i32* @procfs_create_inferior, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 18), align 4
  %27 = load i32, i32* @procfs_mourn_inferior, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 17), align 8
  %28 = load i32, i32* @procfs_can_run, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 16), align 4
  %29 = load i32, i32* @procfs_notice_signals, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 15), align 8
  %30 = load i32, i32* @procfs_thread_alive, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 14), align 4
  %31 = load i32, i32* @procfs_find_new_threads, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 13), align 8
  %32 = load i32, i32* @procfs_pid_to_str, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 12), align 4
  %33 = load i32, i32* @procfs_stop, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 11), align 8
  %34 = load i32, i32* @process_stratum, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 10), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 4), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 5), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 6), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 7), align 8
  %35 = load i32, i32* @OPS_MAGIC, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 9), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @procfs_ops, i32 0, i32 8), align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
