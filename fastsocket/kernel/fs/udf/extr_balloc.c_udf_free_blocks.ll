; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_balloc.c_udf_free_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_balloc.c_udf_free_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.kernel_lb_addr = type { i64 }
%struct.udf_part_map = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.udf_part_map* }

@UDF_PART_FLAG_UNALLOC_BITMAP = common dso_local global i32 0, align 4
@UDF_PART_FLAG_UNALLOC_TABLE = common dso_local global i32 0, align 4
@UDF_PART_FLAG_FREED_BITMAP = common dso_local global i32 0, align 4
@UDF_PART_FLAG_FREED_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udf_free_blocks(%struct.super_block* %0, %struct.inode* %1, %struct.kernel_lb_addr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.kernel_lb_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.udf_part_map*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %14 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %11, align 8
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = call %struct.TYPE_6__* @UDF_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.udf_part_map*, %struct.udf_part_map** %18, align 8
  %20 = load i64, i64* %11, align 8
  %21 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %19, i64 %20
  store %struct.udf_part_map* %21, %struct.udf_part_map** %12, align 8
  %22 = load %struct.udf_part_map*, %struct.udf_part_map** %12, align 8
  %23 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UDF_PART_FLAG_UNALLOC_BITMAP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %5
  %29 = load %struct.super_block*, %struct.super_block** %6, align 8
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = load %struct.udf_part_map*, %struct.udf_part_map** %12, align 8
  %32 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @udf_bitmap_free_blocks(%struct.super_block* %29, %struct.inode* %30, i32 %34, %struct.kernel_lb_addr* %35, i32 %36, i32 %37)
  br label %96

39:                                               ; preds = %5
  %40 = load %struct.udf_part_map*, %struct.udf_part_map** %12, align 8
  %41 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @UDF_PART_FLAG_UNALLOC_TABLE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load %struct.super_block*, %struct.super_block** %6, align 8
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = load %struct.udf_part_map*, %struct.udf_part_map** %12, align 8
  %50 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @udf_table_free_blocks(%struct.super_block* %47, %struct.inode* %48, i32 %52, %struct.kernel_lb_addr* %53, i32 %54, i32 %55)
  br label %95

57:                                               ; preds = %39
  %58 = load %struct.udf_part_map*, %struct.udf_part_map** %12, align 8
  %59 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @UDF_PART_FLAG_FREED_BITMAP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %57
  %65 = load %struct.super_block*, %struct.super_block** %6, align 8
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = load %struct.udf_part_map*, %struct.udf_part_map** %12, align 8
  %68 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @udf_bitmap_free_blocks(%struct.super_block* %65, %struct.inode* %66, i32 %70, %struct.kernel_lb_addr* %71, i32 %72, i32 %73)
  br label %94

75:                                               ; preds = %57
  %76 = load %struct.udf_part_map*, %struct.udf_part_map** %12, align 8
  %77 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @UDF_PART_FLAG_FREED_TABLE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %75
  %83 = load %struct.super_block*, %struct.super_block** %6, align 8
  %84 = load %struct.inode*, %struct.inode** %7, align 8
  %85 = load %struct.udf_part_map*, %struct.udf_part_map** %12, align 8
  %86 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @udf_table_free_blocks(%struct.super_block* %83, %struct.inode* %84, i32 %88, %struct.kernel_lb_addr* %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %82, %75
  br label %94

94:                                               ; preds = %93, %64
  br label %95

95:                                               ; preds = %94, %46
  br label %96

96:                                               ; preds = %95, %28
  ret void
}

declare dso_local %struct.TYPE_6__* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @udf_bitmap_free_blocks(%struct.super_block*, %struct.inode*, i32, %struct.kernel_lb_addr*, i32, i32) #1

declare dso_local i32 @udf_table_free_blocks(%struct.super_block*, %struct.inode*, i32, %struct.kernel_lb_addr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
