; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_split.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_19__ = type { i64, i32, i8*, i32, i32 }

@XFS_DIR2_LEAFN_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_leafn_split(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %8, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %11, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %21 = icmp ne %struct.TYPE_20__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %32 = call i32 @xfs_da_grow_inode(%struct.TYPE_20__* %31, i32* %9)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %120

37:                                               ; preds = %3
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @xfs_dir2_da_to_db(i32* %39, i32 %40)
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 1
  %44 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %45 = call i32 @xfs_dir2_leaf_init(%struct.TYPE_20__* %38, i32 %41, i32* %43, i64 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %120

50:                                               ; preds = %37
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %60 = call i32 @xfs_dir2_leafn_rebalance(%struct.TYPE_18__* %57, %struct.TYPE_19__* %58, %struct.TYPE_19__* %59)
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %64 = call i32 @xfs_da_blk_link(%struct.TYPE_18__* %61, %struct.TYPE_19__* %62, %struct.TYPE_19__* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %50
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %120

69:                                               ; preds = %50
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @xfs_dir2_leafn_add(i32 %77, %struct.TYPE_20__* %78, i32 %81)
  store i32 %82, i32* %10, align 4
  br label %92

83:                                               ; preds = %69
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @xfs_dir2_leafn_add(i32 %86, %struct.TYPE_20__* %87, i32 %90)
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %83, %74
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @xfs_dir2_leafn_lasthash(i32 %95, i32* null)
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @xfs_dir2_leafn_lasthash(i32 %101, i32* null)
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @xfs_dir2_leafn_check(%struct.TYPE_17__* %107, i32 %110)
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @xfs_dir2_leafn_check(%struct.TYPE_17__* %114, i32 %117)
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %92, %67, %48, %35
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_da_grow_inode(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @xfs_dir2_leaf_init(%struct.TYPE_20__*, i32, i32*, i64) #1

declare dso_local i32 @xfs_dir2_da_to_db(i32*, i32) #1

declare dso_local i32 @xfs_dir2_leafn_rebalance(%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @xfs_da_blk_link(%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @xfs_dir2_leafn_add(i32, %struct.TYPE_20__*, i32) #1

declare dso_local i8* @xfs_dir2_leafn_lasthash(i32, i32*) #1

declare dso_local i32 @xfs_dir2_leafn_check(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
