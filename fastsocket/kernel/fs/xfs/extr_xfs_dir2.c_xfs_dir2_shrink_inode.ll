; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2.c_xfs_dir2_shrink_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2.c_xfs_dir2_shrink_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i64, i32 }

@XFS_BMAPI_METADATA = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_shrink_inode(%struct.TYPE_17__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @trace_xfs_dir2_shrink_inode(%struct.TYPE_17__* %15, i64 %16)
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %11, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %13, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %14, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @xfs_dir2_db_to_da(%struct.TYPE_15__* %27, i64 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @XFS_BMAPI_METADATA, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @xfs_bunmapi(i32* %30, %struct.TYPE_16__* %31, i64 %32, i32 %35, i32 %36, i32 0, i32 %39, i32 %42, i32* %10)
  store i32 %43, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %3
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %4, align 4
  br label %105

47:                                               ; preds = %3
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @ASSERT(i32 %48)
  %50 = load i32*, i32** %14, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @xfs_da_binval(i32* %50, i32* %51)
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %55 = call i64 @XFS_DIR2_LEAF_FIRSTDB(%struct.TYPE_15__* %54)
  %56 = icmp sge i64 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %105

58:                                               ; preds = %47
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %64 = load i64, i64* %6, align 8
  %65 = add nsw i64 %64, 1
  %66 = call i64 @xfs_dir2_db_off_to_byte(%struct.TYPE_15__* %63, i64 %65, i32 0)
  %67 = icmp sgt i64 %62, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %105

69:                                               ; preds = %58
  %70 = load i64, i64* %9, align 8
  store i64 %70, i64* %8, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %73 = load i32, i32* @XFS_DATA_FORK, align 4
  %74 = call i32 @xfs_bmap_last_before(i32* %71, %struct.TYPE_16__* %72, i64* %8, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %4, align 4
  br label %105

78:                                               ; preds = %69
  %79 = load i64, i64* %6, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load i64, i64* %8, align 8
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @ASSERT(i32 %87)
  br label %94

89:                                               ; preds = %78
  %90 = load i64, i64* %8, align 8
  %91 = icmp sgt i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @ASSERT(i32 %92)
  br label %94

94:                                               ; preds = %89, %84
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i64 @XFS_FSB_TO_B(%struct.TYPE_15__* %95, i64 %96)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  store i64 %97, i64* %100, align 8
  %101 = load i32*, i32** %14, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %103 = load i32, i32* @XFS_ILOG_CORE, align 4
  %104 = call i32 @xfs_trans_log_inode(i32* %101, %struct.TYPE_16__* %102, i32 %103)
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %94, %76, %68, %57, %45
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @trace_xfs_dir2_shrink_inode(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @xfs_dir2_db_to_da(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @xfs_bunmapi(i32*, %struct.TYPE_16__*, i64, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_da_binval(i32*, i32*) #1

declare dso_local i64 @XFS_DIR2_LEAF_FIRSTDB(%struct.TYPE_15__*) #1

declare dso_local i64 @xfs_dir2_db_off_to_byte(%struct.TYPE_15__*, i64, i32) #1

declare dso_local i32 @xfs_bmap_last_before(i32*, %struct.TYPE_16__*, i64*, i32) #1

declare dso_local i64 @XFS_FSB_TO_B(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @xfs_trans_log_inode(i32*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
