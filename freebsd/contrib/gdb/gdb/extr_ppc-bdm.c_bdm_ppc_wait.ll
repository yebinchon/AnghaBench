; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppc-bdm.c_bdm_ppc_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppc-bdm.c_bdm_ppc_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_waitstatus = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@TARGET_WAITKIND_STOPPED = common dso_local global i32 0, align 4
@TARGET_SIGNAL_INT = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@TARGET_SIGNAL_TRAP = common dso_local global i32 0, align 4
@gdb_stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.target_waitstatus*)* @bdm_ppc_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdm_ppc_wait(i32 %0, %struct.target_waitstatus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.target_waitstatus*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.target_waitstatus* %1, %struct.target_waitstatus** %5, align 8
  %7 = load i32, i32* @TARGET_WAITKIND_STOPPED, align 4
  %8 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %9 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = call i32 (...) @ocd_wait()
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @TARGET_SIGNAL_INT, align 4
  %15 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %16 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @inferior_ptid, align 4
  store i32 %18, i32* %3, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @TARGET_SIGNAL_TRAP, align 4
  %21 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %22 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @inferior_ptid, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %19, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @ocd_wait(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
