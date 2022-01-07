; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_get_history.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_get_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HIS_BUF_LEN_DEF = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@HIS_BUF_LEN_MAX = common dso_local global i64 0, align 8
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_HIST_RECORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_get_history(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %15 = load i64, i64* @HIS_BUF_LEN_DEF, align 8
  store i64 %15, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32** null, i32*** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i64, i64* %7, align 8
  %17 = call i8* @malloc(i64 %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  store i32 %21, i32* %3, align 4
  br label %105

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %63, %22
  %24 = load i64, i64* %7, align 8
  store i64 %24, i64* %13, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @get_history(i32* %25, i8* %26, i64* %8, i64* %13)
  store i32 %27, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %64

30:                                               ; preds = %23
  %31 = load i64, i64* %13, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %64

34:                                               ; preds = %30
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @zpool_history_unpack(i8* %35, i64 %36, i64* %14, i32*** %9, i32* %10)
  store i32 %37, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %64

40:                                               ; preds = %34
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* %8, align 8
  %43 = sub nsw i64 %42, %41
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = load i64, i64* %7, align 8
  %49 = mul nsw i64 %48, 2
  store i64 %49, i64* %7, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @free(i8* %50)
  store i8* null, i8** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @HIS_BUF_LEN_MAX, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %47
  %56 = load i64, i64* %7, align 8
  %57 = call i8* @malloc(i64 %56)
  store i8* %57, i8** %6, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %47
  %60 = load i32, i32* @ENOMEM, align 4
  store i32 %60, i32* %11, align 4
  br label %64

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %40
  br label %63

63:                                               ; preds = %62
  br i1 true, label %23, label %64

64:                                               ; preds = %63, %59, %39, %33, %29
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %64
  %70 = load i32**, i32*** %5, align 8
  %71 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %72 = call i64 @nvlist_alloc(i32** %70, i32 %71, i32 0)
  %73 = icmp eq i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @verify(i32 %74)
  %76 = load i32**, i32*** %5, align 8
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @ZPOOL_HIST_RECORD, align 4
  %79 = load i32**, i32*** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i64 @nvlist_add_nvlist_array(i32* %77, i32 %78, i32** %79, i32 %80)
  %82 = icmp eq i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @verify(i32 %83)
  br label %85

85:                                               ; preds = %69, %64
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %97, %85
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load i32**, i32*** %9, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @nvlist_free(i32* %95)
  br label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %86

100:                                              ; preds = %86
  %101 = load i32**, i32*** %9, align 8
  %102 = bitcast i32** %101 to i8*
  %103 = call i32 @free(i8* %102)
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %100, %20
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @get_history(i32*, i8*, i64*, i64*) #1

declare dso_local i32 @zpool_history_unpack(i8*, i64, i64*, i32***, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i32, i32**, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
