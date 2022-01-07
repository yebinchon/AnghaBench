; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_node_trim_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_node_trim_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DIR2_FREE_MAGIC = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_node_trim_free(%struct.TYPE_16__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %9, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %12, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @XFS_DATA_FORK, align 4
  %28 = call i32 @xfs_da_read_buf(i32* %23, %struct.TYPE_13__* %24, i32 %26, i32 -2, %struct.TYPE_15__** %8, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %82

33:                                               ; preds = %3
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %35 = icmp eq %struct.TYPE_15__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %82

37:                                               ; preds = %33
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %11, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @be32_to_cpu(i32 %44)
  %46 = load i64, i64* @XFS_DIR2_FREE_MAGIC, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ASSERT(i32 %48)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @be32_to_cpu(i32 %53)
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %37
  %57 = load i32*, i32** %13, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %59 = call i32 @xfs_da_brelse(i32* %57, %struct.TYPE_15__* %58)
  %60 = load i32*, i32** %7, align 8
  store i32 0, i32* %60, align 4
  store i32 0, i32* %4, align 4
  br label %82

61:                                               ; preds = %37
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i64, i64* %6, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @xfs_dir2_da_to_db(i32* %63, i32 %65)
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %68 = call i32 @xfs_dir2_shrink_inode(%struct.TYPE_16__* %62, i32 %66, %struct.TYPE_15__* %67)
  store i32 %68, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %61
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @ENOSPC, align 4
  %73 = icmp ne i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @ASSERT(i32 %74)
  %76 = load i32*, i32** %13, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %78 = call i32 @xfs_da_brelse(i32* %76, %struct.TYPE_15__* %77)
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %4, align 4
  br label %82

80:                                               ; preds = %61
  %81 = load i32*, i32** %7, align 8
  store i32 1, i32* %81, align 4
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %70, %56, %36, %31
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xfs_da_read_buf(i32*, %struct.TYPE_13__*, i32, i32, %struct.TYPE_15__**, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_da_brelse(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @xfs_dir2_shrink_inode(%struct.TYPE_16__*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @xfs_dir2_da_to_db(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
