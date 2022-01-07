; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c___perf_event_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c___perf_event_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, %struct.TYPE_2__, %struct.perf_event*, %struct.perf_event_context* }
%struct.TYPE_2__ = type { i64 }
%struct.perf_event_context = type { i32, i32 }
%struct.perf_cpu_context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_INACTIVE = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_ACTIVE = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @__perf_event_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__perf_event_enable(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.perf_event_context*, align 8
  %6 = alloca %struct.perf_event*, align 8
  %7 = alloca %struct.perf_cpu_context*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.perf_event*
  store %struct.perf_event* %10, %struct.perf_event** %4, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 3
  %13 = load %struct.perf_event_context*, %struct.perf_event_context** %12, align 8
  store %struct.perf_event_context* %13, %struct.perf_event_context** %5, align 8
  %14 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 2
  %16 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  store %struct.perf_event* %16, %struct.perf_event** %6, align 8
  %17 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %18 = call %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context* %17)
  store %struct.perf_cpu_context* %18, %struct.perf_cpu_context** %7, align 8
  %19 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %20 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON_ONCE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %123

30:                                               ; preds = %1
  %31 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %32 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %31, i32 0, i32 0
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %35 = call i32 @update_context_time(%struct.perf_event_context* %34)
  %36 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %37 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PERF_EVENT_STATE_INACTIVE, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %119

42:                                               ; preds = %30
  %43 = load i32, i32* @current, align 4
  %44 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %45 = call i32 @perf_cgroup_set_timestamp(i32 %43, %struct.perf_event_context* %44)
  %46 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %47 = call i32 @__perf_event_mark_enabled(%struct.perf_event* %46)
  %48 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %49 = call i32 @event_filter_match(%struct.perf_event* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %42
  %52 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %53 = call i64 @is_cgroup_event(%struct.perf_event* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %57 = call i32 @perf_cgroup_defer_enabled(%struct.perf_event* %56)
  br label %58

58:                                               ; preds = %55, %51
  br label %119

59:                                               ; preds = %42
  %60 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %61 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %62 = icmp ne %struct.perf_event* %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %65 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PERF_EVENT_STATE_ACTIVE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %119

70:                                               ; preds = %63, %59
  %71 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %72 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %7, align 8
  %73 = call i32 @group_can_go_on(%struct.perf_event* %71, %struct.perf_cpu_context* %72, i32 1)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @EEXIST, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %93

78:                                               ; preds = %70
  %79 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %80 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %81 = icmp eq %struct.perf_event* %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %84 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %7, align 8
  %85 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %86 = call i32 @group_sched_in(%struct.perf_event* %83, %struct.perf_cpu_context* %84, %struct.perf_event_context* %85)
  store i32 %86, i32* %8, align 4
  br label %92

87:                                               ; preds = %78
  %88 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %89 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %7, align 8
  %90 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %91 = call i32 @event_sched_in(%struct.perf_event* %88, %struct.perf_cpu_context* %89, %struct.perf_event_context* %90)
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %87, %82
  br label %93

93:                                               ; preds = %92, %75
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %93
  %97 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %98 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %99 = icmp ne %struct.perf_event* %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %102 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %7, align 8
  %103 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %104 = call i32 @group_sched_out(%struct.perf_event* %101, %struct.perf_cpu_context* %102, %struct.perf_event_context* %103)
  br label %105

105:                                              ; preds = %100, %96
  %106 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %107 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %113 = call i32 @update_group_times(%struct.perf_event* %112)
  %114 = load i64, i64* @PERF_EVENT_STATE_ERROR, align 8
  %115 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %116 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %111, %105
  br label %118

118:                                              ; preds = %117, %93
  br label %119

119:                                              ; preds = %118, %69, %58, %41
  %120 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %121 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %120, i32 0, i32 0
  %122 = call i32 @spin_unlock(i32* %121)
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %119, %27
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @update_context_time(%struct.perf_event_context*) #1

declare dso_local i32 @perf_cgroup_set_timestamp(i32, %struct.perf_event_context*) #1

declare dso_local i32 @__perf_event_mark_enabled(%struct.perf_event*) #1

declare dso_local i32 @event_filter_match(%struct.perf_event*) #1

declare dso_local i64 @is_cgroup_event(%struct.perf_event*) #1

declare dso_local i32 @perf_cgroup_defer_enabled(%struct.perf_event*) #1

declare dso_local i32 @group_can_go_on(%struct.perf_event*, %struct.perf_cpu_context*, i32) #1

declare dso_local i32 @group_sched_in(%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*) #1

declare dso_local i32 @event_sched_in(%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*) #1

declare dso_local i32 @group_sched_out(%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*) #1

declare dso_local i32 @update_group_times(%struct.perf_event*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
