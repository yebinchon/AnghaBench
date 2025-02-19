; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmemcache.c_test_memcache_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmemcache.c_test_memcache_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"memcache create failed\00", align 1
@APR_SUCCESS = common dso_local global i64 0, align 8
@PORT = common dso_local global i64 0, align 8
@HOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"server create failed\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"server add failed\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"server disable failed\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"server enable failed\00", align 1
@prefix = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"hash failed\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"server add should have failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_memcache_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_memcache_create(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i32*, i32** @p, align 8
  store i32* %14, i32** %5, align 8
  store i64 10, i64* %10, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i64 @apr_memcache_create(i32* %15, i64 %16, i32 0, i32** %7)
  store i64 %17, i64* %6, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @APR_SUCCESS, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @ABTS_ASSERT(i32* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i64 1, i64* %11, align 8
  br label %24

24:                                               ; preds = %95, %2
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %98

28:                                               ; preds = %24
  %29 = load i64, i64* @PORT, align 8
  %30 = load i64, i64* %11, align 8
  %31 = add nsw i64 %29, %30
  store i64 %31, i64* %13, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @HOST, align 4
  %34 = load i64, i64* @PORT, align 8
  %35 = load i64, i64* %11, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i64 @apr_memcache_server_create(i32* %32, i32 %33, i64 %36, i32 0, i32 1, i32 1, i32 60, i32** %8)
  store i64 %37, i64* %6, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @APR_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ABTS_ASSERT(i32* %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i64 @apr_memcache_add_server(i32* %44, i32* %45)
  store i64 %46, i64* %6, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @APR_SUCCESS, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ABTS_ASSERT(i32* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* @HOST, align 4
  %55 = load i64, i64* %13, align 8
  %56 = call i32* @apr_memcache_find_server(i32* %53, i32 %54, i64 %55)
  store i32* %56, i32** %9, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @ABTS_PTR_EQUAL(i32* %57, i32* %58, i32* %59)
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i64 @apr_memcache_disable_server(i32* %61, i32* %62)
  store i64 %63, i64* %6, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @APR_SUCCESS, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @ABTS_ASSERT(i32* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load i32*, i32** %7, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call i64 @apr_memcache_enable_server(i32* %70, i32* %71)
  store i64 %72, i64* %6, align 8
  %73 = load i32*, i32** %3, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @APR_SUCCESS, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @ABTS_ASSERT(i32* %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* @prefix, align 4
  %81 = load i32, i32* @prefix, align 4
  %82 = call i32 @strlen(i32 %81)
  %83 = call i64 @apr_memcache_hash(i32* %79, i32 %80, i32 %82)
  store i64 %83, i64* %12, align 8
  %84 = load i32*, i32** %3, align 8
  %85 = load i64, i64* %12, align 8
  %86 = icmp sgt i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @ABTS_ASSERT(i32* %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %7, align 8
  %90 = load i64, i64* %12, align 8
  %91 = call i32* @apr_memcache_find_server_hash(i32* %89, i64 %90)
  store i32* %91, i32** %9, align 8
  %92 = load i32*, i32** %3, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @ABTS_PTR_NOTNULL(i32* %92, i32* %93)
  br label %95

95:                                               ; preds = %28
  %96 = load i64, i64* %11, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %11, align 8
  br label %24

98:                                               ; preds = %24
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* @HOST, align 4
  %101 = load i64, i64* @PORT, align 8
  %102 = call i64 @apr_memcache_server_create(i32* %99, i32 %100, i64 %101, i32 0, i32 1, i32 1, i32 60, i32** %8)
  store i64 %102, i64* %6, align 8
  %103 = load i32*, i32** %3, align 8
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* @APR_SUCCESS, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @ABTS_ASSERT(i32* %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load i32*, i32** %7, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = call i64 @apr_memcache_add_server(i32* %109, i32* %110)
  store i64 %111, i64* %6, align 8
  %112 = load i32*, i32** %3, align 8
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* @APR_SUCCESS, align 8
  %115 = icmp ne i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @ABTS_ASSERT(i32* %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %116)
  ret void
}

declare dso_local i64 @apr_memcache_create(i32*, i64, i32, i32**) #1

declare dso_local i32 @ABTS_ASSERT(i32*, i8*, i32) #1

declare dso_local i64 @apr_memcache_server_create(i32*, i32, i64, i32, i32, i32, i32, i32**) #1

declare dso_local i64 @apr_memcache_add_server(i32*, i32*) #1

declare dso_local i32* @apr_memcache_find_server(i32*, i32, i64) #1

declare dso_local i32 @ABTS_PTR_EQUAL(i32*, i32*, i32*) #1

declare dso_local i64 @apr_memcache_disable_server(i32*, i32*) #1

declare dso_local i64 @apr_memcache_enable_server(i32*, i32*) #1

declare dso_local i64 @apr_memcache_hash(i32*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32* @apr_memcache_find_server_hash(i32*, i64) #1

declare dso_local i32 @ABTS_PTR_NOTNULL(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
