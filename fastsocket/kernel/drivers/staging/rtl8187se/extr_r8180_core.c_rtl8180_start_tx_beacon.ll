; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_start_tx_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_start_tx_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Enabling beacon TX\00", align 1
@AtimWnd = common dso_local global i32 0, align 4
@AtimWnd_AtimWnd = common dso_local global i32 0, align 4
@BintrItv = common dso_local global i32 0, align 4
@BintrItv_BintrItv = common dso_local global i32 0, align 4
@EPROM_CMD_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8180_start_tx_beacon(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = call i32 @DMESG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i32 @rtl8180_prepare_beacon(%struct.net_device* %5)
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @rtl8180_irq_disable(%struct.net_device* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @rtl8180_beacon_tx_enable(%struct.net_device* %9)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = load i32, i32* @AtimWnd, align 4
  %13 = call i32 @read_nic_word(%struct.net_device* %11, i32 %12)
  %14 = load i32, i32* @AtimWnd_AtimWnd, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  store i32 %16, i32* %3, align 4
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = load i32, i32* @AtimWnd, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @write_nic_word(%struct.net_device* %17, i32 %18, i32 %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = load i32, i32* @BintrItv, align 4
  %23 = call i32 @read_nic_word(%struct.net_device* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @BintrItv_BintrItv, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, 1000
  store i32 %29, i32* %3, align 4
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = load i32, i32* @BintrItv, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @write_nic_word(%struct.net_device* %30, i32 %31, i32 %32)
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = load i32, i32* @EPROM_CMD_NORMAL, align 4
  %36 = call i32 @rtl8180_set_mode(%struct.net_device* %34, i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = call i32 @rtl8185b_irq_enable(%struct.net_device* %37)
  ret void
}

declare dso_local i32 @DMESG(i8*) #1

declare dso_local i32 @rtl8180_prepare_beacon(%struct.net_device*) #1

declare dso_local i32 @rtl8180_irq_disable(%struct.net_device*) #1

declare dso_local i32 @rtl8180_beacon_tx_enable(%struct.net_device*) #1

declare dso_local i32 @read_nic_word(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl8180_set_mode(%struct.net_device*, i32) #1

declare dso_local i32 @rtl8185b_irq_enable(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
