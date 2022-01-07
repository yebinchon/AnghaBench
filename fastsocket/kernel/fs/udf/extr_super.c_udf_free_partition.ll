; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_free_partition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_free_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udf_part_map = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.udf_meta_data, %struct.TYPE_7__ }
%struct.udf_meta_data = type { i32*, i32*, i32* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i32* }

@UDF_PART_FLAG_UNALLOC_TABLE = common dso_local global i32 0, align 4
@UDF_PART_FLAG_FREED_TABLE = common dso_local global i32 0, align 4
@UDF_PART_FLAG_UNALLOC_BITMAP = common dso_local global i32 0, align 4
@UDF_PART_FLAG_FREED_BITMAP = common dso_local global i32 0, align 4
@UDF_SPARABLE_MAP15 = common dso_local global i64 0, align 8
@UDF_METADATA_MAP25 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udf_part_map*)* @udf_free_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_free_partition(%struct.udf_part_map* %0) #0 {
  %2 = alloca %struct.udf_part_map*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.udf_meta_data*, align 8
  store %struct.udf_part_map* %0, %struct.udf_part_map** %2, align 8
  %5 = load %struct.udf_part_map*, %struct.udf_part_map** %2, align 8
  %6 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @UDF_PART_FLAG_UNALLOC_TABLE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.udf_part_map*, %struct.udf_part_map** %2, align 8
  %13 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @iput(i32* %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.udf_part_map*, %struct.udf_part_map** %2, align 8
  %19 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @UDF_PART_FLAG_FREED_TABLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.udf_part_map*, %struct.udf_part_map** %2, align 8
  %26 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @iput(i32* %28)
  br label %30

30:                                               ; preds = %24, %17
  %31 = load %struct.udf_part_map*, %struct.udf_part_map** %2, align 8
  %32 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @UDF_PART_FLAG_UNALLOC_BITMAP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.udf_part_map*, %struct.udf_part_map** %2, align 8
  %39 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @udf_sb_free_bitmap(i32 %41)
  br label %43

43:                                               ; preds = %37, %30
  %44 = load %struct.udf_part_map*, %struct.udf_part_map** %2, align 8
  %45 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @UDF_PART_FLAG_FREED_BITMAP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.udf_part_map*, %struct.udf_part_map** %2, align 8
  %52 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @udf_sb_free_bitmap(i32 %54)
  br label %56

56:                                               ; preds = %50, %43
  %57 = load %struct.udf_part_map*, %struct.udf_part_map** %2, align 8
  %58 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @UDF_SPARABLE_MAP15, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %77, %62
  %64 = load i32, i32* %3, align 4
  %65 = icmp slt i32 %64, 4
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = load %struct.udf_part_map*, %struct.udf_part_map** %2, align 8
  %68 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @brelse(i32 %75)
  br label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %63

80:                                               ; preds = %63
  br label %110

81:                                               ; preds = %56
  %82 = load %struct.udf_part_map*, %struct.udf_part_map** %2, align 8
  %83 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @UDF_METADATA_MAP25, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %109

87:                                               ; preds = %81
  %88 = load %struct.udf_part_map*, %struct.udf_part_map** %2, align 8
  %89 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store %struct.udf_meta_data* %90, %struct.udf_meta_data** %4, align 8
  %91 = load %struct.udf_meta_data*, %struct.udf_meta_data** %4, align 8
  %92 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @iput(i32* %93)
  %95 = load %struct.udf_meta_data*, %struct.udf_meta_data** %4, align 8
  %96 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %95, i32 0, i32 2
  store i32* null, i32** %96, align 8
  %97 = load %struct.udf_meta_data*, %struct.udf_meta_data** %4, align 8
  %98 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @iput(i32* %99)
  %101 = load %struct.udf_meta_data*, %struct.udf_meta_data** %4, align 8
  %102 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %101, i32 0, i32 1
  store i32* null, i32** %102, align 8
  %103 = load %struct.udf_meta_data*, %struct.udf_meta_data** %4, align 8
  %104 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @iput(i32* %105)
  %107 = load %struct.udf_meta_data*, %struct.udf_meta_data** %4, align 8
  %108 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %107, i32 0, i32 0
  store i32* null, i32** %108, align 8
  br label %109

109:                                              ; preds = %87, %81
  br label %110

110:                                              ; preds = %109, %80
  ret void
}

declare dso_local i32 @iput(i32*) #1

declare dso_local i32 @udf_sb_free_bitmap(i32) #1

declare dso_local i32 @brelse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
