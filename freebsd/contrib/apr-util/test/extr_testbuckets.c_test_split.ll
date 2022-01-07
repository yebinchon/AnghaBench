; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_test_split.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_test_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"hello, \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"split brigade contains one bucket\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"original brigade contains one bucket\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"match original brigade\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"match split brigade\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_split(i32* %0, i8* %1) #0 {
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
  %11 = load i32*, i32** %5, align 8
  %12 = call i32* @make_simple_brigade(i32* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32* @APR_BRIGADE_LAST(i32* %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32* @apr_brigade_split(i32* %15, i32* %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @count_buckets(i32* %19)
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = call i32 @ABTS_ASSERT(i32* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @count_buckets(i32* %25)
  %27 = icmp eq i32 %26, 1
  %28 = zext i1 %27 to i32
  %29 = call i32 @ABTS_ASSERT(i32* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @flatten_match(i32* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @flatten_match(i32* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @apr_brigade_destroy(i32* %36)
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @apr_brigade_destroy(i32* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @apr_bucket_alloc_destroy(i32* %40)
  ret void
}

declare dso_local i32* @apr_bucket_alloc_create(i32) #1

declare dso_local i32* @make_simple_brigade(i32*, i8*, i8*) #1

declare dso_local i32* @APR_BRIGADE_LAST(i32*) #1

declare dso_local i32* @apr_brigade_split(i32*, i32*) #1

declare dso_local i32 @ABTS_ASSERT(i32*, i8*, i32) #1

declare dso_local i32 @count_buckets(i32*) #1

declare dso_local i32 @flatten_match(i32*, i8*, i32*, i8*) #1

declare dso_local i32 @apr_brigade_destroy(i32*) #1

declare dso_local i32 @apr_bucket_alloc_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
