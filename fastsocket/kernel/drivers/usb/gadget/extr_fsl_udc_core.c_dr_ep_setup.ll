; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_dr_ep_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_dr_ep_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@dr_regs = common dso_local global %struct.TYPE_2__* null, align 8
@EPCTRL_TX_DATA_TOGGLE_RST = common dso_local global i32 0, align 4
@EPCTRL_TX_ENABLE = common dso_local global i32 0, align 4
@EPCTRL_TX_EP_TYPE_SHIFT = common dso_local global i32 0, align 4
@EPCTRL_RX_DATA_TOGGLE_RST = common dso_local global i32 0, align 4
@EPCTRL_RX_ENABLE = common dso_local global i32 0, align 4
@EPCTRL_RX_EP_TYPE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8, i8)* @dr_ep_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_ep_setup(i8 zeroext %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dr_regs, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i8, i8* %4, align 1
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = call i32 @fsl_readl(i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i8, i8* %5, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load i8, i8* %4, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @EPCTRL_TX_DATA_TOGGLE_RST, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* @EPCTRL_TX_ENABLE, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i8, i8* %6, align 1
  %29 = zext i8 %28 to i32
  %30 = load i32, i32* @EPCTRL_TX_EP_TYPE_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %51

34:                                               ; preds = %3
  %35 = load i8, i8* %4, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @EPCTRL_RX_DATA_TOGGLE_RST, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* @EPCTRL_RX_ENABLE, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i8, i8* %6, align 1
  %46 = zext i8 %45 to i32
  %47 = load i32, i32* @EPCTRL_RX_EP_TYPE_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %41, %24
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dr_regs, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i8, i8* %4, align 1
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = call i32 @fsl_writel(i32 %52, i32* %58)
  ret void
}

declare dso_local i32 @fsl_readl(i32*) #1

declare dso_local i32 @fsl_writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
