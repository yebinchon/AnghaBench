; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_bmap.c_xfs_bmapi_single.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_bmap.c_xfs_bmapi_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_13__ = type { i32 }

@XFS_DINODE_FMT_BTREE = common dso_local global i64 0, align 8
@XFS_DINODE_FMT_EXTENTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"xfs_bmapi_single\00", align 1
@XFS_ERRLEVEL_LOW = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@xs_blk_mapr = common dso_local global i32 0, align 4
@XFS_IFEXTENTS = common dso_local global i32 0, align 4
@NULLFSBLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_bmapi_single(i32* %0, %struct.TYPE_12__* %1, i32 %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_14__, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.TYPE_13__* @XFS_IFORK_PTR(%struct.TYPE_12__* %18, i32 %19)
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %15, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @XFS_IFORK_FORMAT(%struct.TYPE_12__* %21, i32 %22)
  %24 = load i64, i64* @XFS_DINODE_FMT_BTREE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @XFS_IFORK_FORMAT(%struct.TYPE_12__* %27, i32 %28)
  %30 = load i64, i64* @XFS_DINODE_FMT_EXTENTS, align 8
  %31 = icmp ne i64 %29, %30
  br label %32

32:                                               ; preds = %26, %5
  %33 = phi i1 [ false, %5 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i32, i32* @XFS_ERRLEVEL_LOW, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @XFS_ERROR_REPORT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load i32, i32* @EFSCORRUPTED, align 4
  %44 = call i32 @XFS_ERROR(i32 %43)
  store i32 %44, i32* %6, align 4
  br label %111

45:                                               ; preds = %32
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @XFS_FORCED_SHUTDOWN(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EIO, align 4
  %53 = call i32 @XFS_ERROR(i32 %52)
  store i32 %53, i32* %6, align 4
  br label %111

54:                                               ; preds = %45
  %55 = load i32, i32* @xs_blk_mapr, align 4
  %56 = call i32 @XFS_STATS_INC(i32 %55)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @XFS_IFEXTENTS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %54
  %64 = load i32*, i32** %7, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @xfs_iread_extents(i32* %64, %struct.TYPE_12__* %65, i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %6, align 4
  br label %111

71:                                               ; preds = %63, %54
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @xfs_bmap_search_extents(%struct.TYPE_12__* %72, i64 %73, i32 %74, i32* %12, i32* %16, %struct.TYPE_14__* %14, %struct.TYPE_14__* %17)
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %11, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78, %71
  %84 = load i64, i64* @NULLFSBLOCK, align 8
  %85 = load i64*, i64** %10, align 8
  store i64 %84, i64* %85, align 8
  store i32 0, i32* %6, align 4
  br label %111

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @isnullstartblock(i64 %88)
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @ASSERT(i32 %92)
  %94 = load i64, i64* %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %96, %98
  %100 = icmp slt i64 %94, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @ASSERT(i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %105, %107
  %109 = add nsw i64 %104, %108
  %110 = load i64*, i64** %10, align 8
  store i64 %109, i64* %110, align 8
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %86, %83, %69, %51, %37
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local %struct.TYPE_13__* @XFS_IFORK_PTR(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @XFS_IFORK_FORMAT(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @XFS_ERROR_REPORT(i8*, i32, i32) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(i32) #1

declare dso_local i32 @XFS_STATS_INC(i32) #1

declare dso_local i32 @xfs_iread_extents(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @xfs_bmap_search_extents(%struct.TYPE_12__*, i64, i32, i32*, i32*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @isnullstartblock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
