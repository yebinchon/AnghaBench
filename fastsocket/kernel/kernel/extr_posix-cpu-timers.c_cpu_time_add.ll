; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_cpu_time_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_cpu_time_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cpu_time_count = type { i64 }

@CPUCLOCK_SCHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %union.cpu_time_count*, i64)* @cpu_time_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_time_add(i32 %0, %union.cpu_time_count* %1, i64 %2) #0 {
  %4 = alloca %union.cpu_time_count, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.cpu_time_count*, align 8
  %7 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %4, i32 0, i32 0
  store i64 %2, i64* %7, align 8
  store i32 %0, i32* %5, align 4
  store %union.cpu_time_count* %1, %union.cpu_time_count** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @CPUCLOCK_WHICH(i32 %8)
  %10 = load i64, i64* @CPUCLOCK_SCHED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = bitcast %union.cpu_time_count* %4 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = load %union.cpu_time_count*, %union.cpu_time_count** %6, align 8
  %16 = bitcast %union.cpu_time_count* %15 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, %14
  store i64 %18, i64* %16, align 8
  br label %28

19:                                               ; preds = %3
  %20 = load %union.cpu_time_count*, %union.cpu_time_count** %6, align 8
  %21 = bitcast %union.cpu_time_count* %20 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = bitcast %union.cpu_time_count* %4 to i32*
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @cputime_add(i32 %22, i32 %24)
  %26 = load %union.cpu_time_count*, %union.cpu_time_count** %6, align 8
  %27 = bitcast %union.cpu_time_count* %26 to i32*
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %19, %12
  ret void
}

declare dso_local i64 @CPUCLOCK_WHICH(i32) #1

declare dso_local i32 @cputime_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
