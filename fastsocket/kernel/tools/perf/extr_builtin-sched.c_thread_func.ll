; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c_thread_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c_thread_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_thread_parms = type { %struct.perf_sched*, %struct.task_desc* }
%struct.perf_sched = type { i32, i32 }
%struct.task_desc = type { i8*, i64, i64, i32, i64, i32*, i32 }

@.str = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@PR_SET_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @thread_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thread_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sched_thread_parms*, align 8
  %4 = alloca %struct.task_desc*, align 8
  %5 = alloca %struct.perf_sched*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [22 x i8], align 16
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.sched_thread_parms*
  store %struct.sched_thread_parms* %13, %struct.sched_thread_parms** %3, align 8
  %14 = load %struct.sched_thread_parms*, %struct.sched_thread_parms** %3, align 8
  %15 = getelementptr inbounds %struct.sched_thread_parms, %struct.sched_thread_parms* %14, i32 0, i32 1
  %16 = load %struct.task_desc*, %struct.task_desc** %15, align 8
  store %struct.task_desc* %16, %struct.task_desc** %4, align 8
  %17 = load %struct.sched_thread_parms*, %struct.sched_thread_parms** %3, align 8
  %18 = getelementptr inbounds %struct.sched_thread_parms, %struct.sched_thread_parms* %17, i32 0, i32 0
  %19 = load %struct.perf_sched*, %struct.perf_sched** %18, align 8
  store %struct.perf_sched* %19, %struct.perf_sched** %5, align 8
  %20 = load %struct.sched_thread_parms*, %struct.sched_thread_parms** %3, align 8
  %21 = call i32 @free(%struct.sched_thread_parms* %20)
  %22 = getelementptr inbounds [22 x i8], [22 x i8]* %10, i64 0, i64 0
  %23 = load %struct.task_desc*, %struct.task_desc** %4, align 8
  %24 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @PR_SET_NAME, align 4
  %28 = getelementptr inbounds [22 x i8], [22 x i8]* %10, i64 0, i64 0
  %29 = call i32 @prctl(i32 %27, i8* %28)
  %30 = call i32 (...) @self_open_counters()
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  ret i8* null

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %74, %34
  %36 = load %struct.task_desc*, %struct.task_desc** %4, align 8
  %37 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %36, i32 0, i32 6
  %38 = call i64 @sem_post(i32* %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @BUG_ON(i64 %39)
  %41 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %42 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %41, i32 0, i32 1
  %43 = call i64 @pthread_mutex_lock(i32* %42)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @BUG_ON(i64 %44)
  %46 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %47 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %46, i32 0, i32 1
  %48 = call i64 @pthread_mutex_unlock(i32* %47)
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @BUG_ON(i64 %49)
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @get_cpu_usage_nsec_self(i32 %51)
  store i64 %52, i64* %6, align 8
  store i64 0, i64* %8, align 8
  br label %53

53:                                               ; preds = %71, %35
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.task_desc*, %struct.task_desc** %4, align 8
  %56 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %53
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.task_desc*, %struct.task_desc** %4, align 8
  %62 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %64 = load %struct.task_desc*, %struct.task_desc** %4, align 8
  %65 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @perf_sched__process_event(%struct.perf_sched* %63, i32 %69)
  br label %71

71:                                               ; preds = %59
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %8, align 8
  br label %53

74:                                               ; preds = %53
  %75 = load i32, i32* %11, align 4
  %76 = call i64 @get_cpu_usage_nsec_self(i32 %75)
  store i64 %76, i64* %7, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %6, align 8
  %79 = sub nsw i64 %77, %78
  %80 = load %struct.task_desc*, %struct.task_desc** %4, align 8
  %81 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %80, i32 0, i32 4
  store i64 %79, i64* %81, align 8
  %82 = load %struct.task_desc*, %struct.task_desc** %4, align 8
  %83 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %82, i32 0, i32 3
  %84 = call i64 @sem_post(i32* %83)
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @BUG_ON(i64 %85)
  %87 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %88 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %87, i32 0, i32 0
  %89 = call i64 @pthread_mutex_lock(i32* %88)
  store i64 %89, i64* %9, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @BUG_ON(i64 %90)
  %92 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %93 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %92, i32 0, i32 0
  %94 = call i64 @pthread_mutex_unlock(i32* %93)
  store i64 %94, i64* %9, align 8
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @BUG_ON(i64 %95)
  br label %35
}

declare dso_local i32 @free(%struct.sched_thread_parms*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @prctl(i32, i8*) #1

declare dso_local i32 @self_open_counters(...) #1

declare dso_local i64 @sem_post(i32*) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i64 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @get_cpu_usage_nsec_self(i32) #1

declare dso_local i32 @perf_sched__process_event(%struct.perf_sched*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
