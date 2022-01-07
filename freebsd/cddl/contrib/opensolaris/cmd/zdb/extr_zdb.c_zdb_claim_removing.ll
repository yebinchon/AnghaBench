; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_zdb_claim_removing.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_zdb_claim_removing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_19__**, i32* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64 }

@SCL_CONFIG = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@SM_ALLOC = common dso_local global i32 0, align 4
@claim_segment_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_15__*)* @zdb_claim_removing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zdb_claim_removing(%struct.TYPE_18__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %15 = icmp eq %struct.TYPE_17__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %125

17:                                               ; preds = %2
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %19 = load i32, i32* @SCL_CONFIG, align 4
  %20 = load i32, i32* @FTAG, align 4
  %21 = load i32, i32* @RW_READER, align 4
  %22 = call i32 @spa_config_enter(%struct.TYPE_18__* %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %5, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_16__* @vdev_lookup_top(%struct.TYPE_18__* %26, i32 %29)
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %6, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %7, align 8
  store i64 0, i64* %8, align 8
  br label %34

34:                                               ; preds = %117, %17
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %120

40:                                               ; preds = %34
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %43, i64 %44
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  store %struct.TYPE_19__* %46, %struct.TYPE_19__** %9, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i64 @vdev_indirect_mapping_max_offset(i32* %50)
  %52 = icmp sge i64 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %120

54:                                               ; preds = %40
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @range_tree_space(i32 %57)
  %59 = call i32 @ASSERT0(i64 %58)
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = icmp ne %struct.TYPE_14__* %62, null
  br i1 %63, label %64, label %100

64:                                               ; preds = %54
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SM_ALLOC, align 4
  %72 = call i32 @space_map_load(%struct.TYPE_14__* %67, i32 %70, i32 %71)
  %73 = call i32 @VERIFY0(i32 %72)
  %74 = load i32*, i32** %7, align 8
  %75 = call i64 @vdev_indirect_mapping_max_offset(i32* %74)
  store i64 %75, i64* %10, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %80, %85
  store i64 %86, i64* %11, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %10, align 8
  %89 = icmp ugt i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %64
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %10, align 8
  %97 = sub i64 %95, %96
  %98 = call i32 @range_tree_clear(i32 %93, i64 %94, i64 %97)
  br label %99

99:                                               ; preds = %90, %64
  br label %100

100:                                              ; preds = %99, %54
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @range_tree_space(i32 %103)
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %104
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @claim_segment_cb, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = call i32 @range_tree_vacate(i32 %113, i32 %114, %struct.TYPE_16__* %115)
  br label %117

117:                                              ; preds = %100
  %118 = load i64, i64* %8, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %8, align 8
  br label %34

120:                                              ; preds = %53, %34
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %122 = load i32, i32* @SCL_CONFIG, align 4
  %123 = load i32, i32* @FTAG, align 4
  %124 = call i32 @spa_config_exit(%struct.TYPE_18__* %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %120, %16
  ret void
}

declare dso_local i32 @spa_config_enter(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_16__* @vdev_lookup_top(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @vdev_indirect_mapping_max_offset(i32*) #1

declare dso_local i32 @ASSERT0(i64) #1

declare dso_local i64 @range_tree_space(i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @space_map_load(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @range_tree_clear(i32, i64, i64) #1

declare dso_local i32 @range_tree_vacate(i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_18__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
