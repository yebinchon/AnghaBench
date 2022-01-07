; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmemcache.c_test_memcache_addreplace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmemcache.c_test_memcache_addreplace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"memcache create failed\00", align 1
@APR_SUCCESS = common dso_local global i64 0, align 8
@HOST = common dso_local global i32 0, align 4
@PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"server create failed\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"server add failed\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"replace should have failed\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"add failed\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"replace failed\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"get failed\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"add should have failed\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"delete failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_memcache_addreplace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_memcache_addreplace(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load i32*, i32** @p, align 8
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @apr_memcache_create(i32* %17, i32 1, i32 0, i32** %7)
  store i64 %18, i64* %6, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @APR_SUCCESS, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @ABTS_ASSERT(i32* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @HOST, align 4
  %27 = load i32, i32* @PORT, align 4
  %28 = call i64 @apr_memcache_server_create(i32* %25, i32 %26, i32 %27, i32 0, i32 1, i32 1, i32 60, i32** %8)
  store i64 %28, i64* %6, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @APR_SUCCESS, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @ABTS_ASSERT(i32* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i64 @apr_memcache_add_server(i32* %35, i32* %36)
  store i64 %37, i64* %6, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @APR_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ABTS_ASSERT(i32* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** @p, align 8
  %45 = call i32* @apr_hash_make(i32* %44)
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @create_test_hash(i32* %46, i32* %47)
  %49 = load i32*, i32** @p, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32* @apr_hash_first(i32* %49, i32* %50)
  store i32* %51, i32** %10, align 8
  br label %52

52:                                               ; preds = %128, %2
  %53 = load i32*, i32** %10, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %131

55:                                               ; preds = %52
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @apr_hash_this(i32* %56, i8** %13, i32* null, i8** %14)
  %58 = load i8*, i8** %13, align 8
  store i8* %58, i8** %15, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = call i64 @strlen(i8* %62)
  %64 = sub nsw i64 %63, 1
  %65 = trunc i64 %64 to i32
  %66 = call i64 @apr_memcache_replace(i32* %59, i8* %60, i8* %61, i32 %65, i32 0, i32 27)
  store i64 %66, i64* %6, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @APR_SUCCESS, align 8
  %70 = icmp ne i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @ABTS_ASSERT(i32* %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = load i8*, i8** %15, align 8
  %75 = load i8*, i8** %14, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = call i64 @strlen(i8* %76)
  %78 = call i64 @apr_memcache_add(i32* %73, i8* %74, i8* %75, i64 %77, i32 0, i32 27)
  store i64 %78, i64* %6, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @APR_SUCCESS, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @ABTS_ASSERT(i32* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = load i32*, i32** %7, align 8
  %86 = load i8*, i8** %15, align 8
  %87 = call i64 @apr_memcache_replace(i32* %85, i8* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3, i32 0, i32 27)
  store i64 %87, i64* %6, align 8
  %88 = load i32*, i32** %3, align 8
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @APR_SUCCESS, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @ABTS_ASSERT(i32* %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %92)
  %94 = load i32*, i32** %7, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = load i8*, i8** %15, align 8
  %97 = call i64 @apr_memcache_getp(i32* %94, i32* %95, i8* %96, i8** %11, i32* %12, i32* null)
  store i64 %97, i64* %6, align 8
  %98 = load i32*, i32** %3, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* @APR_SUCCESS, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @ABTS_ASSERT(i32* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %102)
  %104 = load i32*, i32** %3, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 @ABTS_STR_NEQUAL(i32* %104, i8* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %107 = load i32*, i32** %7, align 8
  %108 = load i8*, i8** %15, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = call i64 @strlen(i8* %110)
  %112 = call i64 @apr_memcache_add(i32* %107, i8* %108, i8* %109, i64 %111, i32 0, i32 27)
  store i64 %112, i64* %6, align 8
  %113 = load i32*, i32** %3, align 8
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* @APR_SUCCESS, align 8
  %116 = icmp ne i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @ABTS_ASSERT(i32* %113, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %117)
  %119 = load i32*, i32** %7, align 8
  %120 = load i8*, i8** %15, align 8
  %121 = call i64 @apr_memcache_delete(i32* %119, i8* %120, i32 0)
  store i64 %121, i64* %6, align 8
  %122 = load i32*, i32** %3, align 8
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* @APR_SUCCESS, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @ABTS_ASSERT(i32* %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %55
  %129 = load i32*, i32** %10, align 8
  %130 = call i32* @apr_hash_next(i32* %129)
  store i32* %130, i32** %10, align 8
  br label %52

131:                                              ; preds = %52
  ret void
}

declare dso_local i64 @apr_memcache_create(i32*, i32, i32, i32**) #1

declare dso_local i32 @ABTS_ASSERT(i32*, i8*, i32) #1

declare dso_local i64 @apr_memcache_server_create(i32*, i32, i32, i32, i32, i32, i32, i32**) #1

declare dso_local i64 @apr_memcache_add_server(i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @create_test_hash(i32*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local i64 @apr_memcache_replace(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @apr_memcache_add(i32*, i8*, i8*, i64, i32, i32) #1

declare dso_local i64 @apr_memcache_getp(i32*, i32*, i8*, i8**, i32*, i32*) #1

declare dso_local i32 @ABTS_STR_NEQUAL(i32*, i8*, i8*, i32) #1

declare dso_local i64 @apr_memcache_delete(i32*, i8*, i32) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
