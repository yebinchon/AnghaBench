; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_davinci.c_phy_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_davinci.c_phy_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_PHY_CTRL = common dso_local global i32 0, align 4
@USBPHY_SESNDEN = common dso_local global i32 0, align 4
@USBPHY_VBDTCTEN = common dso_local global i32 0, align 4
@USBPHY_PHYPLLON = common dso_local global i32 0, align 4
@USBPHY_OSCPDWN = common dso_local global i32 0, align 4
@USBPHY_OTGPDWN = common dso_local global i32 0, align 4
@USBPHY_PHYPDWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @phy_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_off() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @USB_PHY_CTRL, align 4
  %3 = call i32 @__raw_readl(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @USBPHY_SESNDEN, align 4
  %5 = load i32, i32* @USBPHY_VBDTCTEN, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @USBPHY_PHYPLLON, align 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %1, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @USBPHY_OSCPDWN, align 4
  %13 = load i32, i32* @USBPHY_OTGPDWN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @USBPHY_PHYPDWN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %1, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @USB_PHY_CTRL, align 4
  %21 = call i32 @__raw_writel(i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
