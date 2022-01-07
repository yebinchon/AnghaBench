; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_find_free_flow_dma_table_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_find_free_flow_dma_table_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_device = type { i8* }

@SEP_DRIVER_FLOW_DMA_TABLES_AREA_OFFSET_IN_BYTES = common dso_local global i32 0, align 4
@SEP_DRIVER_FLOW_DMA_TABLES_AREA_SIZE_IN_BYTES = common dso_local global i32 0, align 4
@SEP_DRIVER_MAX_FLOW_NUM_ENTRIES_IN_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sep_device*, i64**)* @sep_find_free_flow_dma_table_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sep_find_free_flow_dma_table_space(%struct.sep_device* %0, i64** %1) #0 {
  %3 = alloca %struct.sep_device*, align 8
  %4 = alloca i64**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.sep_device* %0, %struct.sep_device** %3, align 8
  store i64** %1, i64*** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.sep_device*, %struct.sep_device** %3, align 8
  %11 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* @SEP_DRIVER_FLOW_DMA_TABLES_AREA_OFFSET_IN_BYTES, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr i8, i8* %12, i64 %14
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* @SEP_DRIVER_FLOW_DMA_TABLES_AREA_SIZE_IN_BYTES, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %16, i64 %18
  %20 = bitcast i8* %19 to i64*
  store i64* %20, i64** %8, align 8
  %21 = load i32, i32* @SEP_DRIVER_MAX_FLOW_NUM_ENTRIES_IN_TABLE, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 0
  %24 = add i64 %23, 2
  store i64 %24, i64* %9, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to i64*
  store i64* %26, i64** %6, align 8
  br label %27

27:                                               ; preds = %38, %2
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %28, align 8
  %30 = and i64 %29, 2147483647
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i64*, i64** %6, align 8
  %34 = load i64*, i64** %8, align 8
  %35 = icmp ult i64* %33, %34
  br label %36

36:                                               ; preds = %32, %27
  %37 = phi i1 [ false, %27 ], [ %35, %32 ]
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = load i64, i64* %9, align 8
  %40 = load i64*, i64** %6, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 %39
  store i64* %41, i64** %6, align 8
  br label %27

42:                                               ; preds = %36
  %43 = load i64*, i64** %6, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = icmp uge i64* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 -1, i32* %5, align 4
  br label %50

47:                                               ; preds = %42
  %48 = load i64*, i64** %6, align 8
  %49 = load i64**, i64*** %4, align 8
  store i64* %48, i64** %49, align 8
  br label %50

50:                                               ; preds = %47, %46
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
