; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64, i32 }
%struct.TYPE_19__ = type { i64 }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DIR2_LEAF1_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_leaf_init(%struct.TYPE_22__* %0, i64 %1, %struct.TYPE_21__** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_21__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_21__** %2, %struct.TYPE_21__*** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %11, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %21 = icmp ne %struct.TYPE_18__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %16, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %15, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = call i64 @XFS_DIR2_LEAF_FIRSTDB(i32* %31)
  %33 = icmp sge i64 %30, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %4
  %35 = load i64, i64* %7, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = call i64 @XFS_DIR2_FREE_FIRSTDB(i32* %36)
  %38 = icmp slt i64 %35, %37
  br label %39

39:                                               ; preds = %34, %4
  %40 = phi i1 [ false, %4 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load i32*, i32** %16, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @xfs_dir2_db_to_da(i32* %45, i64 %46)
  %48 = load i32, i32* @XFS_DATA_FORK, align 4
  %49 = call i32 @xfs_da_get_buf(i32* %43, %struct.TYPE_18__* %44, i32 %47, i32 -1, %struct.TYPE_21__** %10, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %5, align 4
  br label %100

54:                                               ; preds = %39
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %56 = icmp ne %struct.TYPE_21__* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT(i32 %57)
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %60, align 8
  store %struct.TYPE_20__* %61, %struct.TYPE_20__** %13, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @cpu_to_be16(i32 %62)
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  store i32 %63, i32* %67, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load i32*, i32** %16, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %84 = call i32 @xfs_dir2_leaf_log_header(i32* %82, %struct.TYPE_21__* %83)
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @XFS_DIR2_LEAF1_MAGIC, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %54
  %89 = load i32*, i32** %15, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %91 = call %struct.TYPE_19__* @xfs_dir2_leaf_tail_p(i32* %89, %struct.TYPE_20__* %90)
  store %struct.TYPE_19__* %91, %struct.TYPE_19__** %14, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %96 = call i32 @xfs_dir2_leaf_log_tail(i32* %94, %struct.TYPE_21__* %95)
  br label %97

97:                                               ; preds = %88, %54
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %99 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %8, align 8
  store %struct.TYPE_21__* %98, %struct.TYPE_21__** %99, align 8
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %97, %52
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @XFS_DIR2_LEAF_FIRSTDB(i32*) #1

declare dso_local i64 @XFS_DIR2_FREE_FIRSTDB(i32*) #1

declare dso_local i32 @xfs_da_get_buf(i32*, %struct.TYPE_18__*, i32, i32, %struct.TYPE_21__**, i32) #1

declare dso_local i32 @xfs_dir2_db_to_da(i32*, i64) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @xfs_dir2_leaf_log_header(i32*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_19__* @xfs_dir2_leaf_tail_p(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @xfs_dir2_leaf_log_tail(i32*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
