; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_stop_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_stop_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_ep = type { %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@CONTROL = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@USBA_DMA_CH_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: timed out waiting for DMA FIFO to empty\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usba_ep*, i32*)* @stop_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stop_dma(%struct.usba_ep* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usba_ep*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usba_ep* %0, %struct.usba_ep** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %9 = load i32, i32* @CONTROL, align 4
  %10 = call i32 @usba_dma_writel(%struct.usba_ep* %8, i32 %9, i32 0)
  store i32 40, i32* %6, align 4
  br label %11

11:                                               ; preds = %25, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %16 = load i32, i32* @STATUS, align 4
  %17 = call i32 @usba_dma_readl(%struct.usba_ep* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @USBA_DMA_CH_EN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %28

23:                                               ; preds = %14
  %24 = call i32 @udelay(i32 1)
  br label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, -1
  store i32 %27, i32* %6, align 4
  br label %11

28:                                               ; preds = %22, %11
  %29 = load i32*, i32** %5, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %39 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %45 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %37
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @usba_dma_writel(%struct.usba_ep*, i32, i32) #1

declare dso_local i32 @usba_dma_readl(%struct.usba_ep*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
