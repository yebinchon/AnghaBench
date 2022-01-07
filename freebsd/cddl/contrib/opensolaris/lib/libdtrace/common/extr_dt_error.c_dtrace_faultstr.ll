; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_error.c_dtrace_faultstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_error.c_dtrace_faultstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i8* }

@dtrace_faultstr.faults = internal constant [11 x %struct.anon] [%struct.anon { i32 137, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0) }, %struct.anon { i32 136, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i32 133, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0) }, %struct.anon { i32 134, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i32 130, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0) }, %struct.anon { i32 132, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon { i32 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0) }, %struct.anon { i32 129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0) }, %struct.anon { i32 135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0) }, %struct.anon { i32 131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0) }, %struct.anon zeroinitializer], align 16
@.str = private unnamed_addr constant [16 x i8] c"invalid address\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid alignment\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"illegal operation\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"divide-by-zero\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"out of scratch space\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"invalid kernel access\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"invalid user access\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"tuple stack overflow\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"bad stack\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"library-level fault\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"unknown fault\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dtrace_faultstr(i32* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %29, %2
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [11 x %struct.anon], [11 x %struct.anon]* @dtrace_faultstr.faults, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %7
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [11 x %struct.anon], [11 x %struct.anon]* @dtrace_faultstr.faults, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 16
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [11 x %struct.anon], [11 x %struct.anon]* @dtrace_faultstr.faults, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %3, align 8
  br label %33

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %7

32:                                               ; preds = %7
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %33

33:                                               ; preds = %32, %22
  %34 = load i8*, i8** %3, align 8
  ret i8* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
