; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c_check_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c_check_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }
%struct.lockdep_map = type { i32 }

@debug_locks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.lockdep_map*, i64)* @check_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_unlock(%struct.task_struct* %0, %struct.lockdep_map* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.lockdep_map*, align 8
  %7 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.lockdep_map* %1, %struct.lockdep_map** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* @debug_locks, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

15:                                               ; preds = %3
  %16 = call i32 (...) @irqs_disabled()
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %34

23:                                               ; preds = %15
  %24 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %30 = load %struct.lockdep_map*, %struct.lockdep_map** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @print_unlock_inbalance_bug(%struct.task_struct* %29, %struct.lockdep_map* %30, i64 %31)
  store i32 %32, i32* %4, align 4
  br label %34

33:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %28, %22, %14
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @DEBUG_LOCKS_WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @print_unlock_inbalance_bug(%struct.task_struct*, %struct.lockdep_map*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
