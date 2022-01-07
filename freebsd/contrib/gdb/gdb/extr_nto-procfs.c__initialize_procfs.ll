; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-procfs.c__initialize_procfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-procfs.c__initialize_procfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@procfs_ops = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@run = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@cpuinfo = common dso_local global i32 0, align 4
@nto_cpuinfo_flags = common dso_local global i32 0, align 4
@nto_cpuinfo_valid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"pidlist\00", align 1
@procfs_pidlist = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"meminfo\00", align 1
@procfs_meminfo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"memory information\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_procfs() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @init_procfs_ops()
  %3 = call i32 @add_target(i32* @procfs_ops)
  %4 = call i32 @sigemptyset(i32* %1)
  %5 = load i32, i32* @SIGUSR1, align 4
  %6 = call i32 @sigaddset(i32* %1, i32 %5)
  %7 = load i32, i32* @SIG_BLOCK, align 4
  %8 = call i32 @sigprocmask(i32 %7, i32* %1, i32* null)
  %9 = call i32 @sigemptyset(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @run, i32 0, i32 0))
  %10 = call i32 (...) @notice_signals()
  %11 = load i32, i32* @cpuinfo, align 4
  %12 = call %struct.TYPE_4__* @SYSPAGE_ENTRY(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* @nto_cpuinfo_flags, align 4
  store i32 1, i32* @nto_cpuinfo_valid, align 4
  %15 = load i32, i32* @procfs_pidlist, align 4
  %16 = call i32 @add_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @procfs_meminfo, align 4
  %18 = call i32 @add_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @init_procfs_ops(...) #1

declare dso_local i32 @add_target(i32*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @notice_signals(...) #1

declare dso_local %struct.TYPE_4__* @SYSPAGE_ENTRY(i32) #1

declare dso_local i32 @add_info(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
