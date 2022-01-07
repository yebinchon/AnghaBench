; ModuleID = '/home/carl/AnghaBench/freebsd/bin/dd/extr_misc.c_summary.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/dd/extr_misc.c_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, double, i32, i32, i32, i32 }

@ddflags = common dso_local global i32 0, align 4
@C_NOINFO = common dso_local global i32 0, align 4
@C_PROGRESS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"%ju+%ju records in\0A%ju+%ju records out\0A\00", align 1
@st = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"%ju odd length swab %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"blocks\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"%ju truncated %s\0A\00", align 1
@C_NOXFER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"%ju bytes transferred in %.6f secs (%.0f bytes/sec)\0A\00", align 1
@need_summary = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @summary() #0 {
  %1 = alloca double, align 8
  %2 = load i32, i32* @ddflags, align 4
  %3 = load i32, i32* @C_NOINFO, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %58

7:                                                ; preds = %0
  %8 = load i32, i32* @ddflags, align 4
  %9 = load i32, i32* @C_PROGRESS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %7
  %16 = call double (...) @secs_elapsed()
  store double %16, double* %1, align 8
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @st, i32 0, i32 6), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @st, i32 0, i32 5), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @st, i32 0, i32 4), align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @st, i32 0, i32 3), align 8
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @st, i32 0, i32 0), align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %15
  %26 = load i32, i32* @stderr, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @st, i32 0, i32 0), align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @st, i32 0, i32 0), align 8
  %29 = icmp eq i32 %28, 1
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %27, i8* %31)
  br label %33

33:                                               ; preds = %25, %15
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @st, i32 0, i32 1), align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* @stderr, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @st, i32 0, i32 1), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @st, i32 0, i32 1), align 4
  %40 = icmp eq i32 %39, 1
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %38, i8* %42)
  br label %44

44:                                               ; preds = %36, %33
  %45 = load i32, i32* @ddflags, align 4
  %46 = load i32, i32* @C_NOXFER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @stderr, align 4
  %51 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @st, i32 0, i32 2), align 8
  %52 = load double, double* %1, align 8
  %53 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @st, i32 0, i32 2), align 8
  %54 = load double, double* %1, align 8
  %55 = fdiv double %53, %54
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), double %51, double %52, double %55)
  br label %57

57:                                               ; preds = %49, %44
  store i64 0, i64* @need_summary, align 8
  br label %58

58:                                               ; preds = %57, %6
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local double @secs_elapsed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
