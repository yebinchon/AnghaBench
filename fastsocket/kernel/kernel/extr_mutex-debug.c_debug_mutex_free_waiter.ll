; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_mutex-debug.c_debug_mutex_free_waiter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_mutex-debug.c_debug_mutex_free_waiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mutex_waiter = type { i32 }

@MUTEX_DEBUG_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_mutex_free_waiter(%struct.mutex_waiter* %0) #0 {
  %2 = alloca %struct.mutex_waiter*, align 8
  store %struct.mutex_waiter* %0, %struct.mutex_waiter** %2, align 8
  %3 = load %struct.mutex_waiter*, %struct.mutex_waiter** %2, align 8
  %4 = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %3, i32 0, i32 0
  %5 = call i32 @list_empty(i32* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @DEBUG_LOCKS_WARN_ON(i32 %8)
  %10 = load %struct.mutex_waiter*, %struct.mutex_waiter** %2, align 8
  %11 = load i32, i32* @MUTEX_DEBUG_FREE, align 4
  %12 = call i32 @memset(%struct.mutex_waiter* %10, i32 %11, i32 4)
  ret void
}

declare dso_local i32 @DEBUG_LOCKS_WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @memset(%struct.mutex_waiter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
