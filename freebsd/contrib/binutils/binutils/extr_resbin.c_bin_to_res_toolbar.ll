; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_bin_to_res_toolbar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_bin_to_res_toolbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i8*, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 }

@RES_TYPE_TOOLBAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, i32*, i32)* @bin_to_res_toolbar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @bin_to_res_toolbar(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = call i64 @res_alloc(i32 32)
  %13 = inttoptr i64 %12 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i8* @windres_get_32(i32* %14, i32* %15, i32 4)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = call i8* @windres_get_32(i32* %19, i32* %21, i32 4)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 8
  %28 = call i8* @windres_get_32(i32* %25, i32* %27, i32 4)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %33, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 12
  store i32* %35, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, 12
  store i32 %37, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %95, %3
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %98

44:                                               ; preds = %38
  %45 = call i64 @res_alloc(i32 32)
  %46 = inttoptr i64 %45 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %10, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i8* @windres_get_32(i32* %50, i32* %51, i32 4)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %61, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  store i32* %63, i32** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 %64, 4
  store i32 %65, i32* %6, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = icmp ne %struct.TYPE_11__* %68, null
  br i1 %69, label %70, label %90

70:                                               ; preds = %44
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %11, align 8
  br label %74

74:                                               ; preds = %79, %70
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = icmp ne %struct.TYPE_11__* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  store %struct.TYPE_11__* %82, %struct.TYPE_11__** %11, align 8
  br label %74

83:                                               ; preds = %74
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  store %struct.TYPE_11__* %84, %struct.TYPE_11__** %86, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store %struct.TYPE_11__* %87, %struct.TYPE_11__** %89, align 8
  br label %94

90:                                               ; preds = %44
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %93, align 8
  br label %94

94:                                               ; preds = %90, %83
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %38

98:                                               ; preds = %38
  %99 = call i64 @res_alloc(i32 16)
  %100 = inttoptr i64 %99 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %100, %struct.TYPE_13__** %8, align 8
  %101 = load i32, i32* @RES_TYPE_TOOLBAR, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store %struct.TYPE_12__* %104, %struct.TYPE_12__** %107, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  ret %struct.TYPE_13__* %108
}

declare dso_local i64 @res_alloc(i32) #1

declare dso_local i8* @windres_get_32(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
