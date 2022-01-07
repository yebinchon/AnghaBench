; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_swiotlb.c_unmap_single.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_swiotlb.c_unmap_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32, i64, i32)* @unmap_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_single(%struct.device* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @dma_to_phys(%struct.device* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @DMA_NONE, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @is_swiotlb_buffer(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @phys_to_virt(i32 %23)
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @do_unmap_single(%struct.device* %22, i32 %24, i64 %25, i32 %26)
  br label %38

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %38

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @phys_to_virt(i32 %34)
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @dma_mark_clean(i32 %35, i64 %36)
  br label %38

38:                                               ; preds = %33, %32, %21
  ret void
}

declare dso_local i32 @dma_to_phys(%struct.device*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @is_swiotlb_buffer(i32) #1

declare dso_local i32 @do_unmap_single(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @phys_to_virt(i32) #1

declare dso_local i32 @dma_mark_clean(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
