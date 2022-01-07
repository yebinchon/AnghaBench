; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_free_dma_table_data_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_free_dma_table_data_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_device = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [60 x i8] c"SEP Driver:--------> sep_free_dma_table_data_handler start\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"SEP Driver:<-------- sep_free_dma_table_data_handler end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sep_device*)* @sep_free_dma_table_data_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sep_free_dma_table_data_handler(%struct.sep_device* %0) #0 {
  %2 = alloca %struct.sep_device*, align 8
  store %struct.sep_device* %0, %struct.sep_device** %2, align 8
  %3 = call i32 @dbg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.sep_device*, %struct.sep_device** %2, align 8
  %5 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.sep_device*, %struct.sep_device** %2, align 8
  %8 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @sep_free_dma_pages(i64 %6, i64 %9, i32 0)
  %11 = load %struct.sep_device*, %struct.sep_device** %2, align 8
  %12 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.sep_device*, %struct.sep_device** %2, align 8
  %17 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.sep_device*, %struct.sep_device** %2, align 8
  %20 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @sep_free_dma_pages(i64 %18, i64 %21, i32 1)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.sep_device*, %struct.sep_device** %2, align 8
  %25 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.sep_device*, %struct.sep_device** %2, align 8
  %27 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.sep_device*, %struct.sep_device** %2, align 8
  %29 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.sep_device*, %struct.sep_device** %2, align 8
  %31 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = call i32 @dbg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @sep_free_dma_pages(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
