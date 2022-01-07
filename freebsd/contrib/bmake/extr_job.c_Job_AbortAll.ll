; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_Job_AbortAll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_Job_AbortAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@ABORT_ERROR = common dso_local global i32 0, align 4
@aborting = common dso_local global i32 0, align 4
@jobTokensRunning = common dso_local global i64 0, align 8
@job_table = common dso_local global %struct.TYPE_4__* null, align 8
@job_table_end = common dso_local global %struct.TYPE_4__* null, align 8
@JOB_ST_RUNNING = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@WNOHANG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Job_AbortAll() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @ABORT_ERROR, align 4
  store i32 %3, i32* @aborting, align 4
  %4 = load i64, i64* @jobTokensRunning, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @job_table, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %1, align 8
  br label %8

8:                                                ; preds = %30, %6
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @job_table_end, align 8
  %11 = icmp ult %struct.TYPE_4__* %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @JOB_ST_RUNNING, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %30

19:                                               ; preds = %12
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SIGINT, align 4
  %24 = call i32 @KILLPG(i32 %22, i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SIGKILL, align 4
  %29 = call i32 @KILLPG(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %19, %18
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 1
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %1, align 8
  br label %8

33:                                               ; preds = %8
  br label %34

34:                                               ; preds = %33, %0
  br label %35

35:                                               ; preds = %39, %34
  %36 = load i32, i32* @WNOHANG, align 4
  %37 = call i64 @waitpid(i32 -1, i32* %2, i32 %36)
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %35

40:                                               ; preds = %35
  ret void
}

declare dso_local i32 @KILLPG(i32, i32) #1

declare dso_local i64 @waitpid(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
