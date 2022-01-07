; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_mutex-debug.c_debug_mutex_add_waiter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_mutex-debug.c_debug_mutex_add_waiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mutex = type { i32 }
%struct.mutex_waiter = type { i32 }
%struct.thread_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mutex_waiter* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_mutex_add_waiter(%struct.mutex* %0, %struct.mutex_waiter* %1, %struct.thread_info* %2) #0 {
  %4 = alloca %struct.mutex*, align 8
  %5 = alloca %struct.mutex_waiter*, align 8
  %6 = alloca %struct.thread_info*, align 8
  store %struct.mutex* %0, %struct.mutex** %4, align 8
  store %struct.mutex_waiter* %1, %struct.mutex_waiter** %5, align 8
  store %struct.thread_info* %2, %struct.thread_info** %6, align 8
  %7 = load %struct.mutex*, %struct.mutex** %4, align 8
  %8 = getelementptr inbounds %struct.mutex, %struct.mutex* %7, i32 0, i32 0
  %9 = call i32 @spin_is_locked(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @SMP_DEBUG_LOCKS_WARN_ON(i32 %12)
  %14 = load %struct.mutex_waiter*, %struct.mutex_waiter** %5, align 8
  %15 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %16 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.mutex_waiter* %14, %struct.mutex_waiter** %18, align 8
  ret void
}

declare dso_local i32 @SMP_DEBUG_LOCKS_WARN_ON(i32) #1

declare dso_local i32 @spin_is_locked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
