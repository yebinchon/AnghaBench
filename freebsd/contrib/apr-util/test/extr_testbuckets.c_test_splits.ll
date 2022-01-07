; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_test_splits.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_test_splits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"alphabeta\00", align 1
@free = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"four buckets inserted\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"reached end of brigade\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"split bucket OK\00", align 1
@APR_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"split OK\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"four buckets split into eight\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"read alpha from bucket\00", align 1
@APR_BLOCK_READ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"read 5 bytes\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"read beta from bucket\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"read 4 bytes\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"beta\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"eight buckets reduced to four\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"flatten beta brigade\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"betabetabetabeta\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_splits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_splits(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i32, i32* @p, align 4
  %14 = call i32* @apr_bucket_alloc_create(i32 %13)
  store i32* %14, i32** %5, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %15 = load i32, i32* @p, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32* @apr_brigade_create(i32 %15, i32* %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @apr_bucket_immortal_create(i8* %19, i32 9, i32* %20)
  %22 = call i32 @APR_BRIGADE_INSERT_TAIL(i32* %18, i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @apr_bucket_transient_create(i8* %24, i32 9, i32* %25)
  %27 = call i32 @APR_BRIGADE_INSERT_TAIL(i32* %23, i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @strdup(i8* %29)
  %31 = load i32, i32* @free, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @apr_bucket_heap_create(i32 %30, i32 9, i32 %31, i32* %32)
  %34 = call i32 @APR_BRIGADE_INSERT_TAIL(i32* %28, i32 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @p, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @apr_pstrdup(i32 %36, i8* %37)
  %39 = load i32, i32* @p, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @apr_bucket_pool_create(i32 %38, i32 9, i32 %39, i32* %40)
  %42 = call i32 @APR_BRIGADE_INSERT_TAIL(i32* %35, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @count_buckets(i32* %44)
  %46 = icmp eq i32 %45, 4
  %47 = zext i1 %46 to i32
  %48 = call i32 @ABTS_ASSERT(i32* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 0, i32* %9, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = call i32* @APR_BRIGADE_FIRST(i32* %49)
  store i32* %50, i32** %7, align 8
  br label %51

51:                                               ; preds = %80, %2
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %83

54:                                               ; preds = %51
  %55 = load i32*, i32** %3, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32* @APR_BRIGADE_SENTINEL(i32* %57)
  %59 = icmp ne i32* %56, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ABTS_ASSERT(i32* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i64 @apr_bucket_split(i32* %63, i32 5)
  %65 = load i64, i64* @APR_SUCCESS, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @ABTS_ASSERT(i32* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %7, align 8
  %70 = call i32* @APR_BUCKET_NEXT(i32* %69)
  store i32* %70, i32** %7, align 8
  %71 = load i32*, i32** %3, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = call i32* @APR_BRIGADE_SENTINEL(i32* %73)
  %75 = icmp ne i32* %72, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @ABTS_ASSERT(i32* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %7, align 8
  %79 = call i32* @APR_BUCKET_NEXT(i32* %78)
  store i32* %79, i32** %7, align 8
  br label %80

80:                                               ; preds = %54
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %51

83:                                               ; preds = %51
  %84 = load i32*, i32** %3, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @count_buckets(i32* %85)
  %87 = icmp eq i32 %86, 8
  %88 = zext i1 %87 to i32
  %89 = call i32 @ABTS_ASSERT(i32* %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  store i32 0, i32* %9, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = call i32* @APR_BRIGADE_FIRST(i32* %90)
  store i32* %91, i32** %7, align 8
  br label %92

92:                                               ; preds = %126, %83
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %129

95:                                               ; preds = %92
  %96 = load i32*, i32** %3, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* @APR_BLOCK_READ, align 4
  %99 = call i32 @apr_bucket_read(i32* %97, i8** %10, i32* %11, i32 %98)
  %100 = call i32 @apr_assert_success(i32* %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  %101 = load i32*, i32** %3, align 8
  %102 = load i32, i32* %11, align 4
  %103 = icmp eq i32 %102, 5
  %104 = zext i1 %103 to i32
  %105 = call i32 @ABTS_ASSERT(i32* %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %104)
  %106 = load i32*, i32** %3, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 @ABTS_STR_NEQUAL(i32* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %107, i32 5)
  %109 = load i32*, i32** %7, align 8
  %110 = call i32* @APR_BUCKET_NEXT(i32* %109)
  store i32* %110, i32** %7, align 8
  %111 = load i32*, i32** %3, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* @APR_BLOCK_READ, align 4
  %114 = call i32 @apr_bucket_read(i32* %112, i8** %10, i32* %11, i32 %113)
  %115 = call i32 @apr_assert_success(i32* %111, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %114)
  %116 = load i32*, i32** %3, align 8
  %117 = load i32, i32* %11, align 4
  %118 = icmp eq i32 %117, 4
  %119 = zext i1 %118 to i32
  %120 = call i32 @ABTS_ASSERT(i32* %116, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %119)
  %121 = load i32*, i32** %3, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 @ABTS_STR_NEQUAL(i32* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %122, i32 5)
  %124 = load i32*, i32** %7, align 8
  %125 = call i32* @APR_BUCKET_NEXT(i32* %124)
  store i32* %125, i32** %7, align 8
  br label %126

126:                                              ; preds = %95
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %92

129:                                              ; preds = %92
  store i32 0, i32* %9, align 4
  %130 = load i32*, i32** %6, align 8
  %131 = call i32* @APR_BRIGADE_FIRST(i32* %130)
  store i32* %131, i32** %7, align 8
  br label %132

132:                                              ; preds = %149, %129
  %133 = load i32, i32* %9, align 4
  %134 = icmp slt i32 %133, 4
  br i1 %134, label %135, label %152

135:                                              ; preds = %132
  %136 = load i32*, i32** %3, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = load i32*, i32** %6, align 8
  %139 = call i32* @APR_BRIGADE_SENTINEL(i32* %138)
  %140 = icmp ne i32* %137, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @ABTS_ASSERT(i32* %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  %143 = load i32*, i32** %7, align 8
  %144 = call i32* @APR_BUCKET_NEXT(i32* %143)
  store i32* %144, i32** %12, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @apr_bucket_delete(i32* %145)
  %147 = load i32*, i32** %12, align 8
  %148 = call i32* @APR_BUCKET_NEXT(i32* %147)
  store i32* %148, i32** %7, align 8
  br label %149

149:                                              ; preds = %135
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %132

152:                                              ; preds = %132
  %153 = load i32*, i32** %3, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = call i32 @count_buckets(i32* %154)
  %156 = icmp eq i32 %155, 4
  %157 = zext i1 %156 to i32
  %158 = call i32 @ABTS_ASSERT(i32* %153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %157)
  %159 = load i32*, i32** %3, align 8
  %160 = load i32*, i32** %6, align 8
  %161 = call i32 @flatten_match(i32* %159, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32* %160, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %162 = load i32*, i32** %6, align 8
  %163 = call i32 @apr_brigade_destroy(i32* %162)
  %164 = load i32*, i32** %5, align 8
  %165 = call i32 @apr_bucket_alloc_destroy(i32* %164)
  ret void
}

declare dso_local i32* @apr_bucket_alloc_create(i32) #1

declare dso_local i32* @apr_brigade_create(i32, i32*) #1

declare dso_local i32 @APR_BRIGADE_INSERT_TAIL(i32*, i32) #1

declare dso_local i32 @apr_bucket_immortal_create(i8*, i32, i32*) #1

declare dso_local i32 @apr_bucket_transient_create(i8*, i32, i32*) #1

declare dso_local i32 @apr_bucket_heap_create(i32, i32, i32, i32*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @apr_bucket_pool_create(i32, i32, i32, i32*) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @ABTS_ASSERT(i32*, i8*, i32) #1

declare dso_local i32 @count_buckets(i32*) #1

declare dso_local i32* @APR_BRIGADE_FIRST(i32*) #1

declare dso_local i32* @APR_BRIGADE_SENTINEL(i32*) #1

declare dso_local i64 @apr_bucket_split(i32*, i32) #1

declare dso_local i32* @APR_BUCKET_NEXT(i32*) #1

declare dso_local i32 @apr_assert_success(i32*, i8*, i32) #1

declare dso_local i32 @apr_bucket_read(i32*, i8**, i32*, i32) #1

declare dso_local i32 @ABTS_STR_NEQUAL(i32*, i8*, i8*, i32) #1

declare dso_local i32 @apr_bucket_delete(i32*) #1

declare dso_local i32 @flatten_match(i32*, i8*, i32*, i8*) #1

declare dso_local i32 @apr_brigade_destroy(i32*) #1

declare dso_local i32 @apr_bucket_alloc_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
