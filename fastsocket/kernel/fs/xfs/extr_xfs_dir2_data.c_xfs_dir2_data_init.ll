; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_data.c_xfs_dir2_data_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_data.c_xfs_dir2_data_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_21__, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i8*, i8* }
%struct.TYPE_19__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i8*, i8* }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_FD_COUNT = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_FREE_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_data_init(%struct.TYPE_27__* %0, i32 %1, %struct.TYPE_26__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_26__**, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_26__** %2, %struct.TYPE_26__*** %7, align 8
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  store %struct.TYPE_23__* %19, %struct.TYPE_23__** %10, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  store %struct.TYPE_22__* %22, %struct.TYPE_22__** %14, align 8
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %15, align 8
  %26 = load i32*, i32** %15, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @xfs_dir2_db_to_da(%struct.TYPE_22__* %28, i32 %29)
  %31 = load i32, i32* @XFS_DATA_FORK, align 4
  %32 = call i32 @xfs_da_get_buf(i32* %26, %struct.TYPE_23__* %27, i32 %30, i32 -1, %struct.TYPE_26__** %8, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %4, align 4
  br label %127

37:                                               ; preds = %3
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %39 = icmp ne %struct.TYPE_26__* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %43, align 8
  store %struct.TYPE_25__* %44, %struct.TYPE_25__** %9, align 8
  %45 = load i32, i32* @XFS_DIR2_DATA_MAGIC, align 4
  %46 = call i32 @cpu_to_be32(i32 %45)
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 8
  %50 = call i8* @cpu_to_be16(i32 16)
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 1
  store i8* %50, i8** %56, align 8
  store i32 1, i32* %13, align 4
  br label %57

57:                                               ; preds = %78, %37
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @XFS_DIR2_DATA_FD_COUNT, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %57
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  store i8* null, i8** %69, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  store i8* null, i8** %77, align 8
  br label %78

78:                                               ; preds = %61
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %57

81:                                               ; preds = %57
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  store %struct.TYPE_24__* %86, %struct.TYPE_24__** %11, align 8
  %87 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %88 = call i8* @cpu_to_be16(i32 %87)
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %93, 16
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = call i8* @cpu_to_be16(i32 %95)
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  store i8* %96, i8** %102, align 8
  %103 = load i32, i32* %16, align 4
  %104 = call i8* @cpu_to_be16(i32 %103)
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %108 = bitcast %struct.TYPE_24__* %107 to i8*
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %110 = bitcast %struct.TYPE_25__* %109 to i8*
  %111 = ptrtoint i8* %108 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = trunc i64 %113 to i32
  %115 = call i8* @cpu_to_be16(i32 %114)
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %117 = call i8** @xfs_dir2_data_unused_tag_p(%struct.TYPE_24__* %116)
  store i8* %115, i8** %117, align 8
  %118 = load i32*, i32** %15, align 8
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %120 = call i32 @xfs_dir2_data_log_header(i32* %118, %struct.TYPE_26__* %119)
  %121 = load i32*, i32** %15, align 8
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %124 = call i32 @xfs_dir2_data_log_unused(i32* %121, %struct.TYPE_26__* %122, %struct.TYPE_24__* %123)
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %126 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %7, align 8
  store %struct.TYPE_26__* %125, %struct.TYPE_26__** %126, align 8
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %81, %35
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @xfs_da_get_buf(i32*, %struct.TYPE_23__*, i32, i32, %struct.TYPE_26__**, i32) #1

declare dso_local i32 @xfs_dir2_db_to_da(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i8** @xfs_dir2_data_unused_tag_p(%struct.TYPE_24__*) #1

declare dso_local i32 @xfs_dir2_data_log_header(i32*, %struct.TYPE_26__*) #1

declare dso_local i32 @xfs_dir2_data_log_unused(i32*, %struct.TYPE_26__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
