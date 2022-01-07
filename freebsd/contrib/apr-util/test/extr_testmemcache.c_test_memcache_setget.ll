; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmemcache.c_test_memcache_setget.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmemcache.c_test_memcache_setget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"memcache create failed\00", align 1
@APR_SUCCESS = common dso_local global i64 0, align 8
@HOST = common dso_local global i32 0, align 4
@PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"server create failed\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"server add failed\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"set failed\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"get failed\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"nothere3423\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"get should have failed\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"delete failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_memcache_setget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_memcache_setget(i32* %0, i8* %1) #0 {
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
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %18 = load i32*, i32** @p, align 8
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @apr_memcache_create(i32* %19, i32 1, i32 0, i32** %7)
  store i64 %20, i64* %6, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @APR_SUCCESS, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ABTS_ASSERT(i32* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @HOST, align 4
  %29 = load i32, i32* @PORT, align 4
  %30 = call i64 @apr_memcache_server_create(i32* %27, i32 %28, i32 %29, i32 0, i32 1, i32 1, i32 60, i32** %8)
  store i64 %30, i64* %6, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @APR_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @ABTS_ASSERT(i32* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @apr_memcache_add_server(i32* %37, i32* %38)
  store i64 %39, i64* %6, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @APR_SUCCESS, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ABTS_ASSERT(i32* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = call i32* @apr_hash_make(i32* %46)
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @create_test_hash(i32* %48, i32* %49)
  %51 = load i32*, i32** @p, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32* @apr_hash_first(i32* %51, i32* %52)
  store i32* %53, i32** %10, align 8
  br label %54

54:                                               ; preds = %83, %2
  %55 = load i32*, i32** %10, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %86

57:                                               ; preds = %54
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @apr_hash_this(i32* %58, i8** %13, i32* null, i8** %14)
  %60 = load i8*, i8** %13, align 8
  store i8* %60, i8** %15, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = call i64 @apr_memcache_set(i32* %61, i8* %62, i8* %63, i32 %65, i32 0, i32 27)
  store i64 %66, i64* %6, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @APR_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @ABTS_ASSERT(i32* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = call i64 @apr_memcache_getp(i32* %73, i32* %74, i8* %75, i8** %11, i32* %12, i32* null)
  store i64 %76, i64* %6, align 8
  %77 = load i32*, i32** %3, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @APR_SUCCESS, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @ABTS_ASSERT(i32* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %57
  %84 = load i32*, i32** %10, align 8
  %85 = call i32* @apr_hash_next(i32* %84)
  store i32* %85, i32** %10, align 8
  br label %54

86:                                               ; preds = %54
  %87 = load i32*, i32** %7, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = call i64 @apr_memcache_getp(i32* %87, i32* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %11, i32* %12, i32* null)
  store i64 %89, i64* %6, align 8
  %90 = load i32*, i32** %3, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* @APR_SUCCESS, align 8
  %93 = icmp ne i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @ABTS_ASSERT(i32* %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  %96 = load i32*, i32** @p, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = call i32* @apr_hash_first(i32* %96, i32* %97)
  store i32* %98, i32** %10, align 8
  br label %99

99:                                               ; preds = %115, %86
  %100 = load i32*, i32** %10, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %118

102:                                              ; preds = %99
  %103 = load i32*, i32** %10, align 8
  %104 = call i32 @apr_hash_this(i32* %103, i8** %16, i32* null, i8** null)
  %105 = load i8*, i8** %16, align 8
  store i8* %105, i8** %17, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = load i8*, i8** %17, align 8
  %108 = call i64 @apr_memcache_delete(i32* %106, i8* %107, i32 0)
  store i64 %108, i64* %6, align 8
  %109 = load i32*, i32** %3, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* @APR_SUCCESS, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @ABTS_ASSERT(i32* %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %102
  %116 = load i32*, i32** %10, align 8
  %117 = call i32* @apr_hash_next(i32* %116)
  store i32* %117, i32** %10, align 8
  br label %99

118:                                              ; preds = %99
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

declare dso_local i64 @apr_memcache_set(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @apr_memcache_getp(i32*, i32*, i8*, i8**, i32*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i64 @apr_memcache_delete(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
