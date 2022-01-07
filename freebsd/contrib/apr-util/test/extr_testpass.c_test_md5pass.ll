; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testpass.c_test_md5pass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testpass.c_test_md5pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"hellojed\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sardine\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"hellojed2\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MD5 password validated\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"wrong MD5 password should not validate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_md5pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_md5pass(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [100 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %12 = call i32 @apr_md5_encode(i8* %9, i8* %10, i8* %11, i32 100)
  %13 = load i32*, i32** %3, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %16 = call i32 @apr_password_validate(i8* %14, i8* %15)
  %17 = call i32 @apr_assert_success(i32* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %21 = call i32 @apr_password_validate(i8* %19, i8* %20)
  %22 = call i32 @APR_ASSERT_FAILURE(i32* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  ret void
}

declare dso_local i32 @apr_md5_encode(i8*, i8*, i8*, i32) #1

declare dso_local i32 @apr_assert_success(i32*, i8*, i32) #1

declare dso_local i32 @apr_password_validate(i8*, i8*) #1

declare dso_local i32 @APR_ASSERT_FAILURE(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
