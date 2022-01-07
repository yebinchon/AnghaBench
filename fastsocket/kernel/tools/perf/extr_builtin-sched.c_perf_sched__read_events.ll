; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c_perf_sched__read_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c_perf_sched__read_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i32, i32, i32, i32 }
%struct.perf_session = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.perf_evsel_str_handler = type { i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"sched:sched_switch\00", align 1
@process_sched_switch_event = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"sched:sched_stat_runtime\00", align 1
@process_sched_runtime_event = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"sched:sched_wakeup\00", align 1
@process_sched_wakeup_event = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"sched:sched_wakeup_new\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"sched:sched_process_fork\00", align 1
@process_sched_fork_event = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"sched:sched_process_exit\00", align 1
@process_sched_exit_event = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"sched:sched_migrate_task\00", align 1
@process_sched_migrate_task_event = common dso_local global i32 0, align 4
@input_name = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"No Memory for session\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"record -R\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Failed to process events, error %d\00", align 1
@PERF_RECORD_LOST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sched*, i32, %struct.perf_session**)* @perf_sched__read_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_sched__read_events(%struct.perf_sched* %0, i32 %1, %struct.perf_session** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_sched*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_session**, align 8
  %8 = alloca [7 x %struct.perf_evsel_str_handler], align 16
  %9 = alloca %struct.perf_session*, align 8
  %10 = alloca i32, align 4
  store %struct.perf_sched* %0, %struct.perf_sched** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.perf_session** %2, %struct.perf_session*** %7, align 8
  %11 = getelementptr inbounds [7 x %struct.perf_evsel_str_handler], [7 x %struct.perf_evsel_str_handler]* %8, i64 0, i64 0
  %12 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %12, align 16
  %13 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %11, i32 0, i32 1
  %14 = load i32, i32* @process_sched_switch_event, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %11, i64 1
  %16 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 16
  %17 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %15, i32 0, i32 1
  %18 = load i32, i32* @process_sched_runtime_event, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %15, i64 1
  %20 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %20, align 16
  %21 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %19, i32 0, i32 1
  %22 = load i32, i32* @process_sched_wakeup_event, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %19, i64 1
  %24 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %24, align 16
  %25 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %23, i32 0, i32 1
  %26 = load i32, i32* @process_sched_wakeup_event, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %23, i64 1
  %28 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8** %28, align 16
  %29 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %27, i32 0, i32 1
  %30 = load i32, i32* @process_sched_fork_event, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %27, i64 1
  %32 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8** %32, align 16
  %33 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %31, i32 0, i32 1
  %34 = load i32, i32* @process_sched_exit_event, align 4
  store i32 %34, i32* %33, align 8
  %35 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %31, i64 1
  %36 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8** %36, align 16
  %37 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %35, i32 0, i32 1
  %38 = load i32, i32* @process_sched_migrate_task_event, align 4
  store i32 %38, i32* %37, align 8
  %39 = load i32, i32* @input_name, align 4
  %40 = load i32, i32* @O_RDONLY, align 4
  %41 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %42 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %41, i32 0, i32 3
  %43 = call %struct.perf_session* @perf_session__new(i32 %39, i32 %40, i32 0, i32 0, i32* %42)
  store %struct.perf_session* %43, %struct.perf_session** %9, align 8
  %44 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %45 = icmp eq %struct.perf_session* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %3
  %47 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %111

48:                                               ; preds = %3
  %49 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %50 = getelementptr inbounds [7 x %struct.perf_evsel_str_handler], [7 x %struct.perf_evsel_str_handler]* %8, i64 0, i64 0
  %51 = call i64 @perf_session__set_tracepoints_handlers(%struct.perf_session* %49, %struct.perf_evsel_str_handler* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %108

54:                                               ; preds = %48
  %55 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %56 = call i64 @perf_session__has_traces(%struct.perf_session* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %95

58:                                               ; preds = %54
  %59 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %60 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %61 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %60, i32 0, i32 3
  %62 = call i32 @perf_session__process_events(%struct.perf_session* %59, i32* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %66)
  br label %108

68:                                               ; preds = %58
  %69 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %70 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %77 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %79 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %84 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %86 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @PERF_RECORD_LOST, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %94 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %68, %54
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %100 = call i32 @perf_session__delete(%struct.perf_session* %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load %struct.perf_session**, %struct.perf_session*** %7, align 8
  %103 = icmp ne %struct.perf_session** %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %106 = load %struct.perf_session**, %struct.perf_session*** %7, align 8
  store %struct.perf_session* %105, %struct.perf_session** %106, align 8
  br label %107

107:                                              ; preds = %104, %101
  store i32 0, i32* %4, align 4
  br label %111

108:                                              ; preds = %65, %53
  %109 = load %struct.perf_session*, %struct.perf_session** %9, align 8
  %110 = call i32 @perf_session__delete(%struct.perf_session* %109)
  store i32 -1, i32* %4, align 4
  br label %111

111:                                              ; preds = %108, %107, %46
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.perf_session* @perf_session__new(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i64 @perf_session__set_tracepoints_handlers(%struct.perf_session*, %struct.perf_evsel_str_handler*) #1

declare dso_local i64 @perf_session__has_traces(%struct.perf_session*, i8*) #1

declare dso_local i32 @perf_session__process_events(%struct.perf_session*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @perf_session__delete(%struct.perf_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
