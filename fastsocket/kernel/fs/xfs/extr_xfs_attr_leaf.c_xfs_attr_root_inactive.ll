; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_root_inactive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_root_inactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_DA_NODE_MAGIC = common dso_local global i64 0, align 8
@XFS_ATTR_LEAF_MAGIC = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_root_inactive(i32** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32**, i32*** %4, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @XFS_ATTR_FORK, align 4
  %14 = call i32 @xfs_da_read_buf(i32* %11, i32* %12, i32 0, i32 -1, %struct.TYPE_10__** %8, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %81

19:                                               ; preds = %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = call i32 @xfs_da_blkno(%struct.TYPE_10__* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %6, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @be16_to_cpu(i32 %27)
  %29 = load i64, i64* @XFS_DA_NODE_MAGIC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = load i32**, i32*** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = call i32 @xfs_attr_node_inactive(i32** %32, i32* %33, %struct.TYPE_10__* %34, i32 1)
  store i32 %35, i32* %9, align 4
  br label %56

36:                                               ; preds = %19
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @be16_to_cpu(i32 %39)
  %41 = load i64, i64* @XFS_ATTR_LEAF_MAGIC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i32**, i32*** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %47 = call i32 @xfs_attr_leaf_inactive(i32** %44, i32* %45, %struct.TYPE_10__* %46)
  store i32 %47, i32* %9, align 4
  br label %55

48:                                               ; preds = %36
  %49 = load i32, i32* @EIO, align 4
  %50 = call i32 @XFS_ERROR(i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32**, i32*** %4, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %54 = call i32 @xfs_da_brelse(i32* %52, %struct.TYPE_10__* %53)
  br label %55

55:                                               ; preds = %48, %43
  br label %56

56:                                               ; preds = %55, %31
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %81

61:                                               ; preds = %56
  %62 = load i32**, i32*** %4, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @XFS_ATTR_FORK, align 4
  %67 = call i32 @xfs_da_get_buf(i32* %63, i32* %64, i32 0, i32 %65, %struct.TYPE_10__** %8, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %81

72:                                               ; preds = %61
  %73 = load i32**, i32*** %4, align 8
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %76 = call i32 @xfs_da_binval(i32* %74, %struct.TYPE_10__* %75)
  %77 = load i32**, i32*** %4, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @xfs_trans_roll(i32** %77, i32* %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %72, %70, %59, %17
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @xfs_da_read_buf(i32*, i32*, i32, i32, %struct.TYPE_10__**, i32) #1

declare dso_local i32 @xfs_da_blkno(%struct.TYPE_10__*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @xfs_attr_node_inactive(i32**, i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @xfs_attr_leaf_inactive(i32**, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @xfs_da_brelse(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @xfs_da_get_buf(i32*, i32*, i32, i32, %struct.TYPE_10__**, i32) #1

declare dso_local i32 @xfs_da_binval(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @xfs_trans_roll(i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
