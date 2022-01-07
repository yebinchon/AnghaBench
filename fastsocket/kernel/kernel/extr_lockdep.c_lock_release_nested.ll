; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c_lock_release_nested.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c_lock_release_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i64, %struct.held_lock* }
%struct.held_lock = type { i64, i64, i64, i64, i64, %struct.lockdep_map* }
%struct.lockdep_map = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.lockdep_map*, i64)* @lock_release_nested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_release_nested(%struct.task_struct* %0, %struct.lockdep_map* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.lockdep_map*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.held_lock*, align 8
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.lockdep_map* %1, %struct.lockdep_map** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %9, align 4
  %14 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 2
  %16 = load %struct.held_lock*, %struct.held_lock** %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %16, i64 %18
  store %struct.held_lock* %19, %struct.held_lock** %8, align 8
  %20 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %21 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %20, i32 0, i32 5
  %22 = load %struct.lockdep_map*, %struct.lockdep_map** %21, align 8
  %23 = load %struct.lockdep_map*, %struct.lockdep_map** %6, align 8
  %24 = icmp ne %struct.lockdep_map* %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %3
  %26 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %27 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25, %3
  %31 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %32 = load %struct.lockdep_map*, %struct.lockdep_map** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @lock_release_non_nested(%struct.task_struct* %31, %struct.lockdep_map* %32, i64 %33)
  store i32 %34, i32* %4, align 4
  br label %61

35:                                               ; preds = %25
  %36 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %44 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %42, %35
  %48 = phi i1 [ false, %35 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  %50 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %61

53:                                               ; preds = %47
  %54 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %55 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %58 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.held_lock*, %struct.held_lock** %8, align 8
  %60 = call i32 @lock_release_holdtime(%struct.held_lock* %59)
  store i32 1, i32* %4, align 4
  br label %61

61:                                               ; preds = %53, %52, %30
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @lock_release_non_nested(%struct.task_struct*, %struct.lockdep_map*, i64) #1

declare dso_local i64 @DEBUG_LOCKS_WARN_ON(i32) #1

declare dso_local i32 @lock_release_holdtime(%struct.held_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
