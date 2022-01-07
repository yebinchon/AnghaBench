; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2.c_xfs_dir_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2.c_xfs_dir_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.xfs_name*)* }
%struct.xfs_name = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32*, i32, %struct.TYPE_17__*, i32, i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@xs_dir_lookup = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DA_OP_OKNOENT = common dso_local global i32 0, align 4
@XFS_DA_OP_CILOOKUP = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir_lookup(i32* %0, %struct.TYPE_17__* %1, %struct.xfs_name* %2, i32* %3, %struct.xfs_name* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.xfs_name*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.xfs_name*, align 8
  %12 = alloca %struct.TYPE_18__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store %struct.xfs_name* %2, %struct.xfs_name** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.xfs_name* %4, %struct.xfs_name** %11, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @S_IFMT, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @S_IFDIR, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load i32, i32* @xs_dir_lookup, align 4
  %26 = call i32 @XFS_STATS_INC(i32 %25)
  %27 = call i32 @memset(%struct.TYPE_18__* %12, i32 0, i32 56)
  %28 = load %struct.xfs_name*, %struct.xfs_name** %9, align 8
  %29 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 9
  store i32 %30, i32* %31, align 8
  %32 = load %struct.xfs_name*, %struct.xfs_name** %9, align 8
  %33 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32 (%struct.xfs_name*)*, i32 (%struct.xfs_name*)** %41, align 8
  %43 = load %struct.xfs_name*, %struct.xfs_name** %9, align 8
  %44 = call i32 %42(%struct.xfs_name* %43)
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 7
  store i32 %44, i32* %45, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 6
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %47, align 8
  %48 = load i32, i32* @XFS_DATA_FORK, align 4
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 5
  store i32 %48, i32* %49, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 4
  store i32* %50, i32** %51, align 8
  %52 = load i32, i32* @XFS_DA_OP_OKNOENT, align 4
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 3
  store i32 %52, i32* %53, align 4
  %54 = load %struct.xfs_name*, %struct.xfs_name** %11, align 8
  %55 = icmp ne %struct.xfs_name* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %5
  %57 = load i32, i32* @XFS_DA_OP_CILOOKUP, align 4
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %56, %5
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = call i32 @xfs_dir2_sf_lookup(%struct.TYPE_18__* %12)
  store i32 %69, i32* %13, align 4
  br label %100

70:                                               ; preds = %61
  %71 = load i32*, i32** %7, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %73 = call i32 @xfs_dir2_isblock(i32* %71, %struct.TYPE_17__* %72, i32* %14)
  store i32 %73, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %6, align 4
  br label %126

77:                                               ; preds = %70
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 @xfs_dir2_block_lookup(%struct.TYPE_18__* %12)
  store i32 %81, i32* %13, align 4
  br label %98

82:                                               ; preds = %77
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %85 = call i32 @xfs_dir2_isleaf(i32* %83, %struct.TYPE_17__* %84, i32* %14)
  store i32 %85, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %6, align 4
  br label %126

89:                                               ; preds = %82
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 @xfs_dir2_leaf_lookup(%struct.TYPE_18__* %12)
  store i32 %93, i32* %13, align 4
  br label %96

94:                                               ; preds = %89
  %95 = call i32 @xfs_dir2_node_lookup(%struct.TYPE_18__* %12)
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %94, %92
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97, %80
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99, %68
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @EEXIST, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %104, %100
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %124, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32*, i32** %10, align 8
  store i32 %110, i32* %111, align 4
  %112 = load %struct.xfs_name*, %struct.xfs_name** %11, align 8
  %113 = icmp ne %struct.xfs_name* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.xfs_name*, %struct.xfs_name** %11, align 8
  %118 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.xfs_name*, %struct.xfs_name** %11, align 8
  %122 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %114, %108
  br label %124

124:                                              ; preds = %123, %105
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %124, %87, %75
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @XFS_STATS_INC(i32) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @xfs_dir2_sf_lookup(%struct.TYPE_18__*) #1

declare dso_local i32 @xfs_dir2_isblock(i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @xfs_dir2_block_lookup(%struct.TYPE_18__*) #1

declare dso_local i32 @xfs_dir2_isleaf(i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @xfs_dir2_leaf_lookup(%struct.TYPE_18__*) #1

declare dso_local i32 @xfs_dir2_node_lookup(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
