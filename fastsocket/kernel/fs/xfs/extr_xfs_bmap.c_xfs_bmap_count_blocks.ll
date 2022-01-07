; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_bmap.c_xfs_bmap_count_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_bmap.c_xfs_bmap_count_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64 }
%struct.xfs_btree_block = type { i32 }
%struct.TYPE_19__ = type { i32, i32, %struct.xfs_btree_block* }

@NULLFSBLOCK = common dso_local global i64 0, align 8
@XFS_DINODE_FMT_EXTENTS = common dso_local global i64 0, align 8
@NULLDFSBNO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"xfs_bmap_count_blocks(2)\00", align 1
@XFS_ERRLEVEL_LOW = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_bmap_count_blocks(i32* %0, %struct.TYPE_18__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.xfs_btree_block*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i64, i64* @NULLFSBLOCK, align 8
  store i64 %16, i64* %11, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %14, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.TYPE_19__* @XFS_IFORK_PTR(%struct.TYPE_18__* %20, i32 %21)
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %12, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @XFS_IFORK_FORMAT(%struct.TYPE_18__* %23, i32 %24)
  %26 = load i64, i64* @XFS_DINODE_FMT_EXTENTS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sdiv i32 %32, 4
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @xfs_bmap_count_leaves(%struct.TYPE_19__* %29, i32 0, i32 %33, i32* %34)
  store i32 0, i32* %5, align 4
  br label %100

36:                                               ; preds = %4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 2
  %39 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %38, align 8
  store %struct.xfs_btree_block* %39, %struct.xfs_btree_block** %10, align 8
  %40 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %10, align 8
  %41 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be16_to_cpu(i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp sgt i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %49 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %10, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @XFS_BMAP_BROOT_PTR_ADDR(%struct.TYPE_17__* %48, %struct.xfs_btree_block* %49, i32 1, i32 %52)
  store i32* %53, i32** %15, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @be64_to_cpu(i32 %55)
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* @NULLDFSBNO, align 8
  %59 = icmp ne i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ASSERT(i32 %60)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i64 @XFS_FSB_TO_AGNO(%struct.TYPE_17__* %62, i64 %63)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %64, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @ASSERT(i32 %70)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i64 @XFS_FSB_TO_AGBNO(%struct.TYPE_17__* %72, i64 %73)
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %74, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @ASSERT(i32 %80)
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = call i64 @xfs_bmap_count_tree(%struct.TYPE_17__* %82, i32* %83, %struct.TYPE_19__* %84, i64 %85, i32 %86, i32* %87)
  %89 = icmp slt i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %36
  %94 = load i32, i32* @XFS_ERRLEVEL_LOW, align 4
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %96 = call i32 @XFS_ERROR_REPORT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %94, %struct.TYPE_17__* %95)
  %97 = load i32, i32* @EFSCORRUPTED, align 4
  %98 = call i32 @XFS_ERROR(i32 %97)
  store i32 %98, i32* %5, align 4
  br label %100

99:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %93, %28
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local %struct.TYPE_19__* @XFS_IFORK_PTR(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @XFS_IFORK_FORMAT(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @xfs_bmap_count_leaves(%struct.TYPE_19__*, i32, i32, i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @XFS_BMAP_BROOT_PTR_ADDR(%struct.TYPE_17__*, %struct.xfs_btree_block*, i32, i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @XFS_FSB_TO_AGNO(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @XFS_FSB_TO_AGBNO(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @xfs_bmap_count_tree(%struct.TYPE_17__*, i32*, %struct.TYPE_19__*, i64, i32, i32*) #1

declare dso_local i32 @XFS_ERROR_REPORT(i8*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
