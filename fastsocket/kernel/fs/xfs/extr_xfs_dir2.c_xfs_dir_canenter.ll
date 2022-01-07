; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2.c_xfs_dir_canenter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2.c_xfs_dir_canenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.xfs_name*)* }
%struct.xfs_name = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32*, i32, %struct.TYPE_17__*, i32, i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DA_OP_JUSTCHECK = common dso_local global i32 0, align 4
@XFS_DA_OP_ADDNAME = common dso_local global i32 0, align 4
@XFS_DA_OP_OKNOENT = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir_canenter(i32* %0, %struct.TYPE_17__* %1, %struct.xfs_name* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.xfs_name*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.xfs_name* %2, %struct.xfs_name** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %98

16:                                               ; preds = %4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @S_IFMT, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @S_IFDIR, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = call i32 @memset(%struct.TYPE_18__* %10, i32 0, i32 48)
  %28 = load %struct.xfs_name*, %struct.xfs_name** %8, align 8
  %29 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 6
  store i32 %30, i32* %31, align 8
  %32 = load %struct.xfs_name*, %struct.xfs_name** %8, align 8
  %33 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 5
  store i32 %34, i32* %35, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32 (%struct.xfs_name*)*, i32 (%struct.xfs_name*)** %41, align 8
  %43 = load %struct.xfs_name*, %struct.xfs_name** %8, align 8
  %44 = call i32 %42(%struct.xfs_name* %43)
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 4
  store i32 %44, i32* %45, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 3
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %47, align 8
  %48 = load i32, i32* @XFS_DATA_FORK, align 4
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  store i32* %50, i32** %51, align 8
  %52 = load i32, i32* @XFS_DA_OP_JUSTCHECK, align 4
  %53 = load i32, i32* @XFS_DA_OP_ADDNAME, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @XFS_DA_OP_OKNOENT, align 4
  %56 = or i32 %54, %55
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %16
  %65 = call i32 @xfs_dir2_sf_addname(%struct.TYPE_18__* %10)
  store i32 %65, i32* %11, align 4
  br label %96

66:                                               ; preds = %16
  %67 = load i32*, i32** %6, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %69 = call i32 @xfs_dir2_isblock(i32* %67, %struct.TYPE_17__* %68, i32* %12)
  store i32 %69, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %5, align 4
  br label %98

73:                                               ; preds = %66
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = call i32 @xfs_dir2_block_addname(%struct.TYPE_18__* %10)
  store i32 %77, i32* %11, align 4
  br label %94

78:                                               ; preds = %73
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %81 = call i32 @xfs_dir2_isleaf(i32* %79, %struct.TYPE_17__* %80, i32* %12)
  store i32 %81, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %5, align 4
  br label %98

85:                                               ; preds = %78
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32 @xfs_dir2_leaf_addname(%struct.TYPE_18__* %10)
  store i32 %89, i32* %11, align 4
  br label %92

90:                                               ; preds = %85
  %91 = call i32 @xfs_dir2_node_addname(%struct.TYPE_18__* %10)
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %90, %88
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93, %76
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95, %64
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %96, %83, %71, %15
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @xfs_dir2_sf_addname(%struct.TYPE_18__*) #1

declare dso_local i32 @xfs_dir2_isblock(i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @xfs_dir2_block_addname(%struct.TYPE_18__*) #1

declare dso_local i32 @xfs_dir2_isleaf(i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @xfs_dir2_leaf_addname(%struct.TYPE_18__*) #1

declare dso_local i32 @xfs_dir2_node_addname(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
