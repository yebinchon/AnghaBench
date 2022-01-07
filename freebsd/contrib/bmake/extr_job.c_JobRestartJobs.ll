; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_JobRestartJobs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_JobRestartJobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@job_table = common dso_local global %struct.TYPE_7__* null, align 8
@job_table_end = common dso_local global %struct.TYPE_7__* null, align 8
@JOB_ST_RUNNING = common dso_local global i64 0, align 8
@make_suspended = common dso_local global i64 0, align 8
@JOB = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Restarting stopped job pid %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"*** [%s] Continued\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to send SIGCONT to %d\0A\00", align 1
@JOB_ST_FINISHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @JobRestartJobs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @JobRestartJobs() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = load %struct.TYPE_7__*, %struct.TYPE_7__** @job_table, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %1, align 8
  br label %3

3:                                                ; preds = %78, %0
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @job_table_end, align 8
  %6 = icmp ult %struct.TYPE_7__* %4, %5
  br i1 %6, label %7, label %81

7:                                                ; preds = %3
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @JOB_ST_RUNNING, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %65

13:                                               ; preds = %7
  %14 = load i64, i64* @make_suspended, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %65

21:                                               ; preds = %16, %13
  %22 = load i32, i32* @JOB, align 4
  %23 = call i64 @DEBUG(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* @debug_file, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %21
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @stdout, align 4
  %44 = call i32 @fflush(i32 %43)
  br label %45

45:                                               ; preds = %36, %31
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SIGCONT, align 4
  %52 = call i64 @KILLPG(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %45
  %55 = load i32, i32* @JOB, align 4
  %56 = call i64 @DEBUG(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* @debug_file, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %58, %54, %45
  br label %65

65:                                               ; preds = %64, %16, %7
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @JOB_ST_FINISHED, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @JobFinish(%struct.TYPE_7__* %72, i32 %75)
  br label %77

77:                                               ; preds = %71, %65
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 1
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %1, align 8
  br label %3

81:                                               ; preds = %3
  store i64 0, i64* @make_suspended, align 8
  ret void
}

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @KILLPG(i32, i32) #1

declare dso_local i32 @JobFinish(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
