; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_test_truncfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_test_truncfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"testfile.txt\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"single bucket in brigade\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"read gave APR_EOF\00", align 1
@APR_BLOCK_READ = common dso_local global i32 0, align 4
@APR_EOF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"read length 0\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"still a single bucket in brigade\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_truncfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_truncfile(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @p, align 4
  %12 = call i32* @apr_bucket_alloc_create(i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* @p, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @apr_brigade_create(i32 %13, i32* %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32* @make_test_file(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* @p, align 4
  %21 = call i32 @apr_brigade_insert_file(i32* %18, i32* %19, i32 0, i32 5, i32 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @apr_file_trunc(i32* %22, i32 0)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32* @APR_BRIGADE_FIRST(i32* %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @APR_BUCKET_NEXT(i32* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @APR_BRIGADE_SENTINEL(i32* %29)
  %31 = icmp eq i64 %28, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @ABTS_ASSERT(i32* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @apr_bucket_file_enable_mmap(i32* %34, i32 0)
  %36 = load i32*, i32** %3, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* @APR_BLOCK_READ, align 4
  %39 = call i64 @apr_bucket_read(i32* %37, i8** %9, i64* %10, i32 %38)
  %40 = load i64, i64* @APR_EOF, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ABTS_ASSERT(i32* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @ABTS_ASSERT(i32* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i64 @APR_BUCKET_NEXT(i32* %50)
  %52 = load i32*, i32** %6, align 8
  %53 = call i64 @APR_BRIGADE_SENTINEL(i32* %52)
  %54 = icmp eq i64 %51, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @ABTS_ASSERT(i32* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @apr_file_close(i32* %57)
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @apr_brigade_destroy(i32* %59)
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @apr_bucket_alloc_destroy(i32* %61)
  ret void
}

declare dso_local i32* @apr_bucket_alloc_create(i32) #1

declare dso_local i32* @apr_brigade_create(i32, i32*) #1

declare dso_local i32* @make_test_file(i32*, i8*, i8*) #1

declare dso_local i32 @apr_brigade_insert_file(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @apr_file_trunc(i32*, i32) #1

declare dso_local i32* @APR_BRIGADE_FIRST(i32*) #1

declare dso_local i32 @ABTS_ASSERT(i32*, i8*, i32) #1

declare dso_local i64 @APR_BUCKET_NEXT(i32*) #1

declare dso_local i64 @APR_BRIGADE_SENTINEL(i32*) #1

declare dso_local i32 @apr_bucket_file_enable_mmap(i32*, i32) #1

declare dso_local i64 @apr_bucket_read(i32*, i8**, i64*, i32) #1

declare dso_local i32 @apr_file_close(i32*) #1

declare dso_local i32 @apr_brigade_destroy(i32*) #1

declare dso_local i32 @apr_bucket_alloc_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
