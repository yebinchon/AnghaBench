; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-orion.c_orion_usb_phy_v1_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-orion.c_orion_usb_phy_v1_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }

@USB_CAUSE = common dso_local global i32 0, align 4
@USB_MASK = common dso_local global i32 0, align 4
@USB_CMD = common dso_local global i32 0, align 4
@USB_IPG = common dso_local global i32 0, align 4
@USB_PHY_PWR_CTRL = common dso_local global i32 0, align 4
@USB_PHY_TX_CTRL = common dso_local global i32 0, align 4
@USB_PHY_RX_CTRL = common dso_local global i32 0, align 4
@USB_PHY_IVREF_CTRL = common dso_local global i32 0, align 4
@USB_PHY_TST_GRP_CTRL = common dso_local global i32 0, align 4
@USB_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @orion_usb_phy_v1_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @orion_usb_phy_v1_setup(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %3 = load i32, i32* @USB_CAUSE, align 4
  %4 = call i32 @wrl(i32 %3, i32 0)
  %5 = load i32, i32* @USB_MASK, align 4
  %6 = call i32 @wrl(i32 %5, i32 0)
  %7 = load i32, i32* @USB_CMD, align 4
  %8 = load i32, i32* @USB_CMD, align 4
  %9 = call i32 @rdl(i32 %8)
  %10 = or i32 %9, 2
  %11 = call i32 @wrl(i32 %7, i32 %10)
  br label %12

12:                                               ; preds = %17, %1
  %13 = load i32, i32* @USB_CMD, align 4
  %14 = call i32 @rdl(i32 %13)
  %15 = and i32 %14, 2
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %12

18:                                               ; preds = %12
  %19 = load i32, i32* @USB_IPG, align 4
  %20 = load i32, i32* @USB_IPG, align 4
  %21 = call i32 @rdl(i32 %20)
  %22 = and i32 %21, -32513
  %23 = or i32 %22, 3072
  %24 = call i32 @wrl(i32 %19, i32 %23)
  %25 = load i32, i32* @USB_PHY_PWR_CTRL, align 4
  %26 = load i32, i32* @USB_PHY_PWR_CTRL, align 4
  %27 = call i32 @rdl(i32 %26)
  %28 = and i32 %27, -193
  %29 = or i32 %28, 64
  %30 = call i32 @wrl(i32 %25, i32 %29)
  %31 = load i32, i32* @USB_PHY_TX_CTRL, align 4
  %32 = load i32, i32* @USB_PHY_TX_CTRL, align 4
  %33 = call i32 @rdl(i32 %32)
  %34 = and i32 %33, -121
  %35 = or i32 %34, 2105408
  %36 = call i32 @wrl(i32 %31, i32 %35)
  %37 = load i32, i32* @USB_PHY_RX_CTRL, align 4
  %38 = load i32, i32* @USB_PHY_RX_CTRL, align 4
  %39 = call i32 @rdl(i32 %38)
  %40 = and i32 %39, -203424753
  %41 = or i32 %40, -1073741808
  %42 = call i32 @wrl(i32 %37, i32 %41)
  %43 = load i32, i32* @USB_PHY_IVREF_CTRL, align 4
  %44 = load i32, i32* @USB_PHY_IVREF_CTRL, align 4
  %45 = call i32 @rdl(i32 %44)
  %46 = and i32 %45, -524292
  %47 = or i32 %46, 50
  %48 = call i32 @wrl(i32 %43, i32 %47)
  %49 = load i32, i32* @USB_PHY_TST_GRP_CTRL, align 4
  %50 = load i32, i32* @USB_PHY_TST_GRP_CTRL, align 4
  %51 = call i32 @rdl(i32 %50)
  %52 = and i32 %51, -32769
  %53 = call i32 @wrl(i32 %49, i32 %52)
  %54 = load i32, i32* @USB_CMD, align 4
  %55 = load i32, i32* @USB_CMD, align 4
  %56 = call i32 @rdl(i32 %55)
  %57 = and i32 %56, -2
  %58 = call i32 @wrl(i32 %54, i32 %57)
  %59 = load i32, i32* @USB_CMD, align 4
  %60 = load i32, i32* @USB_CMD, align 4
  %61 = call i32 @rdl(i32 %60)
  %62 = or i32 %61, 2
  %63 = call i32 @wrl(i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %69, %18
  %65 = load i32, i32* @USB_CMD, align 4
  %66 = call i32 @rdl(i32 %65)
  %67 = and i32 %66, 2
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %64

70:                                               ; preds = %64
  %71 = load i32, i32* @USB_MODE, align 4
  %72 = call i32 @wrl(i32 %71, i32 19)
  ret void
}

declare dso_local i32 @wrl(i32, i32) #1

declare dso_local i32 @rdl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
