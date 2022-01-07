; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_debug_dma_free_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_debug_dma_free_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_debug_entry = type { i64, i32, i32, i32, %struct.device*, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@dma_debug_coherent = common dso_local global i32 0, align 4
@global_disable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_dma_free_coherent(%struct.device* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_debug_entry, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %9, i32 0, i32 1
  %13 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %9, i32 0, i32 2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %9, i32 0, i32 3
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @virt_to_phys(i8* %17)
  store i32 %18, i32* %16, align 8
  %19 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %9, i32 0, i32 4
  %20 = load %struct.device*, %struct.device** %5, align 8
  store %struct.device* %20, %struct.device** %19, align 8
  %21 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %9, i32 0, i32 5
  %22 = load i32, i32* @dma_debug_coherent, align 4
  store i32 %22, i32* %21, align 8
  %23 = load i32, i32* @global_disable, align 4
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %29

27:                                               ; preds = %4
  %28 = call i32 @check_unmap(%struct.dma_debug_entry* %9)
  br label %29

29:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @check_unmap(%struct.dma_debug_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
