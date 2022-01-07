; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_phy_calibration.c_adjust_TXVGA_for_iq_mag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_phy_calibration.c_adjust_TXVGA_for_iq_mag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i32 }

@REG_MODE_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"[CAL]    MODE_CTRL (read) = 0x%08X\0A\00", align 1
@MASK_IQCAL_TONE_SEL = common dso_local global i32 0, align 4
@MASK_IQCAL_MODE = common dso_local global i32 0, align 4
@MASK_CALIB_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"[CAL]    MODE_CTRL (write) = 0x%08X\0A\00", align 1
@REG_CALIB_READ1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"[CAL]    CALIB_READ1 = 0x%08X\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"[CAL]    ** iqcal_tone_i0=%d, iqcal_tone_q0=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"[CAL]    ** auto_adjust_txvga_for_iq_mag_0_tx=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @adjust_TXVGA_for_iq_mag(%struct.hw_data* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.hw_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.hw_data* %0, %struct.hw_data** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %112, %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %115

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 %17, 6
  %19 = or i32 2409482, %18
  store i32 %19, i32* %12, align 4
  %20 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %21 = load i32, i32* %12, align 4
  %22 = or i32 83886080, %21
  %23 = call i32 @phy_set_rf_data(%struct.hw_data* %20, i32 5, i32 %22)
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %26 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = call i32 @msleep(i32 30)
  %28 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %29 = load i32, i32* @REG_MODE_CTRL, align 4
  %30 = call i32 @hw_get_dxx_reg(%struct.hw_data* %28, i32 %29, i32* %5)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %16
  store i8 0, i8* %2, align 1
  br label %123

33:                                               ; preds = %16
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @PHY_DEBUG(i8* %36)
  %38 = load i32, i32* @MASK_IQCAL_TONE_SEL, align 4
  %39 = load i32, i32* @MASK_IQCAL_MODE, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* @MASK_IQCAL_MODE, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @MASK_CALIB_START, align 4
  %49 = or i32 %48, 2
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @MASK_CALIB_START, align 4
  %53 = or i32 %52, 2
  %54 = or i32 %53, 8
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %58 = load i32, i32* @REG_MODE_CTRL, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @hw_set_dxx_reg(%struct.hw_data* %57, i32 %58, i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @PHY_DEBUG(i8* %63)
  %65 = call i32 @udelay(i32 1)
  %66 = call i32 @udelay(i32 300)
  %67 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %68 = load i32, i32* @REG_CALIB_READ1, align 4
  %69 = call i32 @hw_get_dxx_reg(%struct.hw_data* %67, i32 %68, i32* %6)
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @PHY_DEBUG(i8* %72)
  %74 = call i32 @udelay(i32 300)
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, 8191
  %77 = call i32 @_s13_to_s32(i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %6, align 4
  %79 = and i32 %78, 67100672
  %80 = ashr i32 %79, 13
  %81 = call i32 @_s13_to_s32(i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @PHY_DEBUG(i8* %85)
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = mul nsw i32 %90, %91
  %93 = add nsw i32 %89, %92
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i64 @_sqrt(i32 %94)
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = call i32 @PHY_DEBUG(i8* %99)
  %101 = load i32, i32* %10, align 4
  %102 = icmp sge i32 %101, 700
  br i1 %102, label %103, label %107

103:                                              ; preds = %33
  %104 = load i32, i32* %10, align 4
  %105 = icmp sle i32 %104, 1750
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %115

107:                                              ; preds = %103, %33
  %108 = load i32, i32* %10, align 4
  %109 = icmp sgt i32 %108, 1750
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 -2, i32* %4, align 4
  br label %112

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %111, %110
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %13

115:                                              ; preds = %106, %13
  %116 = load i32, i32* %10, align 4
  %117 = icmp sge i32 %116, 700
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i32, i32* %10, align 4
  %120 = icmp sle i32 %119, 1750
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i8 1, i8* %2, align 1
  br label %123

122:                                              ; preds = %118, %115
  store i8 0, i8* %2, align 1
  br label %123

123:                                              ; preds = %122, %121, %32
  %124 = load i8, i8* %2, align 1
  ret i8 %124
}

declare dso_local i32 @phy_set_rf_data(%struct.hw_data*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hw_get_dxx_reg(%struct.hw_data*, i32, i32*) #1

declare dso_local i32 @PHY_DEBUG(i8*) #1

declare dso_local i32 @hw_set_dxx_reg(%struct.hw_data*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @_s13_to_s32(i32) #1

declare dso_local i64 @_sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
