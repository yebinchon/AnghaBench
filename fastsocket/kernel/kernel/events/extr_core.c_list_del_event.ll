; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_list_del_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_list_del_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i64, i32, %struct.perf_event*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.perf_event_context = type { i32, i32, i32 }
%struct.perf_cpu_context = type { i32* }

@PERF_ATTACH_CONTEXT = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_event_context*)* @list_del_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_del_event(%struct.perf_event* %0, %struct.perf_event_context* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_context*, align 8
  %5 = alloca %struct.perf_cpu_context*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store %struct.perf_event_context* %1, %struct.perf_event_context** %4, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PERF_ATTACH_CONTEXT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %78

13:                                               ; preds = %2
  %14 = load i32, i32* @PERF_ATTACH_CONTEXT, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %21 = call i64 @is_cgroup_event(%struct.perf_event* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %13
  %24 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %25 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %29 = call %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context* %28)
  store %struct.perf_cpu_context* %29, %struct.perf_cpu_context** %5, align 8
  %30 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %31 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %23
  %35 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %36 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %34, %23
  br label %38

38:                                               ; preds = %37, %13
  %39 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %40 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %50 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %48, %38
  %54 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %55 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %54, i32 0, i32 4
  %56 = call i32 @list_del_rcu(i32* %55)
  %57 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %58 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %57, i32 0, i32 3
  %59 = load %struct.perf_event*, %struct.perf_event** %58, align 8
  %60 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %61 = icmp eq %struct.perf_event* %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %64 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %63, i32 0, i32 2
  %65 = call i32 @list_del_init(i32* %64)
  br label %66

66:                                               ; preds = %62, %53
  %67 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %68 = call i32 @update_group_times(%struct.perf_event* %67)
  %69 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %70 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PERF_EVENT_STATE_OFF, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load i64, i64* @PERF_EVENT_STATE_OFF, align 8
  %76 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %77 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %12, %74, %66
  ret void
}

declare dso_local i64 @is_cgroup_event(%struct.perf_event*) #1

declare dso_local %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @update_group_times(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
