; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_debug_dma_sync_single_range_for_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_debug_dma_sync_single_range_for_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_debug_entry = type { i64, i32, i64, i32, %struct.device*, i32 }

@global_disable = common dso_local global i32 0, align 4
@dma_debug_single = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_dma_sync_single_range_for_device(%struct.device* %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dma_debug_entry, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @global_disable, align 4
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %32

16:                                               ; preds = %5
  %17 = load i32, i32* @dma_debug_single, align 4
  %18 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %11, i32 0, i32 5
  store i32 %17, i32* %18, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %11, i32 0, i32 4
  store %struct.device* %19, %struct.device** %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %11, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %23, %24
  %26 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %11, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = load i32, i32* %10, align 4
  %28 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %11, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %11, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = call i32 @check_sync(%struct.device* %30, %struct.dma_debug_entry* %11, i32 0)
  br label %32

32:                                               ; preds = %16, %15
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @check_sync(%struct.device*, %struct.dma_debug_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
