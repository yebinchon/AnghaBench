; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_dm.c_dm_check_pbc_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_dm.c_dm_check_pbc_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32 }

@MAC_PINMUX_CFG = common dso_local global i32 0, align 4
@GPIOMUX_EN = common dso_local global i32 0, align 4
@GPIOSEL_GPIO = common dso_local global i32 0, align 4
@GPIO_IO_SEL = common dso_local global i32 0, align 4
@HAL_8192S_HW_GPIO_WPS_BIT = common dso_local global i32 0, align 4
@GPIO_IN = common dso_local global i32 0, align 4
@COMP_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"CheckPbcGPIO - %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"CheckPbcGPIO - PBC is pressed\0A\00", align 1
@BIT0 = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i32 0, align 4
@GPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm_check_pbc_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_check_pbc_gpio(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %5)
  store %struct.r8192_priv* %6, %struct.r8192_priv** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = load i32, i32* @MAC_PINMUX_CFG, align 4
  %9 = load i32, i32* @GPIOMUX_EN, align 4
  %10 = load i32, i32* @GPIOSEL_GPIO, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @write_nic_byte(%struct.net_device* %7, i32 %8, i32 %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = load i32, i32* @GPIO_IO_SEL, align 4
  %15 = call i32 @read_nic_byte(%struct.net_device* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @HAL_8192S_HW_GPIO_WPS_BIT, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = load i32, i32* @GPIO_IO_SEL, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @write_nic_byte(%struct.net_device* %20, i32 %21, i32 %22)
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = load i32, i32* @GPIO_IN, align 4
  %26 = call i32 @read_nic_byte(%struct.net_device* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @COMP_IO, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 255
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %43

33:                                               ; preds = %1
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @HAL_8192S_HW_GPIO_WPS_BIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* @COMP_IO, align 4
  %40 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %42 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %32, %38, %33
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
