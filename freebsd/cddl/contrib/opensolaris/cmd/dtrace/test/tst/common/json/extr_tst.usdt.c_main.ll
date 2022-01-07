; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/tst/common/json/extr_tst.usdt.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/tst/common/json/extr_tst.usdt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@FMT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"{\22finished\22: true}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store volatile i32 0, i32* %6, align 4
  store double 2.505000e+02, double* %8, align 8
  br label %13

13:                                               ; preds = %16, %2
  %14 = call i64 @waiting(i32* %6)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %13

17:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %49, %17
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 10
  br i1 %20, label %21, label %52

21:                                               ; preds = %18
  %22 = load double, double* %8, align 8
  %23 = fmul double %22, 1.780000e+00
  store double %23, double* %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = srem i32 %24, 2
  %26 = icmp eq i32 %25, 1
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %28, i8** %9, align 8
  %29 = load i32, i32* %7, align 4
  %30 = srem i32 %29, 2
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %33, i8** %10, align 8
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 7
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  store i8* %37, i8** %12, align 8
  %38 = load i32, i32* @FMT, align 4
  %39 = load double, double* %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @asprintf(i8** %11, i32 %38, double %39, i32 %40, i8* %41, i8* %42, i8* %43)
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @BUNYAN_FAKE_LOG_DEBUG(i8* %45)
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @free(i8* %47)
  br label %49

49:                                               ; preds = %21
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %18

52:                                               ; preds = %18
  %53 = call i32 @BUNYAN_FAKE_LOG_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  ret i32 0
}

declare dso_local i64 @waiting(i32*) #1

declare dso_local i32 @asprintf(i8**, i32, double, i32, i8*, i8*, i8*) #1

declare dso_local i32 @BUNYAN_FAKE_LOG_DEBUG(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
