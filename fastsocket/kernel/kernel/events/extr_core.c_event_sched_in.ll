; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_event_sched_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_event_sched_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, i32, %struct.TYPE_6__, i64, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i64 (%struct.perf_event*, i32)* }
%struct.TYPE_4__ = type { i64 }
%struct.perf_cpu_context = type { i32, i32 }
%struct.perf_event_context = type { i32, i32 }

@PERF_EVENT_STATE_OFF = common dso_local global i64 0, align 8
@PERF_EVENT_STATE_ACTIVE = common dso_local global i64 0, align 8
@MAX_INTERRUPTS = common dso_local global i64 0, align 8
@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_INACTIVE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*)* @event_sched_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_sched_in(%struct.perf_event* %0, %struct.perf_cpu_context* %1, %struct.perf_event_context* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.perf_cpu_context*, align 8
  %7 = alloca %struct.perf_event_context*, align 8
  %8 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store %struct.perf_cpu_context* %1, %struct.perf_cpu_context** %6, align 8
  store %struct.perf_event_context* %2, %struct.perf_event_context** %7, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %10 = call i64 @perf_event_time(%struct.perf_event* %9)
  store i64 %10, i64* %8, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PERF_EVENT_STATE_OFF, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %113

17:                                               ; preds = %3
  %18 = load i64, i64* @PERF_EVENT_STATE_ACTIVE, align 8
  %19 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %20 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = call i32 (...) @smp_processor_id()
  %22 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %23 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %25 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MAX_INTERRUPTS, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %17
  %34 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %35 = call i32 @perf_log_throttle(%struct.perf_event* %34, i32 1)
  %36 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %37 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %33, %17
  %40 = call i32 (...) @smp_wmb()
  %41 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %42 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %41, i32 0, i32 5
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64 (%struct.perf_event*, i32)*, i64 (%struct.perf_event*, i32)** %44, align 8
  %46 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %47 = load i32, i32* @PERF_EF_START, align 4
  %48 = call i64 %45(%struct.perf_event* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %39
  %51 = load i64, i64* @PERF_EVENT_STATE_INACTIVE, align 8
  %52 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %53 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %55 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %54, i32 0, i32 1
  store i32 -1, i32* %55, align 8
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %113

58:                                               ; preds = %39
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %61 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  %64 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %65 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %63
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 8
  %70 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %71 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @perf_set_shadow_time(%struct.perf_event* %70, %struct.perf_event_context* %71, i64 %72)
  %74 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %75 = call i32 @is_software_event(%struct.perf_event* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %58
  %78 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %79 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %77, %58
  %83 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %84 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %88 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %82
  %93 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %94 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %100 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %98, %92, %82
  %104 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %105 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %111 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %110, i32 0, i32 0
  store i32 1, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %103
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %50, %16
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i64 @perf_event_time(%struct.perf_event*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @perf_log_throttle(%struct.perf_event*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @perf_set_shadow_time(%struct.perf_event*, %struct.perf_event_context*, i64) #1

declare dso_local i32 @is_software_event(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
