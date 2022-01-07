; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c___perf_remove_from_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c___perf_remove_from_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.perf_event_context* }
%struct.perf_event_context = type { i32, i64, i32 }
%struct.perf_cpu_context = type { %struct.perf_event_context* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @__perf_remove_from_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__perf_remove_from_context(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_context*, align 8
  %5 = alloca %struct.perf_cpu_context*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.perf_event*
  store %struct.perf_event* %7, %struct.perf_event** %3, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  %10 = load %struct.perf_event_context*, %struct.perf_event_context** %9, align 8
  store %struct.perf_event_context* %10, %struct.perf_event_context** %4, align 8
  %11 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %12 = call %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context* %11)
  store %struct.perf_cpu_context* %12, %struct.perf_cpu_context** %5, align 8
  %13 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %14 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %17 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %18 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %19 = call i32 @event_sched_out(%struct.perf_event* %16, %struct.perf_cpu_context* %17, %struct.perf_event_context* %18)
  %20 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %21 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %22 = call i32 @list_del_event(%struct.perf_event* %20, %struct.perf_event_context* %21)
  %23 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %24 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %1
  %28 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %29 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %28, i32 0, i32 0
  %30 = load %struct.perf_event_context*, %struct.perf_event_context** %29, align 8
  %31 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %32 = icmp eq %struct.perf_event_context* %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %35 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %37 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %36, i32 0, i32 0
  store %struct.perf_event_context* null, %struct.perf_event_context** %37, align 8
  br label %38

38:                                               ; preds = %33, %27, %1
  %39 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %40 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  ret i32 0
}

declare dso_local %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @event_sched_out(%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*) #1

declare dso_local i32 @list_del_event(%struct.perf_event*, %struct.perf_event_context*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
