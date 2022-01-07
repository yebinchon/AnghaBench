; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/buckets/extr_apr_buckets_file.c_file_bucket_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/buckets/extr_apr_buckets_file.c_file_bucket_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32, i32 (i8*)*, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i32 }

@APR_BUCKET_BUFF_SIZE = common dso_local global i64 0, align 8
@APR_SET = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i64 0, align 8
@APR_EOF = common dso_local global i64 0, align 8
@apr_bucket_type_file = common dso_local global i32 0, align 4
@APR_FOPEN_XTHREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i8**, i64*, i32)* @file_bucket_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @file_bucket_read(%struct.TYPE_11__* %0, i8** %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %10, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %11, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %12, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %15, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %16, align 8
  %29 = load i64, i64* %15, align 8
  %30 = load i64, i64* @APR_BUCKET_BUFF_SIZE, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i64, i64* @APR_BUCKET_BUFF_SIZE, align 8
  br label %36

34:                                               ; preds = %4
  %35 = load i64, i64* %15, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i64 [ %33, %32 ], [ %35, %34 ]
  %38 = load i64*, i64** %8, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i8**, i8*** %7, align 8
  store i8* null, i8** %39, align 8
  %40 = load i64*, i64** %8, align 8
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @apr_bucket_alloc(i32 %42, i32 %45)
  store i8* %46, i8** %13, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* @APR_SET, align 4
  %49 = call i64 @apr_file_seek(i32* %47, i32 %48, i64* %16)
  store i64 %49, i64* %14, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* @APR_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %36
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 @apr_bucket_free(i8* %54)
  %56 = load i64, i64* %14, align 8
  store i64 %56, i64* %5, align 8
  br label %126

57:                                               ; preds = %36
  %58 = load i32*, i32** %11, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i64*, i64** %8, align 8
  %61 = call i64 @apr_file_read(i32* %58, i8* %59, i64* %60)
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* @APR_SUCCESS, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* @APR_EOF, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i8*, i8** %13, align 8
  %71 = call i32 @apr_bucket_free(i8* %70)
  %72 = load i64, i64* %14, align 8
  store i64 %72, i64* %5, align 8
  br label %126

73:                                               ; preds = %65, %57
  %74 = load i64*, i64** %8, align 8
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %15, align 8
  %77 = sub nsw i64 %76, %75
  store i64 %77, i64* %15, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = load i64*, i64** %8, align 8
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @apr_bucket_heap_make(%struct.TYPE_11__* %78, i8* %79, i64 %81, i32 (i8*)* @apr_bucket_free)
  %83 = load i64, i64* %15, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %119

85:                                               ; preds = %73
  %86 = load i64, i64* %14, align 8
  %87 = load i64, i64* @APR_EOF, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %119

89:                                               ; preds = %85
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @apr_bucket_alloc(i32 48, i32 %92)
  %94 = bitcast i8* %93 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %94, %struct.TYPE_11__** %12, align 8
  %95 = load i64, i64* %16, align 8
  %96 = load i64*, i64** %8, align 8
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %95, %97
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load i64, i64* %15, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 5
  store %struct.TYPE_10__* %104, %struct.TYPE_10__** %106, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 4
  store i32* @apr_bucket_type_file, i32** %108, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  store i32 (i8*)* @apr_bucket_free, i32 (i8*)** %110, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %118 = call i32 @APR_BUCKET_INSERT_AFTER(%struct.TYPE_11__* %116, %struct.TYPE_11__* %117)
  br label %122

119:                                              ; preds = %85, %73
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %121 = call i32 @file_bucket_destroy(%struct.TYPE_10__* %120)
  br label %122

122:                                              ; preds = %119, %89
  %123 = load i8*, i8** %13, align 8
  %124 = load i8**, i8*** %7, align 8
  store i8* %123, i8** %124, align 8
  %125 = load i64, i64* %14, align 8
  store i64 %125, i64* %5, align 8
  br label %126

126:                                              ; preds = %122, %69, %53
  %127 = load i64, i64* %5, align 8
  ret i64 %127
}

declare dso_local i8* @apr_bucket_alloc(i32, i32) #1

declare dso_local i64 @apr_file_seek(i32*, i32, i64*) #1

declare dso_local i32 @apr_bucket_free(i8*) #1

declare dso_local i64 @apr_file_read(i32*, i8*, i64*) #1

declare dso_local i32 @apr_bucket_heap_make(%struct.TYPE_11__*, i8*, i64, i32 (i8*)*) #1

declare dso_local i32 @APR_BUCKET_INSERT_AFTER(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @file_bucket_destroy(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
