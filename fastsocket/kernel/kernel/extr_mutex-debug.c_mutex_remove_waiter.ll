; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_mutex-debug.c_mutex_remove_waiter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_mutex-debug.c_mutex_remove_waiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mutex = type { i32 }
%struct.mutex_waiter = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.mutex_waiter* }
%struct.thread_info = type { %struct.TYPE_2__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mutex_remove_waiter(%struct.mutex* %0, %struct.mutex_waiter* %1, %struct.thread_info* %2) #0 {
  %4 = alloca %struct.mutex*, align 8
  %5 = alloca %struct.mutex_waiter*, align 8
  %6 = alloca %struct.thread_info*, align 8
  store %struct.mutex* %0, %struct.mutex** %4, align 8
  store %struct.mutex_waiter* %1, %struct.mutex_waiter** %5, align 8
  store %struct.thread_info* %2, %struct.thread_info** %6, align 8
  %7 = load %struct.mutex_waiter*, %struct.mutex_waiter** %5, align 8
  %8 = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %7, i32 0, i32 1
  %9 = call i32 @list_empty(i32* %8)
  %10 = call i32 @DEBUG_LOCKS_WARN_ON(i32 %9)
  %11 = load %struct.mutex_waiter*, %struct.mutex_waiter** %5, align 8
  %12 = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %15 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @DEBUG_LOCKS_WARN_ON(i32 %18)
  %20 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %21 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.mutex_waiter*, %struct.mutex_waiter** %23, align 8
  %25 = load %struct.mutex_waiter*, %struct.mutex_waiter** %5, align 8
  %26 = icmp ne %struct.mutex_waiter* %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @DEBUG_LOCKS_WARN_ON(i32 %27)
  %29 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %30 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.mutex_waiter* null, %struct.mutex_waiter** %32, align 8
  %33 = load %struct.mutex_waiter*, %struct.mutex_waiter** %5, align 8
  %34 = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %33, i32 0, i32 1
  %35 = call i32 @list_del_init(i32* %34)
  %36 = load %struct.mutex_waiter*, %struct.mutex_waiter** %5, align 8
  %37 = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %36, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %37, align 8
  ret void
}

declare dso_local i32 @DEBUG_LOCKS_WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
