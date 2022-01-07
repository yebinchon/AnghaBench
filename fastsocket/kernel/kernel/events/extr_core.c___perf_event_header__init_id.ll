; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c___perf_event_header__init_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c___perf_event_header__init_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_header = type { i32 }
%struct.perf_sample_data = type { i32, %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.perf_event = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PERF_SAMPLE_TID = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@PERF_SAMPLE_TIME = common dso_local global i32 0, align 4
@PERF_SAMPLE_ID = common dso_local global i32 0, align 4
@PERF_SAMPLE_STREAM_ID = common dso_local global i32 0, align 4
@PERF_SAMPLE_CPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event_header*, %struct.perf_sample_data*, %struct.perf_event*)* @__perf_event_header__init_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__perf_event_header__init_id(%struct.perf_event_header* %0, %struct.perf_sample_data* %1, %struct.perf_event* %2) #0 {
  %4 = alloca %struct.perf_event_header*, align 8
  %5 = alloca %struct.perf_sample_data*, align 8
  %6 = alloca %struct.perf_event*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event_header* %0, %struct.perf_event_header** %4, align 8
  store %struct.perf_sample_data* %1, %struct.perf_sample_data** %5, align 8
  store %struct.perf_event* %2, %struct.perf_event** %6, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %14 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.perf_event_header*, %struct.perf_event_header** %4, align 8
  %19 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %17
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @PERF_SAMPLE_TID, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %3
  %29 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %30 = load i32, i32* @current, align 4
  %31 = call i32 @perf_event_pid(%struct.perf_event* %29, i32 %30)
  %32 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %33 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %36 = load i32, i32* @current, align 4
  %37 = call i32 @perf_event_tid(%struct.perf_event* %35, i32 %36)
  %38 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %39 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %28, %3
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @PERF_SAMPLE_TIME, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = call i32 (...) @perf_clock()
  %48 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %49 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @PERF_SAMPLE_ID, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %57 = call i32 @primary_event_id(%struct.perf_event* %56)
  %58 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %59 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @PERF_SAMPLE_STREAM_ID, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %67 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %70 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %65, %60
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @PERF_SAMPLE_CPU, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = call i32 (...) @raw_smp_processor_id()
  %78 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %79 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 8
  %81 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %82 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %76, %71
  ret void
}

declare dso_local i32 @perf_event_pid(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_tid(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_clock(...) #1

declare dso_local i32 @primary_event_id(%struct.perf_event*) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
