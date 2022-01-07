; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_isp1301_omap.c_b_peripheral.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_isp1301_omap.c_b_peripheral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1301 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@OTG_CTRL = common dso_local global i32 0, align 4
@OTG_XCEIV_OUTPUTS = common dso_local global i32 0, align 4
@ISP1301_OTG_CONTROL_1 = common dso_local global i32 0, align 4
@OTG1_DP_PULLUP = common dso_local global i32 0, align 4
@OTG1_DP_PULLDOWN = common dso_local global i32 0, align 4
@OTG_STATE_B_PERIPHERAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"  --> b_peripheral\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"2periph\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1301*)* @b_peripheral to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b_peripheral(%struct.isp1301* %0) #0 {
  %2 = alloca %struct.isp1301*, align 8
  %3 = alloca i32, align 4
  store %struct.isp1301* %0, %struct.isp1301** %2, align 8
  %4 = load i32, i32* @OTG_CTRL, align 4
  %5 = call i32 @omap_readl(i32 %4)
  %6 = load i32, i32* @OTG_XCEIV_OUTPUTS, align 4
  %7 = and i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @OTG_CTRL, align 4
  %10 = call i32 @omap_writel(i32 %8, i32 %9)
  %11 = load %struct.isp1301*, %struct.isp1301** %2, align 8
  %12 = getelementptr inbounds %struct.isp1301, %struct.isp1301* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @usb_gadget_vbus_connect(i32 %14)
  %16 = load %struct.isp1301*, %struct.isp1301** %2, align 8
  %17 = call i32 @enable_vbus_draw(%struct.isp1301* %16, i32 100)
  %18 = load %struct.isp1301*, %struct.isp1301** %2, align 8
  %19 = load i32, i32* @ISP1301_OTG_CONTROL_1, align 4
  %20 = load i32, i32* @OTG1_DP_PULLUP, align 4
  %21 = call i32 @isp1301_set_bits(%struct.isp1301* %18, i32 %19, i32 %20)
  %22 = load %struct.isp1301*, %struct.isp1301** %2, align 8
  %23 = load i32, i32* @ISP1301_OTG_CONTROL_1, align 4
  %24 = load i32, i32* @OTG1_DP_PULLDOWN, align 4
  %25 = call i32 @isp1301_clear_bits(%struct.isp1301* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @OTG_STATE_B_PERIPHERAL, align 4
  %27 = load %struct.isp1301*, %struct.isp1301** %2, align 8
  %28 = getelementptr inbounds %struct.isp1301, %struct.isp1301* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.isp1301*, %struct.isp1301** %2, align 8
  %32 = call i32 @dump_regs(%struct.isp1301* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @omap_readl(i32) #1

declare dso_local i32 @omap_writel(i32, i32) #1

declare dso_local i32 @usb_gadget_vbus_connect(i32) #1

declare dso_local i32 @enable_vbus_draw(%struct.isp1301*, i32) #1

declare dso_local i32 @isp1301_set_bits(%struct.isp1301*, i32, i32) #1

declare dso_local i32 @isp1301_clear_bits(%struct.isp1301*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @dump_regs(%struct.isp1301*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
