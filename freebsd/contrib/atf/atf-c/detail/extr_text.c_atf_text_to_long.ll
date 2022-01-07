; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_text.c_atf_text_to_long.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_text.c_atf_text_to_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"'%s' is not a number\00", align 1
@ERANGE = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@LONG_MIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"'%s' is out of range\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atf_text_to_long(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 0, i64* @errno, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strtol(i8* %8, i8** %6, i32 10)
  store i64 %9, i64* %7, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15, %2
  %21 = load i64, i64* @EINVAL, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @atf_libc_error(i64 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 %23, i32* %5, align 4
  br label %45

24:                                               ; preds = %15
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @ERANGE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @LONG_MAX, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @LONG_MIN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32, %28, %24
  %37 = load i64, i64* @ERANGE, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @atf_libc_error(i64 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  store i32 %39, i32* %5, align 4
  br label %44

40:                                               ; preds = %32
  %41 = load i64, i64* %7, align 8
  %42 = load i64*, i64** %4, align 8
  store i64 %41, i64* %42, align 8
  %43 = call i32 (...) @atf_no_error()
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44, %20
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @atf_libc_error(i64, i8*, i8*) #1

declare dso_local i32 @atf_no_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
