; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.perf_event* }
%struct.perf_event = type { i32, i32, i32 }
%struct.ring_buffer = type { i32 }

@POLL_HUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @perf_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.ring_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  store %struct.perf_event* %10, %struct.perf_event** %5, align 8
  %11 = load i32, i32* @POLL_HUP, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = call i32 (...) @rcu_read_lock()
  %16 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ring_buffer* @rcu_dereference(i32 %18)
  store %struct.ring_buffer* %19, %struct.ring_buffer** %6, align 8
  %20 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %21 = icmp ne %struct.ring_buffer* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %24 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %25 = call i32 @ring_buffer_attach(%struct.perf_event* %23, %struct.ring_buffer* %24)
  %26 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %27 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %26, i32 0, i32 0
  %28 = call i32 @atomic_xchg(i32* %27, i32 0)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %22, %2
  %30 = call i32 (...) @rcu_read_unlock()
  %31 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 1
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.file*, %struct.file** %3, align 8
  %35 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %36 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %35, i32 0, i32 0
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @poll_wait(%struct.file* %34, i32* %36, i32* %37)
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ring_buffer* @rcu_dereference(i32) #1

declare dso_local i32 @ring_buffer_attach(%struct.perf_event*, %struct.ring_buffer*) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
