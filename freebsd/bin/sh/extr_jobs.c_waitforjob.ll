; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_waitforjob.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_waitforjob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.job = type { i64, i64, i64 }

@INTOFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"waitforjob(%%%td) called\0A\00", align 1
@jobtab = common dso_local global %struct.job* null, align 8
@DOWAIT_BLOCK = common dso_local global i32 0, align 4
@Tflag = common dso_local global i64 0, align 8
@DOWAIT_SIG = common dso_local global i32 0, align 4
@DOWAIT_SIG_TRAP = common dso_local global i32 0, align 4
@JOBS = common dso_local global i32 0, align 4
@JOBDONE = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@CLEAR_PENDING_INT = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@JOBSTOPPED = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@rootpid = common dso_local global i32 0, align 4
@rootshell = common dso_local global i64 0, align 8
@ttyfd = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @waitforjob(%struct.job* %0, i32* %1) #0 {
  %3 = alloca %struct.job*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.job* %0, %struct.job** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @INTOFF, align 4
  %8 = load %struct.job*, %struct.job** %3, align 8
  %9 = load %struct.job*, %struct.job** @jobtab, align 8
  %10 = ptrtoint %struct.job* %8 to i64
  %11 = ptrtoint %struct.job* %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 24
  %14 = add nsw i64 %13, 1
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @TRACE(i8* %15)
  br label %17

17:                                               ; preds = %39, %2
  %18 = load %struct.job*, %struct.job** %3, align 8
  %19 = getelementptr inbounds %struct.job, %struct.job* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %17
  %23 = load i32, i32* @DOWAIT_BLOCK, align 4
  %24 = load i64, i64* @Tflag, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @DOWAIT_SIG, align 4
  %28 = load i32, i32* @DOWAIT_SIG_TRAP, align 4
  %29 = or i32 %27, %28
  br label %31

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ 0, %30 ]
  %33 = or i32 %23, %32
  %34 = load %struct.job*, %struct.job** %3, align 8
  %35 = call i32 @dowait(i32 %33, %struct.job* %34)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 (...) @dotrap()
  br label %39

39:                                               ; preds = %37, %31
  br label %17

40:                                               ; preds = %17
  %41 = load %struct.job*, %struct.job** %3, align 8
  %42 = call i32 @getjobstatus(%struct.job* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @WIFSIGNALED(i32 %46)
  %48 = load i32*, i32** %4, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @WIFEXITED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @WEXITSTATUS(i32 %54)
  store i32 %55, i32* %6, align 4
  br label %60

56:                                               ; preds = %49
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @WTERMSIG(i32 %57)
  %59 = add nsw i32 %58, 128
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i32, i32* @JOBS, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.job*, %struct.job** %3, align 8
  %65 = getelementptr inbounds %struct.job, %struct.job* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @JOBDONE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63, %60
  %70 = load %struct.job*, %struct.job** %3, align 8
  %71 = call i32 @freejob(%struct.job* %70)
  br label %72

72:                                               ; preds = %69, %63
  %73 = call i64 (...) @int_pending()
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @WIFSIGNALED(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @WTERMSIG(i32 %80)
  %82 = load i32, i32* @SIGINT, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %79, %75
  %85 = load i32, i32* @CLEAR_PENDING_INT, align 4
  br label %86

86:                                               ; preds = %84, %79
  br label %87

87:                                               ; preds = %86, %72
  %88 = load i32, i32* @INTON, align 4
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @dowait(i32, %struct.job*) #1

declare dso_local i32 @dotrap(...) #1

declare dso_local i32 @getjobstatus(%struct.job*) #1

declare dso_local i32 @WIFSIGNALED(i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @freejob(%struct.job*) #1

declare dso_local i64 @int_pending(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
