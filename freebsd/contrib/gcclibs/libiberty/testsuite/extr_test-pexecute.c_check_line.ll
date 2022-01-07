; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/testsuite/extr_test-pexecute.c_check_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/testsuite/extr_test-pexecute.c_check_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"got '%c' when expecting newline\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"got '%c' when expecting EOF\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"expected '%c', got '%c'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i8*)* @check_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_line(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [1000 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %7, align 8
  br label %11

11:                                               ; preds = %3, %59
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @getc(i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %11
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 10
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %23 = load i32, i32* %8, align 4
  %24 = trunc i32 %23 to i8
  %25 = call i32 (i8*, i32, i8*, i8, ...) @snprintf(i8* %22, i32 1000, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8 signext %24)
  %26 = load i32, i32* %4, align 4
  %27 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %28 = call i32 @fatal_error(i32 %26, i8* %27, i32 0)
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @getc(i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @EOF, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %37 = load i32, i32* %8, align 4
  %38 = trunc i32 %37 to i8
  %39 = call i32 (i8*, i32, i8*, i8, ...) @snprintf(i8* %36, i32 1000, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8 signext %38)
  %40 = load i32, i32* %4, align 4
  %41 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %42 = call i32 @fatal_error(i32 %40, i8* %41, i32 0)
  br label %43

43:                                               ; preds = %35, %29
  ret void

44:                                               ; preds = %11
  %45 = load i32, i32* %8, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (i8*, i32, i8*, i8, ...) @snprintf(i8* %51, i32 1000, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8 signext %53, i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %58 = call i32 @fatal_error(i32 %56, i8* %57, i32 0)
  br label %59

59:                                               ; preds = %50, %44
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  br label %11
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext, ...) #1

declare dso_local i32 @fatal_error(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
