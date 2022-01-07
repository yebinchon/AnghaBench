; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_rtl8225_host_pci_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_rtl8225_host_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@RFPinsOutput = common dso_local global i32 0, align 4
@RFPinsSelect = common dso_local global i32 0, align 4
@SW_CONTROL_GPIO = common dso_local global i32 0, align 4
@GP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rtl8225_host_pci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8225_host_pci_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load %struct.net_device*, %struct.net_device** %2, align 8
  %4 = load i32, i32* @RFPinsOutput, align 4
  %5 = call i32 @write_nic_word(%struct.net_device* %3, i32 %4, i32 1152)
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @rtl8185_rf_pins_enable(%struct.net_device* %6)
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = load i32, i32* @RFPinsSelect, align 4
  %10 = load i32, i32* @SW_CONTROL_GPIO, align 4
  %11 = or i32 136, %10
  %12 = call i32 @write_nic_word(%struct.net_device* %8, i32 %9, i32 %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = load i32, i32* @GP_ENABLE, align 4
  %15 = call i32 @write_nic_byte(%struct.net_device* %13, i32 %14, i32 0)
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @force_pci_posting(%struct.net_device* %16)
  %18 = call i32 @mdelay(i32 200)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = load i32, i32* @GP_ENABLE, align 4
  %21 = call i32 @write_nic_word(%struct.net_device* %19, i32 %20, i32 191)
  ret void
}

declare dso_local i32 @write_nic_word(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl8185_rf_pins_enable(%struct.net_device*) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @force_pci_posting(%struct.net_device*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
