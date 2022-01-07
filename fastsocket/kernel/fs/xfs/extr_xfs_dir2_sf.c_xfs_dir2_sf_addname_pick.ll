; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_sf.c_xfs_dir2_sf_addname_pick.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_sf.c_xfs_dir2_sf_addname_pick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_18__, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }

@XFS_DIR2_DATA_FIRST_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i32, %struct.TYPE_23__**, i32*)* @xfs_dir2_sf_addname_pick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_dir2_sf_addname_pick(%struct.TYPE_24__* %0, i32 %1, %struct.TYPE_23__** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_23__** %2, %struct.TYPE_23__*** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %10, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %13, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %30, %struct.TYPE_22__** %16, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @xfs_dir2_data_entsize(i32 %33)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* @XFS_DIR2_DATA_FIRST_OFFSET, align 4
  store i32 %35, i32* %14, align 4
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %37 = call %struct.TYPE_23__* @xfs_dir2_sf_firstentry(%struct.TYPE_22__* %36)
  store %struct.TYPE_23__* %37, %struct.TYPE_23__** %15, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %67, %4
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %38
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %17, align 4
  %51 = add nsw i32 %49, %50
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %53 = call i32 @xfs_dir2_sf_get_offset(%struct.TYPE_23__* %52)
  %54 = icmp sle i32 %51, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %48, %45
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %58 = call i32 @xfs_dir2_sf_get_offset(%struct.TYPE_23__* %57)
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @xfs_dir2_data_entsize(i32 %61)
  %63 = add nsw i32 %58, %62
  store i32 %63, i32* %14, align 4
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %66 = call %struct.TYPE_23__* @xfs_dir2_sf_nextentry(%struct.TYPE_22__* %64, %struct.TYPE_23__* %65)
  store %struct.TYPE_23__* %66, %struct.TYPE_23__** %15, align 8
  br label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %38

70:                                               ; preds = %38
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 3
  %77 = mul nsw i32 %76, 4
  %78 = add nsw i32 %71, %77
  %79 = add nsw i32 %78, 4
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  br label %86

84:                                               ; preds = %70
  %85 = load i32, i32* %17, align 4
  br label %86

86:                                               ; preds = %84, %83
  %87 = phi i32 [ 0, %83 ], [ %85, %84 ]
  %88 = add nsw i32 %80, %87
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 0, i32* %5, align 4
  br label %112

94:                                               ; preds = %86
  %95 = load i32, i32* %7, align 4
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @ASSERT(i32 %97)
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %99, %100
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp sgt i32 %101, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  store i32 2, i32* %5, align 4
  br label %112

107:                                              ; preds = %94
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %109 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %8, align 8
  store %struct.TYPE_23__* %108, %struct.TYPE_23__** %109, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load i32*, i32** %9, align 8
  store i32 %110, i32* %111, align 4
  store i32 1, i32* %5, align 4
  br label %112

112:                                              ; preds = %107, %106, %93
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @xfs_dir2_data_entsize(i32) #1

declare dso_local %struct.TYPE_23__* @xfs_dir2_sf_firstentry(%struct.TYPE_22__*) #1

declare dso_local i32 @xfs_dir2_sf_get_offset(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @xfs_dir2_sf_nextentry(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
