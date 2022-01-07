; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmemcache.c_test_memcache_incrdecr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmemcache.c_test_memcache_incrdecr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"memcache create failed\00", align 1
@APR_SUCCESS = common dso_local global i64 0, align 8
@HOST = common dso_local global i32 0, align 4
@PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"server create failed\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"server add failed\00", align 1
@prefix = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"271\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"set failed\00", align 1
@TDATA_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"get failed\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"incr failed\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"decr failed\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"delete failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_memcache_incrdecr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_memcache_incrdecr(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i32*, i32** @p, align 8
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @apr_memcache_create(i32* %15, i32 1, i32 0, i32** %7)
  store i64 %16, i64* %6, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @APR_SUCCESS, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ABTS_ASSERT(i32* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @HOST, align 4
  %25 = load i32, i32* @PORT, align 4
  %26 = call i64 @apr_memcache_server_create(i32* %23, i32 %24, i32 %25, i32 0, i32 1, i32 1, i32 60, i32** %8)
  store i64 %26, i64* %6, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @APR_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ABTS_ASSERT(i32* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i64 @apr_memcache_add_server(i32* %33, i32* %34)
  store i64 %35, i64* %6, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @APR_SUCCESS, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @ABTS_ASSERT(i32* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @prefix, align 4
  %44 = call i64 @apr_memcache_set(i32* %42, i32 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3, i32 0, i32 27)
  store i64 %44, i64* %6, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @APR_SUCCESS, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @ABTS_ASSERT(i32* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  store i32 1, i32* %12, align 4
  br label %51

51:                                               ; preds = %99, %2
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @TDATA_SIZE, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %102

55:                                               ; preds = %51
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @prefix, align 4
  %59 = call i64 @apr_memcache_getp(i32* %56, i32* %57, i32 %58, i8** %10, i32* %11, i32* null)
  store i64 %59, i64* %6, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @APR_SUCCESS, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @ABTS_ASSERT(i32* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @atoi(i8* %67)
  %69 = add nsw i32 %66, %68
  store i32 %69, i32* %13, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* @prefix, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i64 @apr_memcache_incr(i32* %70, i32 %71, i32 %72, i32* %9)
  store i64 %73, i64* %6, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @APR_SUCCESS, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @ABTS_ASSERT(i32* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  %80 = load i32*, i32** %3, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @ABTS_INT_EQUAL(i32* %80, i32 %81, i32 %82)
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* @prefix, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i64 @apr_memcache_decr(i32* %84, i32 %85, i32 %86, i32* %9)
  store i64 %87, i64* %6, align 8
  %88 = load i32*, i32** %3, align 8
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @APR_SUCCESS, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @ABTS_ASSERT(i32* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %92)
  %94 = load i32*, i32** %3, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @atoi(i8* %95)
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @ABTS_INT_EQUAL(i32* %94, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %55
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %51

102:                                              ; preds = %51
  %103 = load i32*, i32** %7, align 8
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* @prefix, align 4
  %106 = call i64 @apr_memcache_getp(i32* %103, i32* %104, i32 %105, i8** %10, i32* %11, i32* null)
  store i64 %106, i64* %6, align 8
  %107 = load i32*, i32** %3, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* @APR_SUCCESS, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @ABTS_ASSERT(i32* %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %111)
  %113 = load i32*, i32** %3, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = call i32 @atoi(i8* %114)
  %116 = call i32 @ABTS_INT_EQUAL(i32* %113, i32 271, i32 %115)
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* @prefix, align 4
  %119 = call i64 @apr_memcache_delete(i32* %117, i32 %118, i32 0)
  store i64 %119, i64* %6, align 8
  %120 = load i32*, i32** %3, align 8
  %121 = load i64, i64* %6, align 8
  %122 = load i64, i64* @APR_SUCCESS, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @ABTS_ASSERT(i32* %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %124)
  ret void
}

declare dso_local i64 @apr_memcache_create(i32*, i32, i32, i32**) #1

declare dso_local i32 @ABTS_ASSERT(i32*, i8*, i32) #1

declare dso_local i64 @apr_memcache_server_create(i32*, i32, i32, i32, i32, i32, i32, i32**) #1

declare dso_local i64 @apr_memcache_add_server(i32*, i32*) #1

declare dso_local i64 @apr_memcache_set(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @apr_memcache_getp(i32*, i32*, i32, i8**, i32*, i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @apr_memcache_incr(i32*, i32, i32, i32*) #1

declare dso_local i32 @ABTS_INT_EQUAL(i32*, i32, i32) #1

declare dso_local i64 @apr_memcache_decr(i32*, i32, i32, i32*) #1

declare dso_local i64 @apr_memcache_delete(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
