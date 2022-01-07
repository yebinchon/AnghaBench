; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evlist.c_perf_evlist__add_default.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evlist.c_perf_evlist__add_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evlist = type { i32 }
%struct.perf_event_attr = type { i32, i32 }
%struct.perf_evsel = type { i32 }

@PERF_COUNT_HW_CPU_CYCLES = common dso_local global i32 0, align 4
@PERF_TYPE_HARDWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"cycles\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evlist__add_default(%struct.perf_evlist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_evlist*, align 8
  %4 = alloca %struct.perf_event_attr, align 4
  %5 = alloca %struct.perf_evsel*, align 8
  store %struct.perf_evlist* %0, %struct.perf_evlist** %3, align 8
  %6 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 0
  %7 = load i32, i32* @PERF_COUNT_HW_CPU_CYCLES, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 1
  %9 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 @event_attr_init(%struct.perf_event_attr* %4)
  %11 = call %struct.perf_evsel* @perf_evsel__new(%struct.perf_event_attr* %4, i32 0)
  store %struct.perf_evsel* %11, %struct.perf_evsel** %5, align 8
  %12 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %13 = icmp eq %struct.perf_evsel* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %31

15:                                               ; preds = %1
  %16 = call i32 @strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %18 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %20 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %28

24:                                               ; preds = %15
  %25 = load %struct.perf_evlist*, %struct.perf_evlist** %3, align 8
  %26 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %27 = call i32 @perf_evlist__add(%struct.perf_evlist* %25, %struct.perf_evsel* %26)
  store i32 0, i32* %2, align 4
  br label %34

28:                                               ; preds = %23
  %29 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %30 = call i32 @perf_evsel__delete(%struct.perf_evsel* %29)
  br label %31

31:                                               ; preds = %28, %14
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %24
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @event_attr_init(%struct.perf_event_attr*) #1

declare dso_local %struct.perf_evsel* @perf_evsel__new(%struct.perf_event_attr*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @perf_evlist__add(%struct.perf_evlist*, %struct.perf_evsel*) #1

declare dso_local i32 @perf_evsel__delete(%struct.perf_evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
