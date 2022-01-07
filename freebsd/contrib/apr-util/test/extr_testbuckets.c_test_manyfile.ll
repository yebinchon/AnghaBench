; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_test_manyfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_test_manyfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"manyfile.bin\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"worldhellobrave ,\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"file seek test\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"hello, brave world\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_manyfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_manyfile(i32* %0, i8* %1) #0 {
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
  %13 = load i32*, i32** %3, align 8
  %14 = call i32* @make_test_file(i32* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* @p, align 4
  %18 = call i32 @apr_brigade_insert_file(i32* %15, i32* %16, i32 5, i32 5, i32 %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @p, align 4
  %22 = call i32 @apr_brigade_insert_file(i32* %19, i32* %20, i32 16, i32 1, i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @p, align 4
  %26 = call i32 @apr_brigade_insert_file(i32* %23, i32* %24, i32 15, i32 1, i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @p, align 4
  %30 = call i32 @apr_brigade_insert_file(i32* %27, i32* %28, i32 10, i32 5, i32 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @p, align 4
  %34 = call i32 @apr_brigade_insert_file(i32* %31, i32* %32, i32 15, i32 1, i32 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* @p, align 4
  %38 = call i32 @apr_brigade_insert_file(i32* %35, i32* %36, i32 0, i32 5, i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @p, align 4
  %42 = call i32 @apr_brigade_insert_file(i32* %39, i32* %40, i32 17, i32 1, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @flatten_match(i32* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @apr_file_close(i32* %46)
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @apr_brigade_destroy(i32* %48)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @apr_bucket_alloc_destroy(i32* %50)
  ret void
}

declare dso_local i32* @apr_bucket_alloc_create(i32) #1

declare dso_local i32* @apr_brigade_create(i32, i32*) #1

declare dso_local i32* @make_test_file(i32*, i8*, i8*) #1

declare dso_local i32 @apr_brigade_insert_file(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @flatten_match(i32*, i8*, i32*, i8*) #1

declare dso_local i32 @apr_file_close(i32*) #1

declare dso_local i32 @apr_brigade_destroy(i32*) #1

declare dso_local i32 @apr_bucket_alloc_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
