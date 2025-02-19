; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corelow.c_init_core_ops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corelow.c_init_core_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@core_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Local core dump file\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"Use a core file as a target.  Specify the filename of the core file.\00", align 1
@core_open = common dso_local global i32 0, align 4
@core_close = common dso_local global i32 0, align 4
@find_default_attach = common dso_local global i32 0, align 4
@core_detach = common dso_local global i32 0, align 4
@get_core_registers = common dso_local global i32 0, align 4
@core_xfer_partial = common dso_local global i32 0, align 4
@xfer_memory = common dso_local global i32 0, align 4
@core_files_info = common dso_local global i32 0, align 4
@ignore = common dso_local global i8* null, align 8
@find_default_create_inferior = common dso_local global i32 0, align 4
@core_file_thread_alive = common dso_local global i32 0, align 4
@core_stratum = common dso_local global i32 0, align 4
@OPS_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_core_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_core_ops() #0 {
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 2), align 8
  %1 = load i32, i32* @core_open, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 19), align 4
  %2 = load i32, i32* @core_close, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 18), align 8
  %3 = load i32, i32* @find_default_attach, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 17), align 4
  %4 = load i32, i32* @core_detach, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 16), align 8
  %5 = load i32, i32* @get_core_registers, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 15), align 4
  %6 = load i32, i32* @core_xfer_partial, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 14), align 8
  %7 = load i32, i32* @xfer_memory, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 13), align 4
  %8 = load i32, i32* @core_files_info, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 12), align 8
  %9 = load i8*, i8** @ignore, align 8
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 11), align 8
  %10 = load i8*, i8** @ignore, align 8
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 10), align 8
  %11 = load i32, i32* @find_default_create_inferior, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 9), align 8
  %12 = load i32, i32* @core_file_thread_alive, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 8), align 4
  %13 = load i32, i32* @core_stratum, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 7), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 4), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 5), align 8
  %14 = load i32, i32* @OPS_MAGIC, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_ops, i32 0, i32 6), align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
