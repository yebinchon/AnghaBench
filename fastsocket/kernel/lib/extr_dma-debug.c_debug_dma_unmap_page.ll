; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_debug_dma_unmap_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_debug_dma_unmap_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_debug_entry = type { i64, i32, i32, i32, %struct.device* }

@dma_debug_page = common dso_local global i32 0, align 4
@global_disable = common dso_local global i32 0, align 4
@dma_debug_single = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_dma_unmap_page(%struct.device* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dma_debug_entry, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %11, i32 0, i32 1
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %11, i32 0, i32 2
  %17 = load i32, i32* @dma_debug_page, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %11, i32 0, i32 3
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %11, i32 0, i32 4
  %21 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %21, %struct.device** %20, align 8
  %22 = load i32, i32* @global_disable, align 4
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %34

26:                                               ; preds = %5
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @dma_debug_single, align 4
  %31 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %11, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = call i32 @check_unmap(%struct.dma_debug_entry* %11)
  br label %34

34:                                               ; preds = %32, %25
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @check_unmap(%struct.dma_debug_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
