; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_mutex-debug.c_debug_mutex_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_mutex-debug.c_debug_mutex_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mutex = type { i64, %struct.TYPE_2__, %struct.mutex* }
%struct.TYPE_2__ = type { i32, i32 }

@debug_locks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_mutex_unlock(%struct.mutex* %0) #0 {
  %2 = alloca %struct.mutex*, align 8
  store %struct.mutex* %0, %struct.mutex** %2, align 8
  %3 = load i32, i32* @debug_locks, align 4
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i64 @unlikely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %43

10:                                               ; preds = %1
  %11 = load %struct.mutex*, %struct.mutex** %2, align 8
  %12 = getelementptr inbounds %struct.mutex, %struct.mutex* %11, i32 0, i32 2
  %13 = load %struct.mutex*, %struct.mutex** %12, align 8
  %14 = load %struct.mutex*, %struct.mutex** %2, align 8
  %15 = icmp ne %struct.mutex* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @DEBUG_LOCKS_WARN_ON(i32 %16)
  %18 = load %struct.mutex*, %struct.mutex** %2, align 8
  %19 = getelementptr inbounds %struct.mutex, %struct.mutex* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 (...) @current_thread_info()
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @DEBUG_LOCKS_WARN_ON(i32 %23)
  %25 = load %struct.mutex*, %struct.mutex** %2, align 8
  %26 = getelementptr inbounds %struct.mutex, %struct.mutex* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %10
  %31 = load %struct.mutex*, %struct.mutex** %2, align 8
  %32 = getelementptr inbounds %struct.mutex, %struct.mutex* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %30, %10
  %38 = phi i1 [ false, %10 ], [ %36, %30 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @DEBUG_LOCKS_WARN_ON(i32 %39)
  %41 = load %struct.mutex*, %struct.mutex** %2, align 8
  %42 = call i32 @mutex_clear_owner(%struct.mutex* %41)
  br label %43

43:                                               ; preds = %37, %9
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DEBUG_LOCKS_WARN_ON(i32) #1

declare dso_local i64 @current_thread_info(...) #1

declare dso_local i32 @mutex_clear_owner(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
