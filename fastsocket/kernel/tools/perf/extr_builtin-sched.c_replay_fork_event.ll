; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c_replay_fork_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c_replay_fork_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i32 }
%struct.perf_evsel = type { i32 }
%struct.perf_sample = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"parent_comm\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"child_comm\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"parent_pid\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"child_pid\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"sched_fork event %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"... parent: %s/%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"...  child: %s/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sched*, %struct.perf_evsel*, %struct.perf_sample*)* @replay_fork_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replay_fork_event(%struct.perf_sched* %0, %struct.perf_evsel* %1, %struct.perf_sample* %2) #0 {
  %4 = alloca %struct.perf_sched*, align 8
  %5 = alloca %struct.perf_evsel*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.perf_sched* %0, %struct.perf_sched** %4, align 8
  store %struct.perf_evsel* %1, %struct.perf_evsel** %5, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %6, align 8
  %11 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %12 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %13 = call i8* @perf_evsel__strval(%struct.perf_evsel* %11, %struct.perf_sample* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %7, align 8
  %14 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %15 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %16 = call i8* @perf_evsel__strval(%struct.perf_evsel* %14, %struct.perf_sample* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %16, i8** %8, align 8
  %17 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %18 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %19 = call i32 @perf_evsel__intval(%struct.perf_evsel* %17, %struct.perf_sample* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %19, i32* %9, align 4
  %20 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %21 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %22 = call i32 @perf_evsel__intval(%struct.perf_evsel* %20, %struct.perf_sample* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %22, i32* %10, align 4
  %23 = load i64, i64* @verbose, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %3
  %26 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %27 = bitcast %struct.perf_evsel* %26 to i8*
  %28 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %27)
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %29, i32 %30)
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %25, %3
  %36 = load %struct.perf_sched*, %struct.perf_sched** %4, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @register_pid(%struct.perf_sched* %36, i32 %37, i8* %38)
  %40 = load %struct.perf_sched*, %struct.perf_sched** %4, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @register_pid(%struct.perf_sched* %40, i32 %41, i8* %42)
  ret i32 0
}

declare dso_local i8* @perf_evsel__strval(%struct.perf_evsel*, %struct.perf_sample*, i8*) #1

declare dso_local i32 @perf_evsel__intval(%struct.perf_evsel*, %struct.perf_sample*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @register_pid(%struct.perf_sched*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
