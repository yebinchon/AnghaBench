; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_twl4030-usb.c_twl4030_phy_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_twl4030-usb.c_twl4030_phy_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_usb = type { i32, i32, i32 }

@PHY_PWR_CTRL = common dso_local global i32 0, align 4
@TWL4030_MODULE_PM_RECEIVER = common dso_local global i32 0, align 4
@VUSB_DEDICATED2 = common dso_local global i32 0, align 4
@PHY_PWR_PHYPWD = common dso_local global i32 0, align 4
@PHY_CLK_CTRL = common dso_local global i32 0, align 4
@PHY_CLK_CTRL_CLOCKGATING_EN = common dso_local global i32 0, align 4
@PHY_CLK_CTRL_CLK32K_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.twl4030_usb*, i32)* @twl4030_phy_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl4030_phy_power(%struct.twl4030_usb* %0, i32 %1) #0 {
  %3 = alloca %struct.twl4030_usb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.twl4030_usb* %0, %struct.twl4030_usb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %7 = load i32, i32* @PHY_PWR_CTRL, align 4
  %8 = call i32 @twl4030_usb_read(%struct.twl4030_usb* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %2
  %12 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %13 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regulator_enable(i32 %14)
  %16 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %17 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regulator_enable(i32 %18)
  %20 = load i32, i32* @TWL4030_MODULE_PM_RECEIVER, align 4
  %21 = load i32, i32* @VUSB_DEDICATED2, align 4
  %22 = call i32 @twl4030_i2c_write_u8(i32 %20, i32 0, i32 %21)
  %23 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %24 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @regulator_enable(i32 %25)
  %27 = load i32, i32* @PHY_PWR_PHYPWD, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %32 = load i32, i32* @PHY_PWR_CTRL, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @twl4030_usb_write_verify(%struct.twl4030_usb* %31, i32 %32, i32 %33)
  %35 = icmp slt i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON(i32 %36)
  %38 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %39 = load i32, i32* @PHY_CLK_CTRL, align 4
  %40 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %41 = load i32, i32* @PHY_CLK_CTRL, align 4
  %42 = call i32 @twl4030_usb_read(%struct.twl4030_usb* %40, i32 %41)
  %43 = load i32, i32* @PHY_CLK_CTRL_CLOCKGATING_EN, align 4
  %44 = load i32, i32* @PHY_CLK_CTRL_CLK32K_EN, align 4
  %45 = or i32 %43, %44
  %46 = or i32 %42, %45
  %47 = call i32 @twl4030_usb_write(%struct.twl4030_usb* %38, i32 %39, i32 %46)
  br label %71

48:                                               ; preds = %2
  %49 = load i32, i32* @PHY_PWR_PHYPWD, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %53 = load i32, i32* @PHY_PWR_CTRL, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @twl4030_usb_write_verify(%struct.twl4030_usb* %52, i32 %53, i32 %54)
  %56 = icmp slt i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @WARN_ON(i32 %57)
  %59 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %60 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @regulator_disable(i32 %61)
  %63 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %64 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @regulator_disable(i32 %65)
  %67 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %68 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @regulator_disable(i32 %69)
  br label %71

71:                                               ; preds = %48, %11
  ret void
}

declare dso_local i32 @twl4030_usb_read(%struct.twl4030_usb*, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @twl4030_i2c_write_u8(i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @twl4030_usb_write_verify(%struct.twl4030_usb*, i32, i32) #1

declare dso_local i32 @twl4030_usb_write(%struct.twl4030_usb*, i32, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
