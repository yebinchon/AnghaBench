; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_phy_calibration.c_phy_calibration_winbond.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_phy_calibration.c_phy_calibration_winbond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"[CAL] -> phy_calibration_winbond()\0A\00", align 1
@mac_ctrl = common dso_local global i32 0, align 4
@rf_ctrl = common dso_local global i32 0, align 4
@REG_MODE_CTRL = common dso_local global i32 0, align 4
@MASK_IQCAL_TONE_SEL = common dso_local global i32 0, align 4
@MASK_IQCAL_MODE = common dso_local global i32 0, align 4
@MASK_CALIB_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"[CAL]    MODE_CTRL (write) = 0x%08X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phy_calibration_winbond(%struct.hw_data* %0, i32 %1) #0 {
  %3 = alloca %struct.hw_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hw_data* %0, %struct.hw_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %9 = call i32 @hw_get_cxx_reg(%struct.hw_data* %8, i32 128, i32* @mac_ctrl)
  %10 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %11 = call i32 @hw_get_cxx_reg(%struct.hw_data* %10, i32 228, i32* @rf_ctrl)
  %12 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %13 = call i32 @hw_get_dxx_reg(%struct.hw_data* %12, i32 88, i32* %6)
  %14 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @_rxadc_dc_offset_cancellation_winbond(%struct.hw_data* %14, i32 %15)
  %17 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %18 = call i32 @_tx_iq_calibration_winbond(%struct.hw_data* %17)
  %19 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @_rx_iq_calibration_winbond(%struct.hw_data* %19, i32 %20)
  %22 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %23 = load i32, i32* @REG_MODE_CTRL, align 4
  %24 = call i32 @hw_get_dxx_reg(%struct.hw_data* %22, i32 %23, i32* %5)
  %25 = load i32, i32* @MASK_IQCAL_TONE_SEL, align 4
  %26 = load i32, i32* @MASK_IQCAL_MODE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MASK_CALIB_START, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %34 = load i32, i32* @REG_MODE_CTRL, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @hw_set_dxx_reg(%struct.hw_data* %33, i32 %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @PHY_DEBUG(i8* %39)
  %41 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %42 = load i32, i32* @mac_ctrl, align 4
  %43 = call i32 @hw_set_cxx_reg(%struct.hw_data* %41, i32 128, i32 %42)
  %44 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %45 = load i32, i32* @rf_ctrl, align 4
  %46 = call i32 @hw_set_cxx_reg(%struct.hw_data* %44, i32 228, i32 %45)
  %47 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @hw_set_dxx_reg(%struct.hw_data* %47, i32 88, i32 %48)
  %50 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %51 = call i32 @phy_init_rf(%struct.hw_data* %50)
  ret void
}

declare dso_local i32 @PHY_DEBUG(i8*) #1

declare dso_local i32 @hw_get_cxx_reg(%struct.hw_data*, i32, i32*) #1

declare dso_local i32 @hw_get_dxx_reg(%struct.hw_data*, i32, i32*) #1

declare dso_local i32 @_rxadc_dc_offset_cancellation_winbond(%struct.hw_data*, i32) #1

declare dso_local i32 @_tx_iq_calibration_winbond(%struct.hw_data*) #1

declare dso_local i32 @_rx_iq_calibration_winbond(%struct.hw_data*, i32) #1

declare dso_local i32 @hw_set_dxx_reg(%struct.hw_data*, i32, i32) #1

declare dso_local i32 @hw_set_cxx_reg(%struct.hw_data*, i32, i32) #1

declare dso_local i32 @phy_init_rf(%struct.hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
