; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-pnx4008.c_isp1301_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-pnx4008.c_isp1301_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MC1_DAT_SE0 = common dso_local global i32 0, align 4
@MC1_SPEED_REG = common dso_local global i32 0, align 4
@ISP1301_I2C_MODE_CONTROL_1 = common dso_local global i32 0, align 4
@ISP1301_I2C_REG_CLEAR_ADDR = common dso_local global i32 0, align 4
@MC2_BI_DI = common dso_local global i32 0, align 4
@MC2_PSW_EN = common dso_local global i32 0, align 4
@MC2_SPD_SUSP_CTRL = common dso_local global i32 0, align 4
@ISP1301_I2C_MODE_CONTROL_2 = common dso_local global i32 0, align 4
@OTG1_DM_PULLDOWN = common dso_local global i32 0, align 4
@OTG1_DP_PULLDOWN = common dso_local global i32 0, align 4
@ISP1301_I2C_OTG_CONTROL_1 = common dso_local global i32 0, align 4
@ISP1301_I2C_INTERRUPT_LATCH = common dso_local global i32 0, align 4
@ISP1301_I2C_INTERRUPT_FALLING = common dso_local global i32 0, align 4
@ISP1301_I2C_INTERRUPT_RISING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @isp1301_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1301_configure() #0 {
  %1 = load i32, i32* @MC1_DAT_SE0, align 4
  %2 = load i32, i32* @MC1_SPEED_REG, align 4
  %3 = or i32 %1, %2
  %4 = load i32, i32* @ISP1301_I2C_MODE_CONTROL_1, align 4
  %5 = call i32 @i2c_write(i32 %3, i32 %4)
  %6 = load i32, i32* @MC1_DAT_SE0, align 4
  %7 = load i32, i32* @MC1_SPEED_REG, align 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = load i32, i32* @ISP1301_I2C_MODE_CONTROL_1, align 4
  %11 = load i32, i32* @ISP1301_I2C_REG_CLEAR_ADDR, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @i2c_write(i32 %9, i32 %12)
  %14 = load i32, i32* @MC2_BI_DI, align 4
  %15 = load i32, i32* @MC2_PSW_EN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MC2_SPD_SUSP_CTRL, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @ISP1301_I2C_MODE_CONTROL_2, align 4
  %20 = call i32 @i2c_write(i32 %18, i32 %19)
  %21 = load i32, i32* @MC2_BI_DI, align 4
  %22 = load i32, i32* @MC2_PSW_EN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MC2_SPD_SUSP_CTRL, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* @ISP1301_I2C_MODE_CONTROL_2, align 4
  %28 = load i32, i32* @ISP1301_I2C_REG_CLEAR_ADDR, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @i2c_write(i32 %26, i32 %29)
  %31 = load i32, i32* @OTG1_DM_PULLDOWN, align 4
  %32 = load i32, i32* @OTG1_DP_PULLDOWN, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ISP1301_I2C_OTG_CONTROL_1, align 4
  %35 = call i32 @i2c_write(i32 %33, i32 %34)
  %36 = load i32, i32* @OTG1_DM_PULLDOWN, align 4
  %37 = load i32, i32* @OTG1_DP_PULLDOWN, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* @ISP1301_I2C_OTG_CONTROL_1, align 4
  %41 = load i32, i32* @ISP1301_I2C_REG_CLEAR_ADDR, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @i2c_write(i32 %39, i32 %42)
  %44 = load i32, i32* @ISP1301_I2C_INTERRUPT_LATCH, align 4
  %45 = load i32, i32* @ISP1301_I2C_REG_CLEAR_ADDR, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @i2c_write(i32 255, i32 %46)
  %48 = load i32, i32* @ISP1301_I2C_INTERRUPT_FALLING, align 4
  %49 = load i32, i32* @ISP1301_I2C_REG_CLEAR_ADDR, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @i2c_write(i32 255, i32 %50)
  %52 = load i32, i32* @ISP1301_I2C_INTERRUPT_RISING, align 4
  %53 = load i32, i32* @ISP1301_I2C_REG_CLEAR_ADDR, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @i2c_write(i32 255, i32 %54)
  ret void
}

declare dso_local i32 @i2c_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
