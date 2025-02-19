; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_cpu_time_before.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_cpu_time_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cpu_time_count = type { i64 }

@CPUCLOCK_SCHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @cpu_time_before to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_time_before(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.cpu_time_count, align 8
  %6 = alloca %union.cpu_time_count, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %5, i32 0, i32 0
  store i64 %1, i64* %8, align 8
  %9 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %6, i32 0, i32 0
  store i64 %2, i64* %9, align 8
  store i32 %0, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @CPUCLOCK_WHICH(i32 %10)
  %12 = load i64, i64* @CPUCLOCK_SCHED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = bitcast %union.cpu_time_count* %5 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = bitcast %union.cpu_time_count* %6 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %16, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  br label %27

21:                                               ; preds = %3
  %22 = bitcast %union.cpu_time_count* %5 to i32*
  %23 = load i32, i32* %22, align 8
  %24 = bitcast %union.cpu_time_count* %6 to i32*
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @cputime_lt(i32 %23, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %21, %14
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i64 @CPUCLOCK_WHICH(i32) #1

declare dso_local i32 @cputime_lt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
