; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_event_sched_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_event_sched_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, i8*, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i32 (%struct.perf_event*, i32)* }
%struct.perf_cpu_context = type { i64, i32 }
%struct.perf_event_context = type { i32, i32 }

@PERF_EVENT_STATE_INACTIVE = common dso_local global i64 0, align 8
@PERF_EVENT_STATE_ACTIVE = common dso_local global i64 0, align 8
@PERF_EVENT_STATE_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*)* @event_sched_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_sched_out(%struct.perf_event* %0, %struct.perf_cpu_context* %1, %struct.perf_event_context* %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.perf_cpu_context*, align 8
  %6 = alloca %struct.perf_event_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.perf_cpu_context* %1, %struct.perf_cpu_context** %5, align 8
  store %struct.perf_event_context* %2, %struct.perf_event_context** %6, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %10 = call i8* @perf_event_time(%struct.perf_event* %9)
  store i8* %10, i8** %7, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PERF_EVENT_STATE_INACTIVE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %3
  %17 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %18 = call i32 @event_filter_match(%struct.perf_event* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %23 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %21 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %31 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr i8, i8* %29, i64 %33
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %31, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %38 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %20, %16, %3
  %40 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %41 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PERF_EVENT_STATE_ACTIVE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %116

46:                                               ; preds = %39
  %47 = load i64, i64* @PERF_EVENT_STATE_INACTIVE, align 8
  %48 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %49 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %51 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %56 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %55, i32 0, i32 5
  store i64 0, i64* %56, align 8
  %57 = load i64, i64* @PERF_EVENT_STATE_OFF, align 8
  %58 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %59 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %46
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %63 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %65 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %64, i32 0, i32 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32 (%struct.perf_event*, i32)*, i32 (%struct.perf_event*, i32)** %67, align 8
  %69 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %70 = call i32 %68(%struct.perf_event* %69, i32 0)
  %71 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %72 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %71, i32 0, i32 2
  store i32 -1, i32* %72, align 8
  %73 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %74 = call i32 @is_software_event(%struct.perf_event* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %60
  %77 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %78 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %76, %60
  %82 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %83 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %83, align 4
  %86 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %87 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %81
  %92 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %93 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %99 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %97, %91, %81
  %103 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %104 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %102
  %109 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %110 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %108, %102
  %114 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %115 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %114, i32 0, i32 0
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %45, %113, %108
  ret void
}

declare dso_local i8* @perf_event_time(%struct.perf_event*) #1

declare dso_local i32 @event_filter_match(%struct.perf_event*) #1

declare dso_local i32 @is_software_event(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
