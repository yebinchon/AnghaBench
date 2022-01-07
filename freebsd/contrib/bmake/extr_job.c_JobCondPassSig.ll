; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_JobCondPassSig.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_JobCondPassSig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@JOB = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"JobCondPassSig(%d) called.\0A\00", align 1
@job_table = common dso_local global %struct.TYPE_4__* null, align 8
@job_table_end = common dso_local global %struct.TYPE_4__* null, align 8
@JOB_ST_RUNNING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"JobCondPassSig passing signal %d to child %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @JobCondPassSig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @JobCondPassSig(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @JOB, align 4
  %5 = call i64 @DEBUG(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @debug_file, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @job_table, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %3, align 8
  br label %13

13:                                               ; preds = %41, %11
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @job_table_end, align 8
  %16 = icmp ult %struct.TYPE_4__* %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @JOB_ST_RUNNING, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %41

24:                                               ; preds = %17
  %25 = load i32, i32* @JOB, align 4
  %26 = call i64 @DEBUG(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32, i32* @debug_file, align 4
  %30 = load i32, i32* %2, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %28, %24
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @KILLPG(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %23
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 1
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %3, align 8
  br label %13

44:                                               ; preds = %13
  ret void
}

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @KILLPG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
