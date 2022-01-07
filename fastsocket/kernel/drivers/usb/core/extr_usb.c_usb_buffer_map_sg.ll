; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_usb.c_usb_buffer_map_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_usb.c_usb_buffer_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.usb_bus* }
%struct.usb_bus = type { %struct.device* }
%struct.device = type { i32 }
%struct.scatterlist = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_buffer_map_sg(%struct.usb_device* %0, i32 %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_bus*, align 8
  %11 = alloca %struct.device*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %13 = icmp ne %struct.usb_device* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %4
  %15 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 0
  %17 = load %struct.usb_bus*, %struct.usb_bus** %16, align 8
  store %struct.usb_bus* %17, %struct.usb_bus** %10, align 8
  %18 = icmp ne %struct.usb_bus* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.usb_bus*, %struct.usb_bus** %10, align 8
  %21 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %20, i32 0, i32 0
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %11, align 8
  %23 = icmp ne %struct.device* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.device*, %struct.device** %11, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %19, %14, %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %54

32:                                               ; preds = %24
  %33 = load %struct.device*, %struct.device** %11, align 8
  %34 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = call i64 @dma_map_sg(%struct.device* %33, %struct.scatterlist* %34, i32 %35, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  %50 = sext i32 %49 to i64
  br label %51

51:                                               ; preds = %47, %46
  %52 = phi i64 [ %44, %46 ], [ %50, %47 ]
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %29
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i64 @dma_map_sg(%struct.device*, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
