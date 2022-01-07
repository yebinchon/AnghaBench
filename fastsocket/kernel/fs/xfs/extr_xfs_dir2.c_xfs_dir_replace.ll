; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2.c_xfs_dir_replace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2.c_xfs_dir_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (%struct.xfs_name*)* }
%struct.xfs_name = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__*, i32, i32, i32*, i32*, %struct.TYPE_22__*, i32, i32, i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir_replace(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, %struct.xfs_name* %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.xfs_name*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_23__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %10, align 8
  store %struct.xfs_name* %2, %struct.xfs_name** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @S_IFMT, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @S_IFDIR, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @xfs_dir_ino_validate(i32 %31, i32 %32)
  store i32 %33, i32* %17, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %7
  %36 = load i32, i32* %17, align 4
  store i32 %36, i32* %8, align 4
  br label %111

37:                                               ; preds = %7
  %38 = call i32 @memset(%struct.TYPE_23__* %16, i32 0, i32 56)
  %39 = load %struct.xfs_name*, %struct.xfs_name** %11, align 8
  %40 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 9
  store i32 %41, i32* %42, align 4
  %43 = load %struct.xfs_name*, %struct.xfs_name** %11, align 8
  %44 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 8
  store i32 %45, i32* %46, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32 (%struct.xfs_name*)*, i32 (%struct.xfs_name*)** %52, align 8
  %54 = load %struct.xfs_name*, %struct.xfs_name** %11, align 8
  %55 = call i32 %53(%struct.xfs_name* %54)
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 7
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %12, align 4
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 6
  store i32 %57, i32* %58, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 5
  store %struct.TYPE_22__* %59, %struct.TYPE_22__** %60, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 4
  store i32* %61, i32** %62, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 3
  store i32* %63, i32** %64, align 8
  %65 = load i32, i32* %15, align 4
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 2
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @XFS_DATA_FORK, align 4
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 1
  store i32 %67, i32* %68, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  store %struct.TYPE_21__* %69, %struct.TYPE_21__** %70, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %37
  %78 = call i32 @xfs_dir2_sf_replace(%struct.TYPE_23__* %16)
  store i32 %78, i32* %17, align 4
  br label %109

79:                                               ; preds = %37
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %82 = call i32 @xfs_dir2_isblock(%struct.TYPE_21__* %80, %struct.TYPE_22__* %81, i32* %18)
  store i32 %82, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %17, align 4
  store i32 %85, i32* %8, align 4
  br label %111

86:                                               ; preds = %79
  %87 = load i32, i32* %18, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 @xfs_dir2_block_replace(%struct.TYPE_23__* %16)
  store i32 %90, i32* %17, align 4
  br label %107

91:                                               ; preds = %86
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %94 = call i32 @xfs_dir2_isleaf(%struct.TYPE_21__* %92, %struct.TYPE_22__* %93, i32* %18)
  store i32 %94, i32* %17, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %17, align 4
  store i32 %97, i32* %8, align 4
  br label %111

98:                                               ; preds = %91
  %99 = load i32, i32* %18, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i32 @xfs_dir2_leaf_replace(%struct.TYPE_23__* %16)
  store i32 %102, i32* %17, align 4
  br label %105

103:                                              ; preds = %98
  %104 = call i32 @xfs_dir2_node_replace(%struct.TYPE_23__* %16)
  store i32 %104, i32* %17, align 4
  br label %105

105:                                              ; preds = %103, %101
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106, %89
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108, %77
  %110 = load i32, i32* %17, align 4
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %109, %96, %84, %35
  %112 = load i32, i32* %8, align 4
  ret i32 %112
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_dir_ino_validate(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @xfs_dir2_sf_replace(%struct.TYPE_23__*) #1

declare dso_local i32 @xfs_dir2_isblock(%struct.TYPE_21__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @xfs_dir2_block_replace(%struct.TYPE_23__*) #1

declare dso_local i32 @xfs_dir2_isleaf(%struct.TYPE_21__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @xfs_dir2_leaf_replace(%struct.TYPE_23__*) #1

declare dso_local i32 @xfs_dir2_node_replace(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
