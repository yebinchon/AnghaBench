; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-timers.c_clockid_to_kclock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-timers.c_clockid_to_kclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_clock = type { i32 }

@CLOCKFD_MASK = common dso_local global i64 0, align 8
@CLOCKFD = common dso_local global i64 0, align 8
@clock_posix_dynamic = common dso_local global %struct.k_clock zeroinitializer, align 4
@clock_posix_cpu = common dso_local global %struct.k_clock zeroinitializer, align 4
@MAX_CLOCKS = common dso_local global i64 0, align 8
@posix_clocks = common dso_local global %struct.k_clock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.k_clock* (i64)* @clockid_to_kclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.k_clock* @clockid_to_kclock(i64 %0) #0 {
  %2 = alloca %struct.k_clock*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp ult i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @CLOCKFD_MASK, align 8
  %9 = and i64 %7, %8
  %10 = load i64, i64* @CLOCKFD, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, %struct.k_clock* @clock_posix_dynamic, %struct.k_clock* @clock_posix_cpu
  store %struct.k_clock* %13, %struct.k_clock** %2, align 8
  br label %30

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @MAX_CLOCKS, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = load %struct.k_clock*, %struct.k_clock** @posix_clocks, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.k_clock, %struct.k_clock* %19, i64 %20
  %22 = getelementptr inbounds %struct.k_clock, %struct.k_clock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18, %14
  store %struct.k_clock* null, %struct.k_clock** %2, align 8
  br label %30

26:                                               ; preds = %18
  %27 = load %struct.k_clock*, %struct.k_clock** @posix_clocks, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds %struct.k_clock, %struct.k_clock* %27, i64 %28
  store %struct.k_clock* %29, %struct.k_clock** %2, align 8
  br label %30

30:                                               ; preds = %26, %25, %6
  %31 = load %struct.k_clock*, %struct.k_clock** %2, align 8
  ret %struct.k_clock* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
