; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_test_simple.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_test_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"first bucket of empty brigade is sentinel\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"first bucket of brigade is flush\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"bucket after flush is sentinel\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"aaa\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"bucket before flush now transient\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"bucket after transient is flush\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"bucket before transient is sentinel\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"cleaned up brigade was empty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_simple(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @p, align 4
  %10 = call i32* @apr_bucket_alloc_create(i32 %9)
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* @p, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @apr_brigade_create(i32 %11, i32* %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32* @APR_BRIGADE_FIRST(i32* %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @APR_BRIGADE_SENTINEL(i32* %18)
  %20 = icmp eq i32* %17, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ABTS_ASSERT(i32* %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @apr_bucket_flush_create(i32* %23)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @APR_BRIGADE_INSERT_HEAD(i32* %25, i32* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32* @APR_BRIGADE_FIRST(i32* %29)
  %31 = load i32*, i32** %7, align 8
  %32 = icmp eq i32* %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @ABTS_ASSERT(i32* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32* @APR_BUCKET_NEXT(i32* %36)
  %38 = load i32*, i32** %6, align 8
  %39 = call i32* @APR_BRIGADE_SENTINEL(i32* %38)
  %40 = icmp eq i32* %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @ABTS_ASSERT(i32* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32* @apr_bucket_transient_create(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3, i32* %43)
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @APR_BUCKET_INSERT_BEFORE(i32* %45, i32* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32* @APR_BUCKET_PREV(i32* %49)
  %51 = load i32*, i32** %8, align 8
  %52 = icmp eq i32* %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @ABTS_ASSERT(i32* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32* @APR_BUCKET_NEXT(i32* %56)
  %58 = load i32*, i32** %7, align 8
  %59 = icmp eq i32* %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ABTS_ASSERT(i32* %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i32* @APR_BUCKET_PREV(i32* %63)
  %65 = load i32*, i32** %6, align 8
  %66 = call i32* @APR_BRIGADE_SENTINEL(i32* %65)
  %67 = icmp eq i32* %64, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @ABTS_ASSERT(i32* %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @apr_brigade_cleanup(i32* %70)
  %72 = load i32*, i32** %3, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @APR_BRIGADE_EMPTY(i32* %73)
  %75 = call i32 @ABTS_ASSERT(i32* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %74)
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @apr_brigade_destroy(i32* %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @apr_bucket_alloc_destroy(i32* %78)
  ret void
}

declare dso_local i32* @apr_bucket_alloc_create(i32) #1

declare dso_local i32* @apr_brigade_create(i32, i32*) #1

declare dso_local i32* @APR_BRIGADE_FIRST(i32*) #1

declare dso_local i32 @ABTS_ASSERT(i32*, i8*, i32) #1

declare dso_local i32* @APR_BRIGADE_SENTINEL(i32*) #1

declare dso_local i32* @apr_bucket_flush_create(i32*) #1

declare dso_local i32 @APR_BRIGADE_INSERT_HEAD(i32*, i32*) #1

declare dso_local i32* @APR_BUCKET_NEXT(i32*) #1

declare dso_local i32* @apr_bucket_transient_create(i8*, i32, i32*) #1

declare dso_local i32 @APR_BUCKET_INSERT_BEFORE(i32*, i32*) #1

declare dso_local i32* @APR_BUCKET_PREV(i32*) #1

declare dso_local i32 @apr_brigade_cleanup(i32*) #1

declare dso_local i32 @APR_BRIGADE_EMPTY(i32*) #1

declare dso_local i32 @apr_brigade_destroy(i32*) #1

declare dso_local i32 @apr_bucket_alloc_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
