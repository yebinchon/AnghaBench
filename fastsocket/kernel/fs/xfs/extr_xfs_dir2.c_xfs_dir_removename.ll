; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2.c_xfs_dir_removename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2.c_xfs_dir_removename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.xfs_name*)* }
%struct.xfs_name = type { i32, i32 }
%struct.TYPE_18__ = type { i32*, i32, i32, i32*, i32*, %struct.TYPE_17__*, i32, i32, i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@xs_dir_remove = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir_removename(i32* %0, %struct.TYPE_17__* %1, %struct.xfs_name* %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.xfs_name*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_18__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %10, align 8
  store %struct.xfs_name* %2, %struct.xfs_name** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @S_IFMT, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @S_IFDIR, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load i32, i32* @xs_dir_remove, align 4
  %30 = call i32 @XFS_STATS_INC(i32 %29)
  %31 = call i32 @memset(%struct.TYPE_18__* %16, i32 0, i32 56)
  %32 = load %struct.xfs_name*, %struct.xfs_name** %11, align 8
  %33 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 9
  store i32 %34, i32* %35, align 4
  %36 = load %struct.xfs_name*, %struct.xfs_name** %11, align 8
  %37 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 8
  store i32 %38, i32* %39, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32 (%struct.xfs_name*)*, i32 (%struct.xfs_name*)** %45, align 8
  %47 = load %struct.xfs_name*, %struct.xfs_name** %11, align 8
  %48 = call i32 %46(%struct.xfs_name* %47)
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 7
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %12, align 4
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 6
  store i32 %50, i32* %51, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 5
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %53, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 4
  store i32* %54, i32** %55, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 3
  store i32* %56, i32** %57, align 8
  %58 = load i32, i32* %15, align 4
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 2
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @XFS_DATA_FORK, align 4
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  store i32 %60, i32* %61, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  store i32* %62, i32** %63, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %7
  %71 = call i32 @xfs_dir2_sf_removename(%struct.TYPE_18__* %16)
  store i32 %71, i32* %17, align 4
  br label %102

72:                                               ; preds = %7
  %73 = load i32*, i32** %9, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %75 = call i32 @xfs_dir2_isblock(i32* %73, %struct.TYPE_17__* %74, i32* %18)
  store i32 %75, i32* %17, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %17, align 4
  store i32 %78, i32* %8, align 4
  br label %104

79:                                               ; preds = %72
  %80 = load i32, i32* %18, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 @xfs_dir2_block_removename(%struct.TYPE_18__* %16)
  store i32 %83, i32* %17, align 4
  br label %100

84:                                               ; preds = %79
  %85 = load i32*, i32** %9, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %87 = call i32 @xfs_dir2_isleaf(i32* %85, %struct.TYPE_17__* %86, i32* %18)
  store i32 %87, i32* %17, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %17, align 4
  store i32 %90, i32* %8, align 4
  br label %104

91:                                               ; preds = %84
  %92 = load i32, i32* %18, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i32 @xfs_dir2_leaf_removename(%struct.TYPE_18__* %16)
  store i32 %95, i32* %17, align 4
  br label %98

96:                                               ; preds = %91
  %97 = call i32 @xfs_dir2_node_removename(%struct.TYPE_18__* %16)
  store i32 %97, i32* %17, align 4
  br label %98

98:                                               ; preds = %96, %94
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99, %82
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101, %70
  %103 = load i32, i32* %17, align 4
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %102, %89, %77
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @XFS_STATS_INC(i32) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @xfs_dir2_sf_removename(%struct.TYPE_18__*) #1

declare dso_local i32 @xfs_dir2_isblock(i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @xfs_dir2_block_removename(%struct.TYPE_18__*) #1

declare dso_local i32 @xfs_dir2_isleaf(i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @xfs_dir2_leaf_removename(%struct.TYPE_18__*) #1

declare dso_local i32 @xfs_dir2_node_removename(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
