; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_context.c_find_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_context.c_find_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@find_function_last_search = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@function_regexp = common dso_local global i32 0, align 4
@find_function_last_match = common dso_local global i64 0, align 8
@LIN_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i64)* @find_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_function(i8** %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* @find_function_last_search, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  store i64 %13, i64* @find_function_last_search, align 8
  br label %14

14:                                               ; preds = %45, %2
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %6, align 8
  %18 = icmp sle i64 %15, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %14
  %20 = load i8**, i8*** %4, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %8, align 8
  %24 = load i8**, i8*** %4, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add nsw i64 %25, 1
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sub nsw i64 %32, 1
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* @INT_MAX, align 4
  %36 = call i32 @MIN(i64 %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @re_search(i32* @function_regexp, i8* %37, i32 %38, i32 0, i32 %39, i32 0)
  %41 = icmp sle i64 0, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %19
  %43 = load i64, i64* %6, align 8
  store i64 %43, i64* @find_function_last_match, align 8
  %44 = load i8*, i8** %8, align 8
  store i8* %44, i8** %3, align 8
  br label %56

45:                                               ; preds = %19
  br label %14

46:                                               ; preds = %14
  %47 = load i64, i64* @find_function_last_match, align 8
  %48 = load i64, i64* @LIN_MAX, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i8**, i8*** %4, align 8
  %52 = load i64, i64* @find_function_last_match, align 8
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %3, align 8
  br label %56

55:                                               ; preds = %46
  store i8* null, i8** %3, align 8
  br label %56

56:                                               ; preds = %55, %50, %42
  %57 = load i8*, i8** %3, align 8
  ret i8* %57
}

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i64 @re_search(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
