; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-au1xxx.c_au1xxx_stop_ehc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-au1xxx.c_au1xxx_stop_ehc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_HOST_CONFIG = common dso_local global i32 0, align 4
@USBH_DISABLE = common dso_local global i64 0, align 8
@USB_MCFG_EHCCLKEN = common dso_local global i64 0, align 8
@USB_MCFG_UCECLKEN = common dso_local global i64 0, align 8
@USB_MCFG_PHYPLLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @au1xxx_stop_ehc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xxx_stop_ehc() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @USB_HOST_CONFIG, align 4
  %3 = call i64 @au_readl(i32 %2)
  %4 = load i64, i64* @USBH_DISABLE, align 8
  %5 = xor i64 %4, -1
  %6 = and i64 %3, %5
  %7 = load i32, i32* @USB_HOST_CONFIG, align 4
  %8 = call i32 @au_writel(i64 %6, i32 %7)
  %9 = call i32 (...) @au_sync()
  %10 = call i32 @udelay(i32 1000)
  %11 = load i32, i32* @USB_HOST_CONFIG, align 4
  %12 = call i64 @au_readl(i32 %11)
  %13 = load i64, i64* @USB_MCFG_EHCCLKEN, align 8
  %14 = xor i64 %13, -1
  %15 = and i64 %12, %14
  store i64 %15, i64* %1, align 8
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @USB_MCFG_UCECLKEN, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %0
  %21 = load i64, i64* @USB_MCFG_PHYPLLEN, align 8
  %22 = xor i64 %21, -1
  %23 = load i64, i64* %1, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %1, align 8
  br label %25

25:                                               ; preds = %20, %0
  %26 = load i64, i64* %1, align 8
  %27 = load i32, i32* @USB_HOST_CONFIG, align 4
  %28 = call i32 @au_writel(i64 %26, i32 %27)
  %29 = call i32 (...) @au_sync()
  ret void
}

declare dso_local i32 @au_writel(i64, i32) #1

declare dso_local i64 @au_readl(i32) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
