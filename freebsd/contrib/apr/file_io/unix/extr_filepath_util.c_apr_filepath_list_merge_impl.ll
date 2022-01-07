; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/file_io/unix/extr_filepath_util.c_apr_filepath_list_merge_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/file_io/unix/extr_filepath_util.c_apr_filepath_list_merge_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }

@APR_EINVAL = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apr_filepath_list_merge_impl(i8** %0, %struct.TYPE_3__* %1, i8 signext %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8** %0, i8*** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %10, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @APR_EINVAL, align 4
  store i32 %21, i32* %5, align 4
  br label %106

22:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %41, %22
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8**
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = load i64, i64* %10, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %10, align 8
  br label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  br label %23

44:                                               ; preds = %23
  %45 = load i64, i64* %10, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i8**, i8*** %6, align 8
  store i8* null, i8** %48, align 8
  %49 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %49, i32* %5, align 4
  br label %106

50:                                               ; preds = %44
  %51 = load i32, i32* %12, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* %12, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %10, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %53, %50
  %60 = load i32*, i32** %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = add nsw i64 %61, 1
  %63 = call i8* @apr_palloc(i32* %60, i64 %62)
  %64 = load i8**, i8*** %6, align 8
  store i8* %63, i8** %64, align 8
  store i8* %63, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %100, %59
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %103

71:                                               ; preds = %65
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8**
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %13, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = call i64 @strlen(i8* %80)
  store i64 %81, i64* %14, align 8
  %82 = load i64, i64* %14, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %100

85:                                               ; preds = %71
  %86 = load i32, i32* %12, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i8, i8* %8, align 1
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %11, align 8
  store i8 %89, i8* %90, align 1
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i8*, i8** %11, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = load i64, i64* %14, align 8
  %96 = call i32 @memcpy(i8* %93, i8* %94, i64 %95)
  %97 = load i64, i64* %14, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 %97
  store i8* %99, i8** %11, align 8
  br label %100

100:                                              ; preds = %92, %84
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %65

103:                                              ; preds = %65
  %104 = load i8*, i8** %11, align 8
  store i8 0, i8* %104, align 1
  %105 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %103, %47, %20
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @apr_palloc(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
