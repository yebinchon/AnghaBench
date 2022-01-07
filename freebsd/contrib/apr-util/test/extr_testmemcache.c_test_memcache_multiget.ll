; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmemcache.c_test_memcache_multiget.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testmemcache.c_test_memcache_multiget.c"
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
@TDATA_SET = common dso_local global i64 0, align 8
@prefix = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"multgetp failed\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"multgetp returned too few results\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"delete failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_memcache_multiget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_memcache_multiget(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %19 = load i32*, i32** @p, align 8
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @apr_memcache_create(i32* %20, i32 1, i32 0, i32** %8)
  store i64 %21, i64* %7, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @APR_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ABTS_ASSERT(i32* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @HOST, align 4
  %30 = load i32, i32* @PORT, align 4
  %31 = call i64 @apr_memcache_server_create(i32* %28, i32 %29, i32 %30, i32 0, i32 1, i32 1, i32 60, i32** %9)
  store i64 %31, i64* %7, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @APR_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @ABTS_ASSERT(i32* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @apr_memcache_add_server(i32* %38, i32* %39)
  store i64 %40, i64* %7, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @APR_SUCCESS, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @ABTS_ASSERT(i32* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** @p, align 8
  %48 = call i32* @apr_hash_make(i32* %47)
  store i32* %48, i32** %11, align 8
  %49 = load i32*, i32** @p, align 8
  %50 = call i32* @apr_hash_make(i32* %49)
  store i32* %50, i32** %10, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @create_test_hash(i32* %51, i32* %52)
  %54 = load i32*, i32** @p, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32* @apr_hash_first(i32* %54, i32* %55)
  store i32* %56, i32** %12, align 8
  br label %57

57:                                               ; preds = %76, %2
  %58 = load i32*, i32** %12, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %79

60:                                               ; preds = %57
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @apr_hash_this(i32* %61, i8** %14, i32* null, i8** %15)
  %63 = load i8*, i8** %14, align 8
  store i8* %63, i8** %16, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = call i64 @apr_memcache_set(i32* %64, i8* %65, i8* %66, i32 %68, i32 0, i32 27)
  store i64 %69, i64* %7, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @APR_SUCCESS, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @ABTS_ASSERT(i32* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %60
  %77 = load i32*, i32** %12, align 8
  %78 = call i32* @apr_hash_next(i32* %77)
  store i32* %78, i32** %12, align 8
  br label %57

79:                                               ; preds = %57
  %80 = load i32*, i32** %5, align 8
  %81 = call i64 @apr_pool_create(i32** %6, i32* %80)
  store i64 %81, i64* %7, align 8
  store i64 0, i64* %13, align 8
  br label %82

82:                                               ; preds = %95, %79
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* @TDATA_SET, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = load i32*, i32** %5, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* @prefix, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = load i64, i64* %13, align 8
  %92 = call i32 @apr_itoa(i32* %90, i64 %91)
  %93 = call i32 @apr_pstrcat(i32* %88, i32 %89, i32 %92, i32* null)
  %94 = call i32 @apr_memcache_add_multget_key(i32* %87, i32 %93, i32** %11)
  br label %95

95:                                               ; preds = %86
  %96 = load i64, i64* %13, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %13, align 8
  br label %82

98:                                               ; preds = %82
  %99 = load i32*, i32** %8, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = call i64 @apr_memcache_multgetp(i32* %99, i32* %100, i32* %101, i32* %102)
  store i64 %103, i64* %7, align 8
  %104 = load i32*, i32** %3, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* @APR_SUCCESS, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @ABTS_ASSERT(i32* %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  %110 = load i32*, i32** %3, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = call i64 @apr_hash_count(i32* %111)
  %113 = load i64, i64* @TDATA_SET, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @ABTS_ASSERT(i32* %110, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  %117 = load i32*, i32** @p, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = call i32* @apr_hash_first(i32* %117, i32* %118)
  store i32* %119, i32** %12, align 8
  br label %120

120:                                              ; preds = %136, %98
  %121 = load i32*, i32** %12, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %139

123:                                              ; preds = %120
  %124 = load i32*, i32** %12, align 8
  %125 = call i32 @apr_hash_this(i32* %124, i8** %17, i32* null, i8** null)
  %126 = load i8*, i8** %17, align 8
  store i8* %126, i8** %18, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = load i8*, i8** %18, align 8
  %129 = call i64 @apr_memcache_delete(i32* %127, i8* %128, i32 0)
  store i64 %129, i64* %7, align 8
  %130 = load i32*, i32** %3, align 8
  %131 = load i64, i64* %7, align 8
  %132 = load i64, i64* @APR_SUCCESS, align 8
  %133 = icmp eq i64 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @ABTS_ASSERT(i32* %130, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %123
  %137 = load i32*, i32** %12, align 8
  %138 = call i32* @apr_hash_next(i32* %137)
  store i32* %138, i32** %12, align 8
  br label %120

139:                                              ; preds = %120
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

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i64 @apr_pool_create(i32**, i32*) #1

declare dso_local i32 @apr_memcache_add_multget_key(i32*, i32, i32**) #1

declare dso_local i32 @apr_pstrcat(i32*, i32, i32, i32*) #1

declare dso_local i32 @apr_itoa(i32*, i64) #1

declare dso_local i64 @apr_memcache_multgetp(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i64 @apr_memcache_delete(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
