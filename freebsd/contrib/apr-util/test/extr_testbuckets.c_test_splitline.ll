; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_test_splitline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_test_splitline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"blah blah blah-\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"end of line.\0Afoo foo foo\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"split line\00", align 1
@APR_BLOCK_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"blah blah blah-end of line.\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"remainder\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"foo foo foo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_splitline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_splitline(i32* %0, i8* %1) #0 {
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
  %10 = load i32*, i32** %5, align 8
  %11 = call i32* @make_simple_brigade(i32* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32* %11, i32** %6, align 8
  %12 = load i32, i32* @p, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32* @apr_brigade_create(i32 %12, i32* %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @APR_BLOCK_READ, align 4
  %19 = call i32 @apr_brigade_split_line(i32* %16, i32* %17, i32 %18, i32 100)
  %20 = call i32 @apr_assert_success(i32* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @flatten_match(i32* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @flatten_match(i32* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @apr_brigade_destroy(i32* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @apr_brigade_destroy(i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @apr_bucket_alloc_destroy(i32* %31)
  ret void
}

declare dso_local i32* @apr_bucket_alloc_create(i32) #1

declare dso_local i32* @make_simple_brigade(i32*, i8*, i8*) #1

declare dso_local i32* @apr_brigade_create(i32, i32*) #1

declare dso_local i32 @apr_assert_success(i32*, i8*, i32) #1

declare dso_local i32 @apr_brigade_split_line(i32*, i32*, i32, i32) #1

declare dso_local i32 @flatten_match(i32*, i8*, i32*, i8*) #1

declare dso_local i32 @apr_brigade_destroy(i32*) #1

declare dso_local i32 @apr_bucket_alloc_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
