; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-au1xxx.c_au1xxx_start_ehc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-au1xxx.c_au1xxx_start_ehc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_HOST_CONFIG = common dso_local global i32 0, align 4
@USBH_ENABLE_CE = common dso_local global i32 0, align 4
@USBH_ENABLE_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @au1xxx_start_ehc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xxx_start_ehc() #0 {
  %1 = load i32, i32* @USB_HOST_CONFIG, align 4
  %2 = call i32 @au_readl(i32 %1)
  %3 = load i32, i32* @USBH_ENABLE_CE, align 4
  %4 = or i32 %2, %3
  %5 = load i32, i32* @USB_HOST_CONFIG, align 4
  %6 = call i32 @au_writel(i32 %4, i32 %5)
  %7 = call i32 (...) @au_sync()
  %8 = call i32 @udelay(i32 1000)
  %9 = load i32, i32* @USB_HOST_CONFIG, align 4
  %10 = call i32 @au_readl(i32 %9)
  %11 = load i32, i32* @USBH_ENABLE_INIT, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @USB_HOST_CONFIG, align 4
  %14 = call i32 @au_writel(i32 %12, i32 %13)
  %15 = call i32 (...) @au_sync()
  %16 = call i32 @udelay(i32 1000)
  ret void
}

declare dso_local i32 @au_writel(i32, i32) #1

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
