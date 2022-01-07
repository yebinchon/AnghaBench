; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c___cmd_top.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c___cmd_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_top = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__*, i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.sched_param = type { i64 }

@O_WRONLY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@perf_event__process = common dso_local global i32 0, align 4
@use_browser = common dso_local global i64 0, align 8
@display_thread_tui = common dso_local global i32 0, align 4
@display_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Could not create display thread.\0A\00", align 1
@SCHED_FIFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not set realtime priority.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_top*)* @__cmd_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cmd_top(%struct.perf_top* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_top*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sched_param, align 8
  %7 = alloca i64, align 8
  store %struct.perf_top* %0, %struct.perf_top** %3, align 8
  %8 = load i32, i32* @O_WRONLY, align 4
  %9 = call %struct.TYPE_6__* @perf_session__new(i32* null, i32 %8, i32 0, i32 0, i32* null)
  %10 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %11 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %10, i32 0, i32 1
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %11, align 8
  %12 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %13 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp eq %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %143

19:                                               ; preds = %1
  %20 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %21 = call i32 @perf_top__setup_sample_type(%struct.perf_top* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %136

25:                                               ; preds = %19
  %26 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %27 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %26, i32 0, i32 5
  %28 = call i64 @perf_target__has_task(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %32 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %31, i32 0, i32 4
  %33 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %34 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @perf_event__process, align 4
  %39 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %40 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = call i32 @perf_event__synthesize_thread_map(i32* %32, i32 %37, i32 %38, i32* %42)
  br label %53

44:                                               ; preds = %25
  %45 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %46 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %45, i32 0, i32 4
  %47 = load i32, i32* @perf_event__process, align 4
  %48 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %49 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = call i32 @perf_event__synthesize_threads(i32* %46, i32 %47, i32* %51)
  br label %53

53:                                               ; preds = %44, %30
  %54 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %55 = call i32 @perf_top__start_counters(%struct.perf_top* %54)
  %56 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %57 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %60 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %62, align 8
  %63 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %64 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = call i32 @perf_session__set_id_hdr_size(%struct.TYPE_6__* %65)
  %67 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %68 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %73 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %72, i32 0, i32 2
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @poll(i32 %71, i32 %76, i32 100)
  %78 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %79 = call i32 @perf_top__mmap_read(%struct.perf_top* %78)
  %80 = load i64, i64* @use_browser, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %53
  %83 = load i32, i32* @display_thread_tui, align 4
  br label %86

84:                                               ; preds = %53
  %85 = load i32, i32* @display_thread, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %89 = call i64 @pthread_create(i32* %4, i32* null, i32 %87, %struct.perf_top* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = call i32 @ui__error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %93 = call i32 @exit(i32 -1) #3
  unreachable

94:                                               ; preds = %86
  %95 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %96 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %94
  %100 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %101 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %6, i32 0, i32 0
  store i64 %102, i64* %103, align 8
  %104 = load i32, i32* @SCHED_FIFO, align 4
  %105 = call i64 @sched_setscheduler(i32 0, i32 %104, %struct.sched_param* %6)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = call i32 @ui__error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %109 = call i32 @exit(i32 -1) #3
  unreachable

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110, %94
  br label %112

112:                                              ; preds = %111, %135
  %113 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %114 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %7, align 8
  %116 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %117 = call i32 @perf_top__mmap_read(%struct.perf_top* %116)
  %118 = load i64, i64* %7, align 8
  %119 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %120 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %118, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %112
  %124 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %125 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %124, i32 0, i32 2
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %130 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %129, i32 0, i32 2
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @poll(i32 %128, i32 %133, i32 100)
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %123, %112
  br label %112

136:                                              ; preds = %24
  %137 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %138 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %137, i32 0, i32 1
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = call i32 @perf_session__delete(%struct.TYPE_6__* %139)
  %141 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %142 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %141, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %142, align 8
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %136, %16
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.TYPE_6__* @perf_session__new(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @perf_top__setup_sample_type(%struct.perf_top*) #1

declare dso_local i64 @perf_target__has_task(i32*) #1

declare dso_local i32 @perf_event__synthesize_thread_map(i32*, i32, i32, i32*) #1

declare dso_local i32 @perf_event__synthesize_threads(i32*, i32, i32*) #1

declare dso_local i32 @perf_top__start_counters(%struct.perf_top*) #1

declare dso_local i32 @perf_session__set_id_hdr_size(%struct.TYPE_6__*) #1

declare dso_local i32 @poll(i32, i32, i32) #1

declare dso_local i32 @perf_top__mmap_read(%struct.perf_top*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.perf_top*) #1

declare dso_local i32 @ui__error(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @sched_setscheduler(i32, i32, %struct.sched_param*) #1

declare dso_local i32 @perf_session__delete(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
