; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_usb.c_usb_buffer_unmap_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_usb.c_usb_buffer_unmap_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.usb_bus* }
%struct.usb_bus = type { %struct.device* }
%struct.device = type { i32 }
%struct.scatterlist = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_buffer_unmap_sg(%struct.usb_device* %0, i32 %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_bus*, align 8
  %10 = alloca %struct.device*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %12 = icmp ne %struct.usb_device* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %4
  %14 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 0
  %16 = load %struct.usb_bus*, %struct.usb_bus** %15, align 8
  store %struct.usb_bus* %16, %struct.usb_bus** %9, align 8
  %17 = icmp ne %struct.usb_bus* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.usb_bus*, %struct.usb_bus** %9, align 8
  %20 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %10, align 8
  %22 = icmp ne %struct.device* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.device*, %struct.device** %10, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %18, %13, %4
  br label %42

29:                                               ; preds = %23
  %30 = load %struct.device*, %struct.device** %10, align 8
  %31 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = call i32 @dma_unmap_sg(%struct.device* %30, %struct.scatterlist* %31, i32 %32, i32 %40)
  br label %42

42:                                               ; preds = %39, %28
  ret void
}

declare dso_local i32 @dma_unmap_sg(%struct.device*, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
