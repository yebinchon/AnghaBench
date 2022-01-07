; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_getcurjob.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_getcurjob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.job = type { i64, i64, %struct.job* }

@jobmru = common dso_local global %struct.job* null, align 8
@JOBSTOPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.job* (%struct.job*)* @getcurjob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.job* @getcurjob(%struct.job* %0) #0 {
  %2 = alloca %struct.job*, align 8
  %3 = alloca %struct.job*, align 8
  %4 = alloca %struct.job*, align 8
  store %struct.job* %0, %struct.job** %3, align 8
  %5 = load %struct.job*, %struct.job** @jobmru, align 8
  store %struct.job* %5, %struct.job** %4, align 8
  br label %6

6:                                                ; preds = %27, %1
  %7 = load %struct.job*, %struct.job** %4, align 8
  %8 = icmp ne %struct.job* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  %10 = load %struct.job*, %struct.job** %4, align 8
  %11 = getelementptr inbounds %struct.job, %struct.job* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load %struct.job*, %struct.job** %4, align 8
  %16 = load %struct.job*, %struct.job** %3, align 8
  %17 = icmp ne %struct.job* %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load %struct.job*, %struct.job** %4, align 8
  %20 = getelementptr inbounds %struct.job, %struct.job* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @JOBSTOPPED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load %struct.job*, %struct.job** %4, align 8
  store %struct.job* %25, %struct.job** %2, align 8
  br label %53

26:                                               ; preds = %18, %14, %9
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.job*, %struct.job** %4, align 8
  %29 = getelementptr inbounds %struct.job, %struct.job* %28, i32 0, i32 2
  %30 = load %struct.job*, %struct.job** %29, align 8
  store %struct.job* %30, %struct.job** %4, align 8
  br label %6

31:                                               ; preds = %6
  %32 = load %struct.job*, %struct.job** @jobmru, align 8
  store %struct.job* %32, %struct.job** %4, align 8
  br label %33

33:                                               ; preds = %48, %31
  %34 = load %struct.job*, %struct.job** %4, align 8
  %35 = icmp ne %struct.job* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load %struct.job*, %struct.job** %4, align 8
  %38 = getelementptr inbounds %struct.job, %struct.job* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.job*, %struct.job** %4, align 8
  %43 = load %struct.job*, %struct.job** %3, align 8
  %44 = icmp ne %struct.job* %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load %struct.job*, %struct.job** %4, align 8
  store %struct.job* %46, %struct.job** %2, align 8
  br label %53

47:                                               ; preds = %41, %36
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.job*, %struct.job** %4, align 8
  %50 = getelementptr inbounds %struct.job, %struct.job* %49, i32 0, i32 2
  %51 = load %struct.job*, %struct.job** %50, align 8
  store %struct.job* %51, %struct.job** %4, align 8
  br label %33

52:                                               ; preds = %33
  store %struct.job* null, %struct.job** %2, align 8
  br label %53

53:                                               ; preds = %52, %45, %24
  %54 = load %struct.job*, %struct.job** %2, align 8
  ret %struct.job* %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
