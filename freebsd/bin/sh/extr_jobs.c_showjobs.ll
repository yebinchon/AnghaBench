; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_showjobs.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_showjobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.job = type { i64, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"showjobs(%d) called\0A\00", align 1
@jobtab = common dso_local global %struct.job* null, align 8
@njobs = common dso_local global i32 0, align 4
@SHOWJOBS_DEFAULT = common dso_local global i32 0, align 4
@SHOWJOBS_VERBOSE = common dso_local global i32 0, align 4
@JOBDONE = common dso_local global i64 0, align 8
@iflag = common dso_local global i64 0, align 8
@bgjob = common dso_local global %struct.job* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @showjobs(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.job*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i8*
  %10 = call i32 @TRACE(i8* %9)
  %11 = call i32 (...) @checkzombies()
  store i32 1, i32* %5, align 4
  %12 = load %struct.job*, %struct.job** @jobtab, align 8
  store %struct.job* %12, %struct.job** %6, align 8
  br label %13

13:                                               ; preds = %76, %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @njobs, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %81

17:                                               ; preds = %13
  %18 = load %struct.job*, %struct.job** %6, align 8
  %19 = getelementptr inbounds %struct.job, %struct.job* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %76

23:                                               ; preds = %17
  %24 = load %struct.job*, %struct.job** %6, align 8
  %25 = getelementptr inbounds %struct.job, %struct.job* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.job*, %struct.job** %6, align 8
  %30 = call i32 @freejob(%struct.job* %29)
  br label %76

31:                                               ; preds = %23
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.job*, %struct.job** %6, align 8
  %36 = getelementptr inbounds %struct.job, %struct.job* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %76

40:                                               ; preds = %34, %31
  %41 = load %struct.job*, %struct.job** %6, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @showjob(%struct.job* %41, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @SHOWJOBS_DEFAULT, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @SHOWJOBS_VERBOSE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %47, %40
  %52 = load %struct.job*, %struct.job** %6, align 8
  %53 = getelementptr inbounds %struct.job, %struct.job* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.job*, %struct.job** %6, align 8
  %55 = getelementptr inbounds %struct.job, %struct.job* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @JOBDONE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %51
  %60 = load %struct.job*, %struct.job** %6, align 8
  %61 = getelementptr inbounds %struct.job, %struct.job* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* @iflag, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load %struct.job*, %struct.job** %6, align 8
  %69 = load %struct.job*, %struct.job** @bgjob, align 8
  %70 = icmp ne %struct.job* %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67, %64
  %72 = load %struct.job*, %struct.job** %6, align 8
  %73 = call i32 @freejob(%struct.job* %72)
  br label %74

74:                                               ; preds = %71, %67, %59, %51
  br label %75

75:                                               ; preds = %74, %47
  br label %76

76:                                               ; preds = %75, %39, %28, %22
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  %79 = load %struct.job*, %struct.job** %6, align 8
  %80 = getelementptr inbounds %struct.job, %struct.job* %79, i32 1
  store %struct.job* %80, %struct.job** %6, align 8
  br label %13

81:                                               ; preds = %13
  ret void
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @checkzombies(...) #1

declare dso_local i32 @freejob(%struct.job*) #1

declare dso_local i32 @showjob(%struct.job*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
