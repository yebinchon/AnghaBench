; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-script.c_perf_session__check_output_opt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-script.c_perf_session__check_output_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.perf_session = type { i32 }
%struct.perf_evsel = type { i32 }

@PERF_TYPE_MAX = common dso_local global i32 0, align 4
@output = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [68 x i8] c"%s events do not exist. Remove corresponding -f option to proceed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_session*)* @perf_session__check_output_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_session__check_output_opt(%struct.perf_session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_session*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_evsel*, align 8
  store %struct.perf_session* %0, %struct.perf_session** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %54, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @PERF_TYPE_MAX, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %57

10:                                               ; preds = %6
  %11 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.perf_evsel* @perf_session__find_first_evtype(%struct.perf_session* %11, i32 %12)
  store %struct.perf_evsel* %13, %struct.perf_evsel** %5, align 8
  %14 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %15 = icmp ne %struct.perf_evsel* %14, null
  br i1 %15, label %36, label %16

16:                                               ; preds = %10
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @output, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %16
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @output, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @event_type(i32 %33)
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 -1, i32* %2, align 4
  br label %58

36:                                               ; preds = %24, %16, %10
  %37 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %38 = icmp ne %struct.perf_evsel* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @output, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %49 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %50 = call i64 @perf_evsel__check_attr(%struct.perf_evsel* %48, %struct.perf_session* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 -1, i32* %2, align 4
  br label %58

53:                                               ; preds = %47, %39, %36
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %6

57:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %52, %32
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.perf_evsel* @perf_session__find_first_evtype(%struct.perf_session*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @event_type(i32) #1

declare dso_local i64 @perf_evsel__check_attr(%struct.perf_evsel*, %struct.perf_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
