; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_debug_dma_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_debug_dma_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_debug_entry = type { i64, i32, i32, i32, %struct.device*, i32 }

@global_disable = common dso_local global i32 0, align 4
@dma_debug_coherent = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_dma_alloc_coherent(%struct.device* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dma_debug_entry*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* @global_disable, align 4
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %48

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %48

21:                                               ; preds = %14
  %22 = call %struct.dma_debug_entry* (...) @dma_entry_alloc()
  store %struct.dma_debug_entry* %22, %struct.dma_debug_entry** %9, align 8
  %23 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %9, align 8
  %24 = icmp ne %struct.dma_debug_entry* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %48

26:                                               ; preds = %21
  %27 = load i32, i32* @dma_debug_coherent, align 4
  %28 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %9, align 8
  %29 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %9, align 8
  %32 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %31, i32 0, i32 4
  store %struct.device* %30, %struct.device** %32, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @virt_to_phys(i8* %33)
  %35 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %9, align 8
  %36 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %9, align 8
  %39 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %9, align 8
  %42 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %44 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %9, align 8
  %45 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %9, align 8
  %47 = call i32 @add_dma_entry(%struct.dma_debug_entry* %46)
  br label %48

48:                                               ; preds = %26, %25, %20, %13
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dma_debug_entry* @dma_entry_alloc(...) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i32 @add_dma_entry(%struct.dma_debug_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
