; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_stoppedjobs.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_stoppedjobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.job = type { i64, i64 }

@job_warning = common dso_local global i32 0, align 4
@jobtab = common dso_local global %struct.job* null, align 8
@njobs = common dso_local global i32 0, align 4
@JOBSTOPPED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"You have stopped jobs.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stoppedjobs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.job*, align 8
  %4 = load i32, i32* @job_warning, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %34

7:                                                ; preds = %0
  store i32 1, i32* %2, align 4
  %8 = load %struct.job*, %struct.job** @jobtab, align 8
  store %struct.job* %8, %struct.job** %3, align 8
  br label %9

9:                                                ; preds = %28, %7
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @njobs, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load %struct.job*, %struct.job** %3, align 8
  %15 = getelementptr inbounds %struct.job, %struct.job* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %28

19:                                               ; preds = %13
  %20 = load %struct.job*, %struct.job** %3, align 8
  %21 = getelementptr inbounds %struct.job, %struct.job* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @JOBSTOPPED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 @out2fmt_flush(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* @job_warning, align 4
  store i32 1, i32* %1, align 4
  br label %34

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %18
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  %31 = load %struct.job*, %struct.job** %3, align 8
  %32 = getelementptr inbounds %struct.job, %struct.job* %31, i32 1
  store %struct.job* %32, %struct.job** %3, align 8
  br label %9

33:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %34

34:                                               ; preds = %33, %25, %6
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @out2fmt_flush(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
