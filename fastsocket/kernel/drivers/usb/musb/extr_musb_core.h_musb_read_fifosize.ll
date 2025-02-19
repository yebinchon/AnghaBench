; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musb_core.h_musb_read_fifosize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musb_core.h_musb_read_fifosize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, i8* }
%struct.musb_hw_ep = type { i32, i32, i32 }

@MUSB_FIFOSIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musb*, %struct.musb_hw_ep*, i32)* @musb_read_fifosize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musb_read_fifosize(%struct.musb* %0, %struct.musb_hw_ep* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.musb*, align 8
  %6 = alloca %struct.musb_hw_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %5, align 8
  store %struct.musb_hw_ep* %1, %struct.musb_hw_ep** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.musb*, %struct.musb** %5, align 8
  %11 = getelementptr inbounds %struct.musb, %struct.musb* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MUSB_FIFOSIZE, align 4
  %16 = call i32 @MUSB_EP_OFFSET(i32 %14, i32 %15)
  %17 = call i32 @musb_readb(i8* %13, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %60

23:                                               ; preds = %3
  %24 = load %struct.musb*, %struct.musb** %5, align 8
  %25 = getelementptr inbounds %struct.musb, %struct.musb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %7, align 4
  %29 = shl i32 1, %28
  %30 = load %struct.musb*, %struct.musb** %5, align 8
  %31 = getelementptr inbounds %struct.musb, %struct.musb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 15
  %36 = shl i32 1, %35
  %37 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %6, align 8
  %38 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 240
  %41 = icmp eq i32 %40, 240
  br i1 %41, label %42, label %50

42:                                               ; preds = %23
  %43 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %6, align 8
  %44 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %6, align 8
  %47 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %6, align 8
  %49 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %48, i32 0, i32 2
  store i32 1, i32* %49, align 4
  store i32 0, i32* %4, align 4
  br label %60

50:                                               ; preds = %23
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, 240
  %53 = ashr i32 %52, 4
  %54 = shl i32 1, %53
  %55 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %6, align 8
  %56 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %6, align 8
  %58 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %57, i32 0, i32 2
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %42, %20
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @musb_readb(i8*, i32) #1

declare dso_local i32 @MUSB_EP_OFFSET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
