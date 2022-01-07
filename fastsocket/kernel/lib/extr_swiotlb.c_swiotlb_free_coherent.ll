; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_swiotlb.c_swiotlb_free_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_swiotlb.c_swiotlb_free_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swiotlb_free_coherent(%struct.device* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @dma_to_phys(%struct.device* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = call i32 (...) @irqs_disabled()
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @is_swiotlb_buffer(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @get_order(i64 %21)
  %23 = call i32 @free_pages(i64 %20, i32 %22)
  br label %30

24:                                               ; preds = %4
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* @DMA_TO_DEVICE, align 4
  %29 = call i32 @do_unmap_single(%struct.device* %25, i8* %26, i64 %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %18
  ret void
}

declare dso_local i32 @dma_to_phys(%struct.device*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @is_swiotlb_buffer(i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @do_unmap_single(%struct.device*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
