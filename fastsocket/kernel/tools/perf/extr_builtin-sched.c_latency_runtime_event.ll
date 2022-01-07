; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c_latency_runtime_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c_latency_runtime_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i32, i32 }
%struct.perf_evsel = type { i32 }
%struct.perf_sample = type { i32, i8* }
%struct.machine = type { i32 }
%struct.thread = type { i32 }
%struct.work_atoms = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"runtime\00", align 1
@MAX_CPUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"in-event: Internal tree error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sched*, %struct.perf_evsel*, %struct.perf_sample*, %struct.machine*)* @latency_runtime_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @latency_runtime_event(%struct.perf_sched* %0, %struct.perf_evsel* %1, %struct.perf_sample* %2, %struct.machine* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_sched*, align 8
  %7 = alloca %struct.perf_evsel*, align 8
  %8 = alloca %struct.perf_sample*, align 8
  %9 = alloca %struct.machine*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.thread*, align 8
  %13 = alloca %struct.work_atoms*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.perf_sched* %0, %struct.perf_sched** %6, align 8
  store %struct.perf_evsel* %1, %struct.perf_evsel** %7, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %8, align 8
  store %struct.machine* %3, %struct.machine** %9, align 8
  %16 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %17 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %18 = call i8* @perf_evsel__intval(%struct.perf_evsel* %16, %struct.perf_sample* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %10, align 8
  %19 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %20 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %21 = call i8* @perf_evsel__intval(%struct.perf_evsel* %19, %struct.perf_sample* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %21, i8** %11, align 8
  %22 = load %struct.machine*, %struct.machine** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call %struct.thread* @machine__findnew_thread(%struct.machine* %22, i8* %23)
  store %struct.thread* %24, %struct.thread** %12, align 8
  %25 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %26 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %25, i32 0, i32 1
  %27 = load %struct.thread*, %struct.thread** %12, align 8
  %28 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %29 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %28, i32 0, i32 0
  %30 = call %struct.work_atoms* @thread_atoms_search(i32* %26, %struct.thread* %27, i32* %29)
  store %struct.work_atoms* %30, %struct.work_atoms** %13, align 8
  %31 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %32 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %14, align 8
  %34 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %35 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @MAX_CPUS, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %4
  %41 = load i32, i32* %15, align 4
  %42 = icmp slt i32 %41, 0
  br label %43

43:                                               ; preds = %40, %4
  %44 = phi i1 [ true, %4 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.work_atoms*, %struct.work_atoms** %13, align 8
  %48 = icmp ne %struct.work_atoms* %47, null
  br i1 %48, label %73, label %49

49:                                               ; preds = %43
  %50 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %51 = load %struct.thread*, %struct.thread** %12, align 8
  %52 = call i64 @thread_atoms_insert(%struct.perf_sched* %50, %struct.thread* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 -1, i32* %5, align 4
  br label %78

55:                                               ; preds = %49
  %56 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %57 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %56, i32 0, i32 1
  %58 = load %struct.thread*, %struct.thread** %12, align 8
  %59 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %60 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %59, i32 0, i32 0
  %61 = call %struct.work_atoms* @thread_atoms_search(i32* %57, %struct.thread* %58, i32* %60)
  store %struct.work_atoms* %61, %struct.work_atoms** %13, align 8
  %62 = load %struct.work_atoms*, %struct.work_atoms** %13, align 8
  %63 = icmp ne %struct.work_atoms* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %55
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %78

66:                                               ; preds = %55
  %67 = load %struct.work_atoms*, %struct.work_atoms** %13, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = call i64 @add_sched_out_event(%struct.work_atoms* %67, i8 signext 82, i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 -1, i32* %5, align 4
  br label %78

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %43
  %74 = load %struct.work_atoms*, %struct.work_atoms** %13, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 @add_runtime_event(%struct.work_atoms* %74, i8* %75, i8* %76)
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %73, %71, %64, %54
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i8* @perf_evsel__intval(%struct.perf_evsel*, %struct.perf_sample*, i8*) #1

declare dso_local %struct.thread* @machine__findnew_thread(%struct.machine*, i8*) #1

declare dso_local %struct.work_atoms* @thread_atoms_search(i32*, %struct.thread*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @thread_atoms_insert(%struct.perf_sched*, %struct.thread*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @add_sched_out_event(%struct.work_atoms*, i8 signext, i8*) #1

declare dso_local i32 @add_runtime_event(%struct.work_atoms*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
