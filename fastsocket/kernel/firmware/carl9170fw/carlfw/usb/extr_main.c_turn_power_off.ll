; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/usb/extr_main.c_turn_power_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/usb/extr_main.c_turn_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR9170_PHY_REG_ACTIVE = common dso_local global i32 0, align 4
@AR9170_PHY_ACTIVE_DIS = common dso_local global i32 0, align 4
@AR9170_PHY_REG_ADC_CTL = common dso_local global i32 0, align 4
@AR9170_PHY_ADC_CTL_OFF_PWDADC = common dso_local global i32 0, align 4
@AR9170_PHY_ADC_CTL_OFF_PWDDAC = common dso_local global i32 0, align 4
@AR9170_GPIO_REG_PORT_DATA = common dso_local global i32 0, align 4
@AR9170_GPIO_REG_PORT_TYPE = common dso_local global i32 0, align 4
@AR9170_PWR_REG_BASE = common dso_local global i32 0, align 4
@AR9170_MAC_REG_DMA_TRIGGER = common dso_local global i32 0, align 4
@AR9170_USB_REG_DMA_CTL = common dso_local global i32 0, align 4
@AR9170_USB_DMA_CTL_ENABLE_TO_DEVICE = common dso_local global i32 0, align 4
@AR9170_USB_DMA_CTL_ENABLE_FROM_DEVICE = common dso_local global i32 0, align 4
@AR9170_USB_DMA_CTL_UP_PACKET_MODE = common dso_local global i32 0, align 4
@AR9170_USB_DMA_CTL_DOWN_STREAM = common dso_local global i32 0, align 4
@AR9170_PTA_REG_DMA_MODE_CTRL = common dso_local global i32 0, align 4
@AR9170_PTA_DMA_MODE_CTRL_RESET = common dso_local global i32 0, align 4
@AR9170_PTA_DMA_MODE_CTRL_DISABLE_USB = common dso_local global i32 0, align 4
@AR9170_MAC_REG_POWER_STATE_CTRL = common dso_local global i32 0, align 4
@AR9170_MAC_POWER_STATE_CTRL_RESET = common dso_local global i32 0, align 4
@AR9170_PWR_REG_RESET = common dso_local global i32 0, align 4
@AR9170_PWR_RESET_COMMIT_RESET_MASK = common dso_local global i32 0, align 4
@AR9170_PWR_RESET_DMA_MASK = common dso_local global i32 0, align 4
@AR9170_PWR_RESET_WLAN_MASK = common dso_local global i32 0, align 4
@AHB_20_22MHZ = common dso_local global i32 0, align 4
@AR9170_PWR_REG_PLL_ADDAC = common dso_local global i32 0, align 4
@AR9170_PHY_REG_ADC_SERIAL_CTL = common dso_local global i32 0, align 4
@AR9170_PHY_ADC_SCTL_SEL_EXTERNAL_RADIO = common dso_local global i32 0, align 4
@AR9170_PHY_ADC_SCTL_SEL_INTERNAL_ADDAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @turn_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @turn_power_off() #0 {
  %1 = load i32, i32* @AR9170_PHY_REG_ACTIVE, align 4
  %2 = load i32, i32* @AR9170_PHY_ACTIVE_DIS, align 4
  %3 = call i32 @set(i32 %1, i32 %2)
  %4 = load i32, i32* @AR9170_PHY_REG_ADC_CTL, align 4
  %5 = load i32, i32* @AR9170_PHY_ADC_CTL_OFF_PWDADC, align 4
  %6 = or i32 -1610612736, %5
  %7 = load i32, i32* @AR9170_PHY_ADC_CTL_OFF_PWDDAC, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @set(i32 %4, i32 %8)
  %10 = load i32, i32* @AR9170_GPIO_REG_PORT_DATA, align 4
  %11 = call i32 @set(i32 %10, i32 0)
  %12 = load i32, i32* @AR9170_GPIO_REG_PORT_TYPE, align 4
  %13 = call i32 @set(i32 %12, i32 15)
  %14 = load i32, i32* @AR9170_PWR_REG_BASE, align 4
  %15 = call i32 @set(i32 %14, i32 262177)
  %16 = load i32, i32* @AR9170_MAC_REG_DMA_TRIGGER, align 4
  %17 = call i32 @set(i32 %16, i32 0)
  %18 = load i32, i32* @AR9170_USB_REG_DMA_CTL, align 4
  %19 = load i32, i32* @AR9170_USB_DMA_CTL_ENABLE_TO_DEVICE, align 4
  %20 = load i32, i32* @AR9170_USB_DMA_CTL_ENABLE_FROM_DEVICE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @AR9170_USB_DMA_CTL_UP_PACKET_MODE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @AR9170_USB_DMA_CTL_DOWN_STREAM, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = call i32 @andl(i32 %18, i32 %26)
  %28 = load i32, i32* @AR9170_PTA_REG_DMA_MODE_CTRL, align 4
  %29 = load i32, i32* @AR9170_PTA_DMA_MODE_CTRL_RESET, align 4
  %30 = call i32 @orl(i32 %28, i32 %29)
  %31 = load i32, i32* @AR9170_PTA_REG_DMA_MODE_CTRL, align 4
  %32 = load i32, i32* @AR9170_PTA_DMA_MODE_CTRL_RESET, align 4
  %33 = xor i32 %32, -1
  %34 = call i32 @andl(i32 %31, i32 %33)
  %35 = load i32, i32* @AR9170_PTA_REG_DMA_MODE_CTRL, align 4
  %36 = load i32, i32* @AR9170_PTA_DMA_MODE_CTRL_DISABLE_USB, align 4
  %37 = call i32 @orl(i32 %35, i32 %36)
  %38 = load i32, i32* @AR9170_MAC_REG_POWER_STATE_CTRL, align 4
  %39 = load i32, i32* @AR9170_MAC_POWER_STATE_CTRL_RESET, align 4
  %40 = call i32 @set(i32 %38, i32 %39)
  %41 = load i32, i32* @AR9170_PWR_REG_RESET, align 4
  %42 = load i32, i32* @AR9170_PWR_RESET_COMMIT_RESET_MASK, align 4
  %43 = load i32, i32* @AR9170_PWR_RESET_DMA_MASK, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @AR9170_PWR_RESET_WLAN_MASK, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @set(i32 %41, i32 %46)
  %48 = load i32, i32* @AR9170_PWR_REG_RESET, align 4
  %49 = call i32 @set(i32 %48, i32 0)
  %50 = load i32, i32* @AHB_20_22MHZ, align 4
  %51 = call i32 @clock_set(i32 %50, i32 0)
  %52 = load i32, i32* @AR9170_PWR_REG_PLL_ADDAC, align 4
  %53 = call i32 @set(i32 %52, i32 20835)
  %54 = load i32, i32* @AR9170_PHY_REG_ADC_SERIAL_CTL, align 4
  %55 = load i32, i32* @AR9170_PHY_ADC_SCTL_SEL_EXTERNAL_RADIO, align 4
  %56 = call i32 @set(i32 %54, i32 %55)
  %57 = call i32 @set(i32 1857692, i32 0)
  %58 = call i32 @set(i32 1857692, i32 0)
  %59 = call i32 @set(i32 1857692, i32 0)
  %60 = call i32 @set(i32 1857692, i32 0)
  %61 = call i32 @set(i32 1857692, i32 0)
  %62 = call i32 @set(i32 1857692, i32 0)
  %63 = call i32 @set(i32 1857692, i32 0)
  %64 = call i32 @set(i32 1857692, i32 248)
  %65 = call i32 @set(i32 1857692, i32 39)
  %66 = call i32 @set(i32 1857692, i32 249)
  %67 = call i32 @set(i32 1857692, i32 144)
  %68 = call i32 @set(i32 1857692, i32 4)
  %69 = call i32 @set(i32 1857692, i32 72)
  %70 = call i32 @set(i32 1857692, i32 25)
  %71 = call i32 @set(i32 1857692, i32 0)
  %72 = call i32 @set(i32 1857692, i32 0)
  %73 = call i32 @set(i32 1857692, i32 0)
  %74 = call i32 @set(i32 1857692, i32 0)
  %75 = call i32 @set(i32 1857692, i32 0)
  %76 = call i32 @set(i32 1857692, i32 112)
  %77 = call i32 @set(i32 1857692, i32 12)
  %78 = call i32 @set(i32 1857692, i32 0)
  %79 = call i32 @set(i32 1857692, i32 0)
  %80 = call i32 @set(i32 1857692, i32 0)
  %81 = call i32 @set(i32 1857692, i32 0)
  %82 = call i32 @set(i32 1857692, i32 0)
  %83 = call i32 @set(i32 1857692, i32 0)
  %84 = call i32 @set(i32 1857692, i32 0)
  %85 = call i32 @set(i32 1857692, i32 0)
  %86 = call i32 @set(i32 1857732, i32 0)
  %87 = load i32, i32* @AR9170_PHY_REG_ADC_SERIAL_CTL, align 4
  %88 = load i32, i32* @AR9170_PHY_ADC_SCTL_SEL_INTERNAL_ADDAC, align 4
  %89 = call i32 @set(i32 %87, i32 %88)
  ret void
}

declare dso_local i32 @set(i32, i32) #1

declare dso_local i32 @andl(i32, i32) #1

declare dso_local i32 @orl(i32, i32) #1

declare dso_local i32 @clock_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
