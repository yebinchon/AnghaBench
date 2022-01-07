; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_data.c_xfs_dir2_data_freescan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_data.c_xfs_dir2_data_freescan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@XFS_DIR2_BLOCK_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR2_DATA_FREE_TAG = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_dir2_data_freescan(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @memset(i32 %15, i32 0, i32 4)
  %17 = load i32*, i32** %6, align 8
  store i32 1, i32* %17, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %11, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @be32_to_cpu(i32 %25)
  %27 = load i64, i64* @XFS_DIR2_BLOCK_MAGIC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = bitcast %struct.TYPE_16__* %31 to i32*
  %33 = call i32* @xfs_dir2_block_tail_p(%struct.TYPE_14__* %30, i32* %32)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i64 @xfs_dir2_block_leaf_p(i32* %34)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %10, align 8
  br label %45

37:                                               ; preds = %3
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = bitcast %struct.TYPE_16__* %38 to i8*
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  store i8* %44, i8** %10, align 8
  br label %45

45:                                               ; preds = %37, %29
  br label %46

46:                                               ; preds = %111, %45
  %47 = load i8*, i8** %11, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = icmp ult i8* %47, %48
  br i1 %49, label %50, label %112

50:                                               ; preds = %46
  %51 = load i8*, i8** %11, align 8
  %52 = bitcast i8* %51 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %9, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be16_to_cpu(i32 %55)
  %57 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %86

59:                                               ; preds = %50
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %61 = bitcast %struct.TYPE_15__* %60 to i8*
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = bitcast %struct.TYPE_16__* %62 to i8*
  %64 = ptrtoint i8* %61 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %68 = call i32* @xfs_dir2_data_unused_tag_p(%struct.TYPE_15__* %67)
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @be16_to_cpu(i32 %69)
  %71 = sext i32 %70 to i64
  %72 = icmp eq i64 %66, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @ASSERT(i32 %73)
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @xfs_dir2_data_freeinsert(%struct.TYPE_16__* %75, %struct.TYPE_15__* %76, i32* %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @be16_to_cpu(i32 %81)
  %83 = load i8*, i8** %11, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %11, align 8
  br label %111

86:                                               ; preds = %50
  %87 = load i8*, i8** %11, align 8
  %88 = bitcast i8* %87 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %88, %struct.TYPE_17__** %8, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %90 = bitcast %struct.TYPE_17__* %89 to i8*
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %92 = bitcast %struct.TYPE_16__* %91 to i8*
  %93 = ptrtoint i8* %90 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %97 = call i32* @xfs_dir2_data_entry_tag_p(%struct.TYPE_17__* %96)
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @be16_to_cpu(i32 %98)
  %100 = sext i32 %99 to i64
  %101 = icmp eq i64 %95, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @ASSERT(i32 %102)
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @xfs_dir2_data_entsize(i32 %106)
  %108 = load i8*, i8** %11, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %11, align 8
  br label %111

111:                                              ; preds = %86, %59
  br label %46

112:                                              ; preds = %46
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32* @xfs_dir2_block_tail_p(%struct.TYPE_14__*, i32*) #1

declare dso_local i64 @xfs_dir2_block_leaf_p(i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @xfs_dir2_data_unused_tag_p(%struct.TYPE_15__*) #1

declare dso_local i32 @xfs_dir2_data_freeinsert(%struct.TYPE_16__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32* @xfs_dir2_data_entry_tag_p(%struct.TYPE_17__*) #1

declare dso_local i32 @xfs_dir2_data_entsize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
