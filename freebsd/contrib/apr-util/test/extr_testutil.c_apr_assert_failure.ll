; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testutil.c_apr_assert_failure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testutil.c_apr_assert_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APR_ENOTIMPL = common dso_local global i64 0, align 8
@APR_SUCCESS = common dso_local global i64 0, align 8
@STRING_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s (%d): expected failure, got success\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apr_assert_failure(i32* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @APR_ENOTIMPL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @abts_not_impl(i32* %15, i8* %16, i32 %17)
  br label %36

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @APR_SUCCESS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32, i32* @STRING_MAX, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %9, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %28, i64 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @abts_fail(i32* %31, i8* %27, i32 %32)
  %34 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %34)
  br label %35

35:                                               ; preds = %23, %19
  br label %36

36:                                               ; preds = %35, %14
  ret void
}

declare dso_local i32 @abts_not_impl(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i64) #1

declare dso_local i32 @abts_fail(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
