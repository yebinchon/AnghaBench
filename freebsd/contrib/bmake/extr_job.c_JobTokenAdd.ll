; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_JobTokenAdd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_JobTokenAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@JOB_TOKENS = common dso_local global i8* null, align 8
@aborting = common dso_local global i64 0, align 8
@Job_error_token = common dso_local global i32 0, align 4
@ABORT_ERROR = common dso_local global i64 0, align 8
@jobTokensRunning = common dso_local global i64 0, align 8
@tokenWaitJob = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@JOB = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"(%d) aborting %d, deposit token %c\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @JobTokenAdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @JobTokenAdd() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = load i8*, i8** @JOB_TOKENS, align 8
  %4 = load i64, i64* @aborting, align 8
  %5 = getelementptr inbounds i8, i8* %3, i64 %4
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %1, align 1
  %7 = load i32, i32* @Job_error_token, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %0
  %10 = load i64, i64* @aborting, align 8
  %11 = load i64, i64* @ABORT_ERROR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i64, i64* @jobTokensRunning, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %52

17:                                               ; preds = %13
  store i8 43, i8* %1, align 1
  br label %18

18:                                               ; preds = %17, %9, %0
  br label %19

19:                                               ; preds = %29, %18
  %20 = load i8, i8* %1, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 43
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tokenWaitJob, i32 0, i32 1), align 4
  %25 = call i32 @read(i32 %24, i8* %2, i32 1)
  %26 = icmp eq i32 %25, 1
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i1 [ false, %19 ], [ %26, %23 ]
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  br label %19

30:                                               ; preds = %27
  %31 = load i32, i32* @JOB, align 4
  %32 = call i64 @DEBUG(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* @debug_file, align 4
  %36 = call i32 (...) @getpid()
  %37 = load i64, i64* @aborting, align 8
  %38 = load i8, i8* %1, align 1
  %39 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %36, i64 %37, i8 signext %38)
  br label %40

40:                                               ; preds = %34, %30
  br label %41

41:                                               ; preds = %51, %40
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tokenWaitJob, i32 0, i32 0), align 4
  %43 = call i32 @write(i32 %42, i8* %1, i32 1)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i64, i64* @errno, align 8
  %47 = load i64, i64* @EAGAIN, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i1 [ false, %41 ], [ %48, %45 ]
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  br label %41

52:                                               ; preds = %16, %49
  ret void
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i64, i8 signext) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
