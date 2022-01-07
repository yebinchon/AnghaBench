; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmemcache.c_test_memcache_user_funcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmemcache.c_test_memcache_user_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@p = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"memcache create failed\00", align 1
@APR_SUCCESS = common dso_local global i64 0, align 8
@my_hash_func = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"whatever\00", align 1
@HASH_FUNC_RESULT = common dso_local global i32 0, align 4
@HOST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"server create failed\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"server add failed\00", align 1
@my_server_func = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"wrong server found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_memcache_user_funcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_memcache_user_funcs(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i32*, i32** @p, align 8
  store i32* %14, i32** %5, align 8
  store i32 10, i32* %9, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call %struct.TYPE_12__* @apr_pcalloc(i32* %15, i32 4)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %12, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @apr_memcache_create(i32* %17, i32 %18, i32 0, %struct.TYPE_13__** %7)
  store i64 %19, i64* %6, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @APR_SUCCESS, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ABTS_ASSERT(i32* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @my_hash_func, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = call i32 @apr_memcache_hash(%struct.TYPE_13__* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  store i32 %30, i32* %10, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @HASH_FUNC_RESULT, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @ABTS_INT_EQUAL(i32* %31, i32 %32, i32 %33)
  store i32 1, i32* %11, align 4
  br label %35

35:                                               ; preds = %58, %2
  %36 = load i32, i32* %11, align 4
  %37 = icmp sle i32 %36, 10
  br i1 %37, label %38, label %61

38:                                               ; preds = %35
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @HOST, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @apr_memcache_server_create(i32* %39, i32 %40, i32 %41, i32 0, i32 1, i32 1, i32 60, %struct.TYPE_14__** %13)
  store i64 %42, i64* %6, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @APR_SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @ABTS_ASSERT(i32* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %51 = call i64 @apr_memcache_add_server(%struct.TYPE_13__* %49, %struct.TYPE_14__* %50)
  store i64 %51, i64* %6, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @APR_SUCCESS, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @ABTS_ASSERT(i32* %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %38
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %35

61:                                               ; preds = %35
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  store i32 3, i32* %63, align 4
  %64 = load i32, i32* @my_server_func, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %69, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %71 = call %struct.TYPE_14__* @apr_memcache_find_server_hash(%struct.TYPE_13__* %70, i32 0)
  store %struct.TYPE_14__* %71, %struct.TYPE_14__** %8, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %75, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @ABTS_ASSERT(i32* %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  ret void
}

declare dso_local %struct.TYPE_12__* @apr_pcalloc(i32*, i32) #1

declare dso_local i64 @apr_memcache_create(i32*, i32, i32, %struct.TYPE_13__**) #1

declare dso_local i32 @ABTS_ASSERT(i32*, i8*, i32) #1

declare dso_local i32 @apr_memcache_hash(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @ABTS_INT_EQUAL(i32*, i32, i32) #1

declare dso_local i64 @apr_memcache_server_create(i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__**) #1

declare dso_local i64 @apr_memcache_add_server(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @apr_memcache_find_server_hash(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
