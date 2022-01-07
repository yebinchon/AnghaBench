; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_session__process_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_session__process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%union.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.perf_tool = type { i64 }
%struct.perf_sample = type { i32 }

@PERF_RECORD_HEADER_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PERF_RECORD_USER_TYPE_START = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_session*, %union.perf_event*, %struct.perf_tool*, i32)* @perf_session__process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_session__process_event(%struct.perf_session* %0, %union.perf_event* %1, %struct.perf_tool* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_session*, align 8
  %7 = alloca %union.perf_event*, align 8
  %8 = alloca %struct.perf_tool*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.perf_sample, align 4
  %11 = alloca i32, align 4
  store %struct.perf_session* %0, %struct.perf_session** %6, align 8
  store %union.perf_event* %1, %union.perf_event** %7, align 8
  store %struct.perf_tool* %2, %struct.perf_tool** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %13 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load %union.perf_event*, %union.perf_event** %7, align 8
  %19 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %20 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @perf_evlist__sample_id_all(i32 %21)
  %23 = call i32 @event_swap(%union.perf_event* %18, i32 %22)
  br label %24

24:                                               ; preds = %17, %4
  %25 = load %union.perf_event*, %union.perf_event** %7, align 8
  %26 = bitcast %union.perf_event* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PERF_RECORD_HEADER_MAX, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %93

34:                                               ; preds = %24
  %35 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %36 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %35, i32 0, i32 1
  %37 = load %union.perf_event*, %union.perf_event** %7, align 8
  %38 = bitcast %union.perf_event* %37 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @hists__inc_nr_events(i32* %36, i64 %40)
  %42 = load %union.perf_event*, %union.perf_event** %7, align 8
  %43 = bitcast %union.perf_event* %42 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PERF_RECORD_USER_TYPE_START, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %34
  %49 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %50 = load %union.perf_event*, %union.perf_event** %7, align 8
  %51 = load %struct.perf_tool*, %struct.perf_tool** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @perf_session__process_user_event(%struct.perf_session* %49, %union.perf_event* %50, %struct.perf_tool* %51, i32 %52)
  store i32 %53, i32* %5, align 4
  br label %93

54:                                               ; preds = %34
  %55 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %56 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %union.perf_event*, %union.perf_event** %7, align 8
  %59 = call i32 @perf_evlist__parse_sample(i32 %57, %union.perf_event* %58, %struct.perf_sample* %10)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %5, align 4
  br label %93

64:                                               ; preds = %54
  %65 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %66 = load %union.perf_event*, %union.perf_event** %7, align 8
  %67 = call i64 @perf_session__preprocess_sample(%struct.perf_session* %65, %union.perf_event* %66, %struct.perf_sample* %10)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %93

70:                                               ; preds = %64
  %71 = load %struct.perf_tool*, %struct.perf_tool** %8, align 8
  %72 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %77 = load %union.perf_event*, %union.perf_event** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @perf_session_queue_event(%struct.perf_session* %76, %union.perf_event* %77, %struct.perf_sample* %10, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @ETIME, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %5, align 4
  br label %93

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %70
  %88 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %89 = load %union.perf_event*, %union.perf_event** %7, align 8
  %90 = load %struct.perf_tool*, %struct.perf_tool** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @perf_session_deliver_event(%struct.perf_session* %88, %union.perf_event* %89, %struct.perf_sample* %10, %struct.perf_tool* %90, i32 %91)
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %87, %84, %69, %62, %48, %31
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @event_swap(%union.perf_event*, i32) #1

declare dso_local i32 @perf_evlist__sample_id_all(i32) #1

declare dso_local i32 @hists__inc_nr_events(i32*, i64) #1

declare dso_local i32 @perf_session__process_user_event(%struct.perf_session*, %union.perf_event*, %struct.perf_tool*, i32) #1

declare dso_local i32 @perf_evlist__parse_sample(i32, %union.perf_event*, %struct.perf_sample*) #1

declare dso_local i64 @perf_session__preprocess_sample(%struct.perf_session*, %union.perf_event*, %struct.perf_sample*) #1

declare dso_local i32 @perf_session_queue_event(%struct.perf_session*, %union.perf_event*, %struct.perf_sample*, i32) #1

declare dso_local i32 @perf_session_deliver_event(%struct.perf_session*, %union.perf_event*, %struct.perf_sample*, %struct.perf_tool*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
