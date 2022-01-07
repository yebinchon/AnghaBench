; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_block.c_xfs_dir2_block_getdents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_block.c_xfs_dir2_block_getdents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_21__ = type { i32, i32, i64 }
%struct.TYPE_20__ = type { i32, i32 }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_FREE_TAG = common dso_local global i64 0, align 8
@DT_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_block_getdents(%struct.TYPE_19__* %0, i8* %1, i32* %2, i64 (i8*, i8*, i32, i32, i32, i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64 (i8*, i8*, i32, i32, i32, i32)*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 (i8*, i8*, i32, i32, i32, i32)* %3, i64 (i8*, i8*, i32, i32, i32, i32)** %9, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %17, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @xfs_dir2_dataptr_to_db(%struct.TYPE_18__* %24, i32 %26)
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %160

33:                                               ; preds = %4
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @XFS_DATA_FORK, align 4
  %39 = call i32 @xfs_da_read_buf(i32* null, %struct.TYPE_19__* %34, i64 %37, i32 -1, %struct.TYPE_23__** %11, i32 %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %5, align 4
  br label %160

44:                                               ; preds = %33
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %46 = icmp ne %struct.TYPE_23__* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @xfs_dir2_dataptr_to_off(%struct.TYPE_18__* %49, i32 %51)
  store i32 %52, i32* %19, align 4
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %54, align 8
  store %struct.TYPE_22__* %55, %struct.TYPE_22__** %10, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %58 = call i32 @xfs_dir2_data_check(%struct.TYPE_19__* %56, %struct.TYPE_23__* %57)
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %61 = call i32* @xfs_dir2_block_tail_p(%struct.TYPE_18__* %59, %struct.TYPE_22__* %60)
  store i32* %61, i32** %12, align 8
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  store i8* %65, i8** %18, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = call i64 @xfs_dir2_block_leaf_p(i32* %66)
  %68 = inttoptr i64 %67 to i8*
  store i8* %68, i8** %15, align 8
  br label %69

69:                                               ; preds = %148, %109, %82, %44
  %70 = load i8*, i8** %18, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = icmp ult i8* %70, %71
  br i1 %72, label %73, label %149

73:                                               ; preds = %69
  %74 = load i8*, i8** %18, align 8
  %75 = bitcast i8* %74 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %75, %struct.TYPE_20__** %14, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @be16_to_cpu(i32 %78)
  %80 = load i64, i64* @XFS_DIR2_DATA_FREE_TAG, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %73
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @be16_to_cpu(i32 %85)
  %87 = load i8*, i8** %18, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 %86
  store i8* %88, i8** %18, align 8
  br label %69

89:                                               ; preds = %73
  %90 = load i8*, i8** %18, align 8
  %91 = bitcast i8* %90 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %91, %struct.TYPE_21__** %13, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @xfs_dir2_data_entsize(i32 %94)
  %96 = load i8*, i8** %18, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %18, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %100 = bitcast %struct.TYPE_21__* %99 to i8*
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %102 = bitcast %struct.TYPE_22__* %101 to i8*
  %103 = ptrtoint i8* %100 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = load i32, i32* %19, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %105, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %89
  br label %69

110:                                              ; preds = %89
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %116 = bitcast %struct.TYPE_21__* %115 to i8*
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %118 = bitcast %struct.TYPE_22__* %117 to i8*
  %119 = ptrtoint i8* %116 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = trunc i64 %121 to i32
  %123 = call i32 @xfs_dir2_db_off_to_dataptr(%struct.TYPE_18__* %111, i64 %114, i32 %122)
  store i32 %123, i32* %20, align 4
  %124 = load i64 (i8*, i8*, i32, i32, i32, i32)*, i64 (i8*, i8*, i32, i32, i32, i32)** %9, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i8*
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %20, align 4
  %134 = and i32 %133, 2147483647
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @be64_to_cpu(i32 %137)
  %139 = load i32, i32* @DT_UNKNOWN, align 4
  %140 = call i64 %124(i8* %125, i8* %129, i32 %132, i32 %134, i32 %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %110
  %143 = load i32, i32* %20, align 4
  %144 = and i32 %143, 2147483647
  %145 = load i32*, i32** %8, align 8
  store i32 %144, i32* %145, align 4
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %147 = call i32 @xfs_da_brelse(i32* null, %struct.TYPE_23__* %146)
  store i32 0, i32* %5, align 4
  br label %160

148:                                              ; preds = %110
  br label %69

149:                                              ; preds = %69
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, 1
  %155 = call i32 @xfs_dir2_db_off_to_dataptr(%struct.TYPE_18__* %150, i64 %154, i32 0)
  %156 = and i32 %155, 2147483647
  %157 = load i32*, i32** %8, align 8
  store i32 %156, i32* %157, align 4
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %159 = call i32 @xfs_da_brelse(i32* null, %struct.TYPE_23__* %158)
  store i32 0, i32* %5, align 4
  br label %160

160:                                              ; preds = %149, %142, %42, %32
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i64 @xfs_dir2_dataptr_to_db(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @xfs_da_read_buf(i32*, %struct.TYPE_19__*, i64, i32, %struct.TYPE_23__**, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_dir2_dataptr_to_off(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @xfs_dir2_data_check(%struct.TYPE_19__*, %struct.TYPE_23__*) #1

declare dso_local i32* @xfs_dir2_block_tail_p(%struct.TYPE_18__*, %struct.TYPE_22__*) #1

declare dso_local i64 @xfs_dir2_block_leaf_p(i32*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @xfs_dir2_data_entsize(i32) #1

declare dso_local i32 @xfs_dir2_db_off_to_dataptr(%struct.TYPE_18__*, i64, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @xfs_da_brelse(i32*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
