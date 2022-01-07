; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c___cmd_timechart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c___cmd_timechart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_tool = type { i32, i32, i32, i32, i32 }
%struct.perf_session = type { i32 }

@process_sample_event = common dso_local global i32 0, align 4
@process_exit_event = common dso_local global i32 0, align 4
@process_fork_event = common dso_local global i32 0, align 4
@process_comm_event = common dso_local global i32 0, align 4
@input_name = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"timechart record\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Written %2.1f seconds of trace to %s.\0A\00", align 1
@last_time = common dso_local global double 0.000000e+00, align 8
@first_time = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @__cmd_timechart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cmd_timechart(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.perf_tool, align 4
  %5 = alloca %struct.perf_session*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %4, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %4, i32 0, i32 1
  %9 = load i32, i32* @process_sample_event, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %4, i32 0, i32 2
  %11 = load i32, i32* @process_exit_event, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %4, i32 0, i32 3
  %13 = load i32, i32* @process_fork_event, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %4, i32 0, i32 4
  %15 = load i32, i32* @process_comm_event, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* @input_name, align 4
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = call %struct.perf_session* @perf_session__new(i32 %16, i32 %17, i32 0, i32 0, %struct.perf_tool* %4)
  store %struct.perf_session* %18, %struct.perf_session** %5, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %22 = icmp eq %struct.perf_session* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %52

26:                                               ; preds = %1
  %27 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %28 = call i32 @perf_session__has_traces(%struct.perf_session* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %48

31:                                               ; preds = %26
  %32 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %33 = call i32 @perf_session__process_events(%struct.perf_session* %32, %struct.perf_tool* %4)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %48

37:                                               ; preds = %31
  %38 = call i32 (...) @end_sample_processing()
  %39 = call i32 (...) @sort_pids()
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @write_svg_file(i8* %40)
  %42 = load double, double* @last_time, align 8
  %43 = load double, double* @first_time, align 8
  %44 = fsub double %42, %43
  %45 = fdiv double %44, 1.000000e+09
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), double %45, i8* %46)
  br label %48

48:                                               ; preds = %37, %36, %30
  %49 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %50 = call i32 @perf_session__delete(%struct.perf_session* %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %23
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.perf_session* @perf_session__new(i32, i32, i32, i32, %struct.perf_tool*) #1

declare dso_local i32 @perf_session__has_traces(%struct.perf_session*, i8*) #1

declare dso_local i32 @perf_session__process_events(%struct.perf_session*, %struct.perf_tool*) #1

declare dso_local i32 @end_sample_processing(...) #1

declare dso_local i32 @sort_pids(...) #1

declare dso_local i32 @write_svg_file(i8*) #1

declare dso_local i32 @pr_info(i8*, double, i8*) #1

declare dso_local i32 @perf_session__delete(%struct.perf_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
