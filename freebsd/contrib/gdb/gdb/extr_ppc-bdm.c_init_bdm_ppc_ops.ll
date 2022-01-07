; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppc-bdm.c_init_bdm_ppc_ops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppc-bdm.c_init_bdm_ppc_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ocd\00", align 1
@bdm_ppc_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Remote target with On-Chip Debugging\00", align 1
@.str.2 = private unnamed_addr constant [222 x i8] c"Use a remote target with On-Chip Debugging.  To use a target box;\0Aspecify the serial device it is connected to (e.g. /dev/ttya).  To use\0Aa wiggler, specify wiggler and then the port it is connected to\0A(e.g. wiggler lpt1).\00", align 1
@bdm_ppc_open = common dso_local global i32 0, align 4
@ocd_close = common dso_local global i32 0, align 4
@ocd_detach = common dso_local global i32 0, align 4
@ocd_resume = common dso_local global i32 0, align 4
@bdm_ppc_wait = common dso_local global i32 0, align 4
@bdm_ppc_fetch_registers = common dso_local global i32 0, align 4
@bdm_ppc_store_registers = common dso_local global i32 0, align 4
@ocd_prepare_to_store = common dso_local global i32 0, align 4
@ocd_xfer_memory = common dso_local global i32 0, align 4
@ocd_files_info = common dso_local global i32 0, align 4
@ocd_insert_breakpoint = common dso_local global i32 0, align 4
@ocd_remove_breakpoint = common dso_local global i32 0, align 4
@ocd_kill = common dso_local global i32 0, align 4
@ocd_load = common dso_local global i32 0, align 4
@ocd_create_inferior = common dso_local global i32 0, align 4
@ocd_mourn = common dso_local global i32 0, align 4
@ocd_thread_alive = common dso_local global i32 0, align 4
@ocd_stop = common dso_local global i32 0, align 4
@process_stratum = common dso_local global i32 0, align 4
@OPS_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_bdm_ppc_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_bdm_ppc_ops() #0 {
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 2), align 8
  %1 = load i32, i32* @bdm_ppc_open, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 27), align 8
  %2 = load i32, i32* @ocd_close, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 26), align 4
  %3 = load i32, i32* @ocd_detach, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 25), align 8
  %4 = load i32, i32* @ocd_resume, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 24), align 4
  %5 = load i32, i32* @bdm_ppc_wait, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 23), align 8
  %6 = load i32, i32* @bdm_ppc_fetch_registers, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 22), align 4
  %7 = load i32, i32* @bdm_ppc_store_registers, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 21), align 8
  %8 = load i32, i32* @ocd_prepare_to_store, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 20), align 4
  %9 = load i32, i32* @ocd_xfer_memory, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 19), align 8
  %10 = load i32, i32* @ocd_files_info, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 18), align 4
  %11 = load i32, i32* @ocd_insert_breakpoint, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 17), align 8
  %12 = load i32, i32* @ocd_remove_breakpoint, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 16), align 4
  %13 = load i32, i32* @ocd_kill, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 15), align 8
  %14 = load i32, i32* @ocd_load, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 14), align 4
  %15 = load i32, i32* @ocd_create_inferior, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 13), align 8
  %16 = load i32, i32* @ocd_mourn, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 12), align 4
  %17 = load i32, i32* @ocd_thread_alive, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 11), align 8
  %18 = load i32, i32* @ocd_stop, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 10), align 4
  %19 = load i32, i32* @process_stratum, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 9), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 4), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 5), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 6), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 7), align 8
  %20 = load i32, i32* @OPS_MAGIC, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bdm_ppc_ops, i32 0, i32 8), align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
