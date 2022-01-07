; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ls/extr_print.c_printtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ls/extr_print.c_printtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@printtime.now = internal global i64 0, align 8
@printtime.d_first = internal global i32 -1, align 4
@D_MD_ORDER = common dso_local global i32 0, align 4
@f_timeformat = common dso_local global i8* null, align 8
@f_sectime = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"%e %b %T %Y\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%b %e %T %Y\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%e %b %R\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%b %e %R\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%e %b  %Y\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%b %e  %Y\00", align 1
@stdout = common dso_local global i32 0, align 4
@SIXMONTHS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @printtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printtime(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [80 x i8], align 16
  %4 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i32, i32* @printtime.d_first, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32, i32* @D_MD_ORDER, align 4
  %9 = call i8* @nl_langinfo(i32 %8)
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 100
  %13 = zext i1 %12 to i32
  store i32 %13, i32* @printtime.d_first, align 4
  br label %14

14:                                               ; preds = %7, %1
  %15 = load i64, i64* @printtime.now, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i64 @time(i32* null)
  store i64 %18, i64* @printtime.now, align 8
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i8*, i8** @f_timeformat, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i8*, i8** @f_timeformat, align 8
  store i8* %23, i8** %4, align 8
  br label %54

24:                                               ; preds = %19
  %25 = load i64, i64* @f_sectime, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* @printtime.d_first, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)
  store i8* %31, i8** %4, align 8
  br label %53

32:                                               ; preds = %24
  %33 = load i64, i64* %2, align 8
  %34 = add nsw i64 %33, 15724800
  %35 = load i64, i64* @printtime.now, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i64, i64* %2, align 8
  %39 = load i64, i64* @printtime.now, align 8
  %40 = add nsw i64 %39, 15724800
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* @printtime.d_first, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  store i8* %46, i8** %4, align 8
  br label %52

47:                                               ; preds = %37, %32
  %48 = load i32, i32* @printtime.d_first, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  store i8* %51, i8** %4, align 8
  br label %52

52:                                               ; preds = %47, %42
  br label %53

53:                                               ; preds = %52, %27
  br label %54

54:                                               ; preds = %53, %22
  %55 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @localtime(i64* %2)
  %58 = call i32 @ls_strftime(i8* %55, i32 80, i8* %56, i32 %57)
  %59 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %60 = load i32, i32* @stdout, align 4
  %61 = call i32 @fputs(i8* %59, i32 %60)
  %62 = load i32, i32* @stdout, align 4
  %63 = call i32 @fputc(i8 signext 32, i32 %62)
  ret void
}

declare dso_local i8* @nl_langinfo(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @ls_strftime(i8*, i32, i8*, i32) #1

declare dso_local i32 @localtime(i64*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
