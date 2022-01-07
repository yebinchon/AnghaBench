; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_check_equals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_check_equals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"\0A%s failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"v1: \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\0Av2: \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i64)* @check_equals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_equals(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i64 @memcmp(i8* %11, i8* %12, i64 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  ret void

17:                                               ; preds = %4
  %18 = load i32, i32* @stderr, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %10, align 8
  br label %24

24:                                               ; preds = %36, %17
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i32, i32* @stderr, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %28
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %9, align 8
  br label %24

39:                                               ; preds = %24
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  %42 = load i8*, i8** %7, align 8
  store i8* %42, i8** %10, align 8
  br label %43

43:                                               ; preds = %55, %39
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %47
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %9, align 8
  br label %43

58:                                               ; preds = %43
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32, i32* @EXIT_FAILURE, align 4
  %62 = call i32 @exit(i32 %61) #3
  unreachable
}

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
