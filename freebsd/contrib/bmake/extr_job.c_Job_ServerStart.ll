; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_Job_ServerStart.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_Job_ServerStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@tokenWaitJob = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@MAKEFLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-J\00", align 1
@VAR_GLOBAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Job_ServerStart(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tokenWaitJob, i32 0, i32 0), align 4
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tokenWaitJob, i32 0, i32 1), align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @F_SETFD, align 4
  %19 = load i32, i32* @FD_CLOEXEC, align 4
  %20 = call i32 @fcntl(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @F_SETFD, align 4
  %23 = load i32, i32* @FD_CLOEXEC, align 4
  %24 = call i32 @fcntl(i32 %21, i32 %22, i32 %23)
  br label %47

25:                                               ; preds = %11, %3
  %26 = call i32 @JobCreatePipe(%struct.TYPE_3__* @tokenWaitJob, i32 15)
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tokenWaitJob, i32 0, i32 0), align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tokenWaitJob, i32 0, i32 1), align 4
  %30 = call i32 @snprintf(i8* %27, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* @MAKEFLAGS, align 4
  %32 = load i32, i32* @VAR_GLOBAL, align 4
  %33 = call i32 @Var_Append(i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @MAKEFLAGS, align 4
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %36 = load i32, i32* @VAR_GLOBAL, align 4
  %37 = call i32 @Var_Append(i32 %34, i8* %35, i32 %36)
  store i32 1, i32* %7, align 4
  br label %38

38:                                               ; preds = %44, %25
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = call i32 (...) @JobTokenAdd()
  br label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %38

47:                                               ; preds = %14, %38
  ret void
}

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @JobCreatePipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @Var_Append(i32, i8*, i32) #1

declare dso_local i32 @JobTokenAdd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
