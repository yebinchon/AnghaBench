; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c___lock_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c___lock_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.lockdep_map = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lockdep_map*, i32, i64)* @__lock_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lock_release(%struct.lockdep_map* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.lockdep_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.task_struct*, align 8
  store %struct.lockdep_map* %0, %struct.lockdep_map** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %8, %struct.task_struct** %7, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %10 = load %struct.lockdep_map*, %struct.lockdep_map** %4, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @check_unlock(%struct.task_struct* %9, %struct.lockdep_map* %10, i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %37

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %20 = load %struct.lockdep_map*, %struct.lockdep_map** %4, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @lock_release_nested(%struct.task_struct* %19, %struct.lockdep_map* %20, i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %37

25:                                               ; preds = %18
  br label %34

26:                                               ; preds = %15
  %27 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %28 = load %struct.lockdep_map*, %struct.lockdep_map** %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @lock_release_non_nested(%struct.task_struct* %27, %struct.lockdep_map* %28, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %37

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %25
  %35 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %36 = call i32 @check_chain_key(%struct.task_struct* %35)
  br label %37

37:                                               ; preds = %34, %32, %24, %14
  ret void
}

declare dso_local i32 @check_unlock(%struct.task_struct*, %struct.lockdep_map*, i64) #1

declare dso_local i32 @lock_release_nested(%struct.task_struct*, %struct.lockdep_map*, i64) #1

declare dso_local i32 @lock_release_non_nested(%struct.task_struct*, %struct.lockdep_map*, i64) #1

declare dso_local i32 @check_chain_key(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
