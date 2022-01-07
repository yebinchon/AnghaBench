; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_count_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_count_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.udf_sb_info = type { i32, %struct.udf_part_map*, %struct.TYPE_4__* }
%struct.udf_part_map = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.logicalVolIntegrityDesc = type { i32*, i32 }

@UDF_PART_FLAG_UNALLOC_BITMAP = common dso_local global i32 0, align 4
@UDF_PART_FLAG_FREED_BITMAP = common dso_local global i32 0, align 4
@UDF_PART_FLAG_UNALLOC_TABLE = common dso_local global i32 0, align 4
@UDF_PART_FLAG_FREED_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @udf_count_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_count_free(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.udf_sb_info*, align 8
  %6 = alloca %struct.udf_part_map*, align 8
  %7 = alloca %struct.logicalVolIntegrityDesc*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %8)
  store %struct.udf_sb_info* %9, %struct.udf_sb_info** %5, align 8
  %10 = load %struct.udf_sb_info*, %struct.udf_sb_info** %5, align 8
  %11 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %45

14:                                               ; preds = %1
  %15 = load %struct.udf_sb_info*, %struct.udf_sb_info** %5, align 8
  %16 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.logicalVolIntegrityDesc*
  store %struct.logicalVolIntegrityDesc* %20, %struct.logicalVolIntegrityDesc** %7, align 8
  %21 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %7, align 8
  %22 = getelementptr inbounds %struct.logicalVolIntegrityDesc, %struct.logicalVolIntegrityDesc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @le32_to_cpu(i32 %23)
  %25 = load %struct.udf_sb_info*, %struct.udf_sb_info** %5, align 8
  %26 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ugt i32 %24, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %14
  %30 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %7, align 8
  %31 = getelementptr inbounds %struct.logicalVolIntegrityDesc, %struct.logicalVolIntegrityDesc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.udf_sb_info*, %struct.udf_sb_info** %5, align 8
  %34 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %29
  br label %44

44:                                               ; preds = %43, %14
  br label %45

45:                                               ; preds = %44, %1
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %137

50:                                               ; preds = %45
  %51 = load %struct.udf_sb_info*, %struct.udf_sb_info** %5, align 8
  %52 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %51, i32 0, i32 1
  %53 = load %struct.udf_part_map*, %struct.udf_part_map** %52, align 8
  %54 = load %struct.udf_sb_info*, %struct.udf_sb_info** %5, align 8
  %55 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %53, i64 %57
  store %struct.udf_part_map* %58, %struct.udf_part_map** %6, align 8
  %59 = load %struct.udf_part_map*, %struct.udf_part_map** %6, align 8
  %60 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @UDF_PART_FLAG_UNALLOC_BITMAP, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %50
  %66 = load %struct.super_block*, %struct.super_block** %3, align 8
  %67 = load %struct.udf_part_map*, %struct.udf_part_map** %6, align 8
  %68 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @udf_count_free_bitmap(%struct.super_block* %66, i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = zext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %65, %50
  %77 = load %struct.udf_part_map*, %struct.udf_part_map** %6, align 8
  %78 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @UDF_PART_FLAG_FREED_BITMAP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %76
  %84 = load %struct.super_block*, %struct.super_block** %3, align 8
  %85 = load %struct.udf_part_map*, %struct.udf_part_map** %6, align 8
  %86 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @udf_count_free_bitmap(%struct.super_block* %84, i32 %88)
  %90 = load i32, i32* %4, align 4
  %91 = zext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %83, %76
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %2, align 4
  br label %137

99:                                               ; preds = %94
  %100 = load %struct.udf_part_map*, %struct.udf_part_map** %6, align 8
  %101 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @UDF_PART_FLAG_UNALLOC_TABLE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %99
  %107 = load %struct.super_block*, %struct.super_block** %3, align 8
  %108 = load %struct.udf_part_map*, %struct.udf_part_map** %6, align 8
  %109 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @udf_count_free_table(%struct.super_block* %107, i32 %111)
  %113 = load i32, i32* %4, align 4
  %114 = zext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %106, %99
  %118 = load %struct.udf_part_map*, %struct.udf_part_map** %6, align 8
  %119 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @UDF_PART_FLAG_FREED_TABLE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %117
  %125 = load %struct.super_block*, %struct.super_block** %3, align 8
  %126 = load %struct.udf_part_map*, %struct.udf_part_map** %6, align 8
  %127 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @udf_count_free_table(%struct.super_block* %125, i32 %129)
  %131 = load i32, i32* %4, align 4
  %132 = zext i32 %131 to i64
  %133 = add nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %124, %117
  %136 = load i32, i32* %4, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %135, %97, %48
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @udf_count_free_bitmap(%struct.super_block*, i32) #1

declare dso_local i64 @udf_count_free_table(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
