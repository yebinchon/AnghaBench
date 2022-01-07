; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_test_partition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_test_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = common dso_local global i32 0, align 4
@hello = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"partition brigade\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c", world\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"partition returns APR_INCOMPLETE\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"APR_INCOMPLETE partition returned sentinel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_partition(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @p, align 4
  %9 = call i32* @apr_bucket_alloc_create(i32 %8)
  store i32* %9, i32** %5, align 8
  %10 = load i32, i32* @p, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32* @apr_brigade_create(i32 %10, i32* %11)
  store i32* %12, i32** %6, align 8
  %13 = load i32, i32* @hello, align 4
  %14 = load i32, i32* @hello, align 4
  %15 = call i32 @strlen(i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32* @apr_bucket_immortal_create(i32 %13, i32 %15, i32* %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @APR_BRIGADE_INSERT_HEAD(i32* %18, i32* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @apr_brigade_partition(i32* %22, i32 5, i32** %7)
  %24 = call i32 @apr_assert_success(i32* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @APR_BRIGADE_FIRST(i32* %26)
  %28 = call i32 @test_bucket_content(i32* %25, i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @APR_BRIGADE_LAST(i32* %30)
  %32 = call i32 @test_bucket_content(i32* %29, i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @apr_brigade_partition(i32* %34, i32 8192, i32** %7)
  %36 = call i32 @ABTS_ASSERT(i32* %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i32* @APR_BRIGADE_SENTINEL(i32* %39)
  %41 = icmp eq i32* %38, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ABTS_ASSERT(i32* %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @apr_brigade_destroy(i32* %44)
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @apr_bucket_alloc_destroy(i32* %46)
  ret void
}

declare dso_local i32* @apr_bucket_alloc_create(i32) #1

declare dso_local i32* @apr_brigade_create(i32, i32*) #1

declare dso_local i32* @apr_bucket_immortal_create(i32, i32, i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @APR_BRIGADE_INSERT_HEAD(i32*, i32*) #1

declare dso_local i32 @apr_assert_success(i32*, i8*, i32) #1

declare dso_local i32 @apr_brigade_partition(i32*, i32, i32**) #1

declare dso_local i32 @test_bucket_content(i32*, i32, i8*, i32) #1

declare dso_local i32 @APR_BRIGADE_FIRST(i32*) #1

declare dso_local i32 @APR_BRIGADE_LAST(i32*) #1

declare dso_local i32 @ABTS_ASSERT(i32*, i8*, i32) #1

declare dso_local i32* @APR_BRIGADE_SENTINEL(i32*) #1

declare dso_local i32 @apr_brigade_destroy(i32*) #1

declare dso_local i32 @apr_bucket_alloc_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
