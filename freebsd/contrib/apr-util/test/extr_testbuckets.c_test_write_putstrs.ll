; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_test_write_putstrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_test_write_putstrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"123456789abcdefghij\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"34\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"567\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"9a\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"bcd\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"gh\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"apr_brigade_flatten\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_write_putstrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_write_putstrs(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [30 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @p, align 4
  %12 = call i32* @apr_bucket_alloc_create(i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* @p, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @apr_brigade_create(i32 %13, i32* %14)
  store i32* %15, i32** %6, align 8
  store i32 30, i32* %9, align 4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32* @apr_bucket_heap_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i32* null, i32* %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @APR_BRIGADE_INSERT_HEAD(i32* %18, i32* %19)
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 (i32*, i32*, i32*, i8*, i8*, ...) @apr_brigade_putstrs(i32* %21, i32* null, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* null)
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 (i32*, i32*, i32*, i8*, i8*, ...) @apr_brigade_putstrs(i32* %23, i32* null, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* null)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 0
  %28 = call i32 @apr_brigade_flatten(i32* %26, i8* %27, i32* %9)
  %29 = call i32 @apr_assert_success(i32* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 0
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = call i32 @ABTS_STR_NEQUAL(i32* %30, i8* %31, i8* %32, i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @apr_brigade_destroy(i32* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @apr_bucket_alloc_destroy(i32* %38)
  ret void
}

declare dso_local i32* @apr_bucket_alloc_create(i32) #1

declare dso_local i32* @apr_brigade_create(i32, i32*) #1

declare dso_local i32* @apr_bucket_heap_create(i8*, i32, i32*, i32*) #1

declare dso_local i32 @APR_BRIGADE_INSERT_HEAD(i32*, i32*) #1

declare dso_local i32 @apr_brigade_putstrs(i32*, i32*, i32*, i8*, i8*, ...) #1

declare dso_local i32 @apr_assert_success(i32*, i8*, i32) #1

declare dso_local i32 @apr_brigade_flatten(i32*, i8*, i32*) #1

declare dso_local i32 @ABTS_STR_NEQUAL(i32*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @apr_brigade_destroy(i32*) #1

declare dso_local i32 @apr_bucket_alloc_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
