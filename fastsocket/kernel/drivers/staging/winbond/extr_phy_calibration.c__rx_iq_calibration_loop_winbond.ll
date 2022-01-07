; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_phy_calibration.c__rx_iq_calibration_loop_winbond.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_phy_calibration.c__rx_iq_calibration_loop_winbond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"[CAL] -> [5]_rx_iq_calibration_loop()\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"[CAL] ** factor = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"[CAL] ** RF_CTRL(0xE4) = 0x%08X\00", align 1
@REG_MODE_CTRL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"[CAL]    MODE_CTRL (read) = 0x%08X\0A\00", align 1
@LOOP_TIMES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"[CAL] [%d.] <_rx_iq_calibration_loop>\0A\00", align 1
@MASK_CALIB_START = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"[CAL]    MODE_CTRL (write) = 0x%08X\0A\00", align 1
@MASK_IQCAL_MODE = common dso_local global i32 0, align 4
@REG_CALIB_READ1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"[CAL]    CALIB_READ1 = 0x%08X\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"[CAL]    ** iqcal_tone_i = %d, iqcal_tone_q = %d\0A\00", align 1
@REG_CALIB_READ2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"[CAL]    CALIB_READ2 = 0x%08X\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"[CAL]    ** iqcal_image_i = %d, iqcal_image_q = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"[CAL]    ** rot_tone_i_b  = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"[CAL]    ** rot_tone_q_b  = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"[CAL]    ** rot_image_i_b = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"[CAL]    ** rot_image_q_b = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"[CAL] ** <_rx_iq_calibration_loop> ERROR *******\0A\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"[CAL] ** rot_tone_i_b=0 to calculate EPS and THETA !!\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"[CAL] ******************************************\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"[CAL]    ** iq_rsdl_gain_tx_d2 = %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"[CAL]    ** iq_rsdl_phase_tx_d2= %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"[CAL]    ***** EPSILON/2 = %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"[CAL]    ***** THETA/2   = %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"[CAL]    ** sin(b/2)=%d, cos(b/2)=%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"[CAL]    ** sin(b)=%d, cos(b)=%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"[CAL] ** cos(b)=0 !!\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"[CAL]    ** rx_cal_flt_b[0] = %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"[CAL]       rx_cal_flt_b[1] = %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"[CAL]       rx_cal_flt_b[2] = %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"[CAL]       rx_cal_flt_b[3] = %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"[CAL]    ** rx_cal[0] = %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"[CAL]       rx_cal[1] = %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"[CAL]       rx_cal[2] = %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"[CAL]       rx_cal[3] = %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"[CAL]    ** pwr_tone  = %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"[CAL]    ** pwr_image  = %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"[CAL] ** <_rx_iq_calibration_loop> *************\0A\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"[CAL] ** VERIFY OK # %d !!\0A\00", align 1
@.str.36 = private unnamed_addr constant [46 x i8] c"[CAL] ** <_rx_iq_calibration_loop> *********\0A\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"[CAL] ** RX_IQ_CALIBRATION OK !!\0A\00", align 1
@.str.38 = private unnamed_addr constant [46 x i8] c"[CAL] **************************************\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"[CAL]    ** 0x54 = 0x%08X\0A\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"[CAL]    ** rx_cal_reg[0] = %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"[CAL]       rx_cal_reg[1] = %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"[CAL]       rx_cal_reg[2] = %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"[CAL]       rx_cal_reg[3] = %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [41 x i8] c"[CAL] ** RX_IQ_CALIBRATION SATUATION !!\0A\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"[CAL]    ** apply rx_cal[0] = %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [34 x i8] c"[CAL]       apply rx_cal[1] = %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"[CAL]       apply rx_cal[2] = %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"[CAL]       apply rx_cal[3] = %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"[CAL]    ** CALIB_DATA = 0x%08X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_rx_iq_calibration_loop_winbond(%struct.hw_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [4 x i32], align 16
  %18 = alloca [4 x i32], align 16
  %19 = alloca [4 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store %struct.hw_data* %0, %struct.hw_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %38 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @PHY_DEBUG(i8* %41)
  %43 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %44 = call i32 @hw_get_cxx_reg(%struct.hw_data* %43, i32 128, i32* %28)
  %45 = call i32 @BIT(i32 19)
  %46 = load i32, i32* %28, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %28, align 4
  %48 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %49 = load i32, i32* %28, align 4
  %50 = call i32 @hw_set_cxx_reg(%struct.hw_data* %48, i32 128, i32 %49)
  %51 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %52 = call i32 @hw_get_cxx_reg(%struct.hw_data* %51, i32 228, i32* %28)
  %53 = call i32 @BIT(i32 0)
  %54 = load i32, i32* %28, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %28, align 4
  %56 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %57 = load i32, i32* %28, align 4
  %58 = call i32 @hw_set_cxx_reg(%struct.hw_data* %56, i32 228, i32 %57)
  %59 = load i32, i32* %28, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @PHY_DEBUG(i8* %61)
  %63 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %64 = call i32 @hw_set_dxx_reg(%struct.hw_data* %63, i32 88, i32 1145324612)
  %65 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %66 = load i32, i32* @REG_MODE_CTRL, align 4
  %67 = call i32 @hw_get_dxx_reg(%struct.hw_data* %65, i32 %66, i32* %8)
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @PHY_DEBUG(i8* %70)
  store i32 0, i32* %32, align 4
  %72 = load i32, i32* @LOOP_TIMES, align 4
  store i32 %72, i32* %29, align 4
  br label %73

73:                                               ; preds = %685, %457, %3
  %74 = load i32, i32* %29, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %692

76:                                               ; preds = %73
  %77 = load i32, i32* @LOOP_TIMES, align 4
  %78 = load i32, i32* %29, align 4
  %79 = sub nsw i32 %77, %78
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 @PHY_DEBUG(i8* %82)
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  store i32 0, i32* %36, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %37, align 4
  br label %84

84:                                               ; preds = %194, %76
  %85 = load i32, i32* %37, align 4
  %86 = icmp slt i32 %85, 10
  br i1 %86, label %87, label %197

87:                                               ; preds = %84
  %88 = load i32, i32* @MASK_CALIB_START, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %8, align 4
  %92 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %93 = load i32, i32* @REG_MODE_CTRL, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @hw_set_dxx_reg(%struct.hw_data* %92, i32 %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %693

98:                                               ; preds = %87
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = call i32 @PHY_DEBUG(i8* %101)
  %103 = load i32, i32* @MASK_IQCAL_MODE, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %8, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* @MASK_CALIB_START, align 4
  %108 = or i32 %107, 1
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %8, align 4
  %111 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %112 = load i32, i32* @REG_MODE_CTRL, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @hw_set_dxx_reg(%struct.hw_data* %111, i32 %112, i32 %113)
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = call i32 @PHY_DEBUG(i8* %117)
  %119 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %120 = load i32, i32* @REG_CALIB_READ1, align 4
  %121 = call i32 @hw_get_dxx_reg(%struct.hw_data* %119, i32 %120, i32* %28)
  %122 = load i32, i32* %28, align 4
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = call i32 @PHY_DEBUG(i8* %124)
  %126 = load i32, i32* %28, align 4
  %127 = and i32 %126, 8191
  %128 = call i32 @_s13_to_s32(i32 %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %28, align 4
  %130 = and i32 %129, 67100672
  %131 = ashr i32 %130, 13
  %132 = call i32 @_s13_to_s32(i32 %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to i8*
  %137 = call i32 @PHY_DEBUG(i8* %136)
  %138 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %139 = load i32, i32* @REG_CALIB_READ2, align 4
  %140 = call i32 @hw_get_dxx_reg(%struct.hw_data* %138, i32 %139, i32* %28)
  %141 = load i32, i32* %28, align 4
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to i8*
  %144 = call i32 @PHY_DEBUG(i8* %143)
  %145 = load i32, i32* %28, align 4
  %146 = and i32 %145, 8191
  %147 = call i32 @_s13_to_s32(i32 %146)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %28, align 4
  %149 = and i32 %148, 67100672
  %150 = ashr i32 %149, 13
  %151 = call i32 @_s13_to_s32(i32 %150)
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = inttoptr i64 %154 to i8*
  %156 = call i32 @PHY_DEBUG(i8* %155)
  %157 = load i32, i32* %37, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %98
  br label %194

160:                                              ; preds = %98
  %161 = load i32, i32* %35, align 4
  %162 = load i32, i32* %37, align 4
  %163 = sub nsw i32 %162, 1
  %164 = mul nsw i32 %161, %163
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %164, %165
  %167 = load i32, i32* %37, align 4
  %168 = sdiv i32 %166, %167
  store i32 %168, i32* %35, align 4
  %169 = load i32, i32* %36, align 4
  %170 = load i32, i32* %37, align 4
  %171 = sub nsw i32 %170, 1
  %172 = mul nsw i32 %169, %171
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %172, %173
  %175 = load i32, i32* %37, align 4
  %176 = sdiv i32 %174, %175
  store i32 %176, i32* %36, align 4
  %177 = load i32, i32* %33, align 4
  %178 = load i32, i32* %37, align 4
  %179 = sub nsw i32 %178, 1
  %180 = mul nsw i32 %177, %179
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %180, %181
  %183 = load i32, i32* %37, align 4
  %184 = sdiv i32 %182, %183
  store i32 %184, i32* %33, align 4
  %185 = load i32, i32* %34, align 4
  %186 = load i32, i32* %37, align 4
  %187 = sub nsw i32 %186, 1
  %188 = mul nsw i32 %185, %187
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %188, %189
  %191 = load i32, i32* %37, align 4
  %192 = sdiv i32 %190, %191
  store i32 %192, i32* %34, align 4
  br label %193

193:                                              ; preds = %160
  br label %194

194:                                              ; preds = %193, %159
  %195 = load i32, i32* %37, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %37, align 4
  br label %84

197:                                              ; preds = %84
  %198 = load i32, i32* %35, align 4
  store i32 %198, i32* %11, align 4
  %199 = load i32, i32* %36, align 4
  store i32 %199, i32* %12, align 4
  %200 = load i32, i32* %33, align 4
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %34, align 4
  store i32 %201, i32* %10, align 4
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* %9, align 4
  %204 = mul nsw i32 %202, %203
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* %10, align 4
  %207 = mul nsw i32 %205, %206
  %208 = add nsw i32 %204, %207
  %209 = sdiv i32 %208, 1024
  store i32 %209, i32* %13, align 4
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* %10, align 4
  %212 = mul nsw i32 %210, %211
  %213 = mul nsw i32 %212, -1
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* %9, align 4
  %216 = mul nsw i32 %214, %215
  %217 = add nsw i32 %213, %216
  %218 = sdiv i32 %217, 1024
  store i32 %218, i32* %14, align 4
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* %9, align 4
  %221 = mul nsw i32 %219, %220
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* %10, align 4
  %224 = mul nsw i32 %222, %223
  %225 = sub nsw i32 %221, %224
  %226 = sdiv i32 %225, 1024
  store i32 %226, i32* %15, align 4
  %227 = load i32, i32* %11, align 4
  %228 = load i32, i32* %10, align 4
  %229 = mul nsw i32 %227, %228
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* %9, align 4
  %232 = mul nsw i32 %230, %231
  %233 = add nsw i32 %229, %232
  %234 = sdiv i32 %233, 1024
  store i32 %234, i32* %16, align 4
  %235 = load i32, i32* %13, align 4
  %236 = sext i32 %235 to i64
  %237 = inttoptr i64 %236 to i8*
  %238 = call i32 @PHY_DEBUG(i8* %237)
  %239 = load i32, i32* %14, align 4
  %240 = sext i32 %239 to i64
  %241 = inttoptr i64 %240 to i8*
  %242 = call i32 @PHY_DEBUG(i8* %241)
  %243 = load i32, i32* %15, align 4
  %244 = sext i32 %243 to i64
  %245 = inttoptr i64 %244 to i8*
  %246 = call i32 @PHY_DEBUG(i8* %245)
  %247 = load i32, i32* %16, align 4
  %248 = sext i32 %247 to i64
  %249 = inttoptr i64 %248 to i8*
  %250 = call i32 @PHY_DEBUG(i8* %249)
  %251 = load i32, i32* %13, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %197
  %254 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0))
  %255 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i64 0, i64 0))
  %256 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0))
  br label %692

257:                                              ; preds = %197
  %258 = load i32, i32* %15, align 4
  %259 = mul nsw i32 %258, 32768
  %260 = load i32, i32* %13, align 4
  %261 = sdiv i32 %259, %260
  %262 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %263 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = sub nsw i32 %261, %264
  store i32 %265, i32* %20, align 4
  %266 = load i32, i32* %16, align 4
  %267 = mul nsw i32 %266, 32768
  %268 = load i32, i32* %13, align 4
  %269 = sdiv i32 %267, %268
  %270 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %271 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = sub nsw i32 %269, %272
  store i32 %273, i32* %21, align 4
  %274 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %275 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = sext i32 %276 to i64
  %278 = inttoptr i64 %277 to i8*
  %279 = call i32 @PHY_DEBUG(i8* %278)
  %280 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %281 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = sext i32 %282 to i64
  %284 = inttoptr i64 %283 to i8*
  %285 = call i32 @PHY_DEBUG(i8* %284)
  %286 = load i32, i32* %20, align 4
  %287 = sext i32 %286 to i64
  %288 = inttoptr i64 %287 to i8*
  %289 = call i32 @PHY_DEBUG(i8* %288)
  %290 = load i32, i32* %21, align 4
  %291 = sext i32 %290 to i64
  %292 = inttoptr i64 %291 to i8*
  %293 = call i32 @PHY_DEBUG(i8* %292)
  %294 = load i32, i32* %21, align 4
  %295 = call i32 @_sin_cos(i32 %294, i32* %22, i32* %24)
  %296 = load i32, i32* %21, align 4
  %297 = mul nsw i32 %296, 2
  %298 = call i32 @_sin_cos(i32 %297, i32* %23, i32* %25)
  %299 = load i32, i32* %22, align 4
  %300 = load i32, i32* %24, align 4
  %301 = sext i32 %300 to i64
  %302 = inttoptr i64 %301 to i8*
  %303 = call i32 @PHY_DEBUG(i8* %302)
  %304 = load i32, i32* %23, align 4
  %305 = load i32, i32* %25, align 4
  %306 = sext i32 %305 to i64
  %307 = inttoptr i64 %306 to i8*
  %308 = call i32 @PHY_DEBUG(i8* %307)
  %309 = load i32, i32* %25, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %257
  %312 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0))
  %313 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0))
  %314 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0))
  br label %692

315:                                              ; preds = %257
  %316 = load i32, i32* %25, align 4
  %317 = sdiv i32 41943040, %316
  %318 = load i32, i32* %24, align 4
  %319 = mul nsw i32 %317, %318
  store i32 %319, i32* %26, align 4
  %320 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %321 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = icmp eq i32 %322, 8194
  br i1 %323, label %324, label %330

324:                                              ; preds = %315
  %325 = load i32, i32* %25, align 4
  %326 = sdiv i32 41943040, %325
  %327 = load i32, i32* %22, align 4
  %328 = mul nsw i32 %326, %327
  %329 = mul nsw i32 %328, -1
  store i32 %329, i32* %27, align 4
  br label %336

330:                                              ; preds = %315
  %331 = load i32, i32* %25, align 4
  %332 = sdiv i32 167772160, %331
  %333 = load i32, i32* %22, align 4
  %334 = mul nsw i32 %332, %333
  %335 = mul nsw i32 %334, -1
  store i32 %335, i32* %27, align 4
  br label %336

336:                                              ; preds = %330, %324
  %337 = load i32, i32* %26, align 4
  %338 = load i32, i32* %20, align 4
  %339 = add nsw i32 32768, %338
  %340 = sdiv i32 %337, %339
  %341 = call i32 @_floor(i32 %340)
  %342 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  store i32 %341, i32* %342, align 16
  %343 = load i32, i32* %27, align 4
  %344 = load i32, i32* %20, align 4
  %345 = sub nsw i32 32768, %344
  %346 = sdiv i32 %343, %345
  %347 = call i32 @_floor(i32 %346)
  %348 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  store i32 %347, i32* %348, align 4
  %349 = load i32, i32* %27, align 4
  %350 = load i32, i32* %20, align 4
  %351 = add nsw i32 32768, %350
  %352 = sdiv i32 %349, %351
  %353 = call i32 @_floor(i32 %352)
  %354 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  store i32 %353, i32* %354, align 8
  %355 = load i32, i32* %26, align 4
  %356 = load i32, i32* %20, align 4
  %357 = sub nsw i32 32768, %356
  %358 = sdiv i32 %355, %357
  %359 = call i32 @_floor(i32 %358)
  %360 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  store i32 %359, i32* %360, align 4
  %361 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %362 = load i32, i32* %361, align 16
  %363 = sext i32 %362 to i64
  %364 = inttoptr i64 %363 to i8*
  %365 = call i32 @PHY_DEBUG(i8* %364)
  %366 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  %367 = load i32, i32* %366, align 4
  %368 = sext i32 %367 to i64
  %369 = inttoptr i64 %368 to i8*
  %370 = call i32 @PHY_DEBUG(i8* %369)
  %371 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  %372 = load i32, i32* %371, align 8
  %373 = sext i32 %372 to i64
  %374 = inttoptr i64 %373 to i8*
  %375 = call i32 @PHY_DEBUG(i8* %374)
  %376 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  %377 = load i32, i32* %376, align 4
  %378 = sext i32 %377 to i64
  %379 = inttoptr i64 %378 to i8*
  %380 = call i32 @PHY_DEBUG(i8* %379)
  %381 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %382 = load i32, i32* %381, align 16
  %383 = sub nsw i32 %382, 128
  %384 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %383, i32* %384, align 16
  %385 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  %386 = load i32, i32* %385, align 4
  %387 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %386, i32* %387, align 4
  %388 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  %389 = load i32, i32* %388, align 8
  %390 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %389, i32* %390, align 8
  %391 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  %392 = load i32, i32* %391, align 4
  %393 = sub nsw i32 %392, 128
  %394 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  store i32 %393, i32* %394, align 4
  %395 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %396 = load i32, i32* %395, align 16
  %397 = sext i32 %396 to i64
  %398 = inttoptr i64 %397 to i8*
  %399 = call i32 @PHY_DEBUG(i8* %398)
  %400 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %401 to i64
  %403 = inttoptr i64 %402 to i8*
  %404 = call i32 @PHY_DEBUG(i8* %403)
  %405 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %406 = load i32, i32* %405, align 8
  %407 = sext i32 %406 to i64
  %408 = inttoptr i64 %407 to i8*
  %409 = call i32 @PHY_DEBUG(i8* %408)
  %410 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  %411 = load i32, i32* %410, align 4
  %412 = sext i32 %411 to i64
  %413 = inttoptr i64 %412 to i8*
  %414 = call i32 @PHY_DEBUG(i8* %413)
  %415 = load i32, i32* %9, align 4
  %416 = load i32, i32* %9, align 4
  %417 = mul nsw i32 %415, %416
  %418 = load i32, i32* %10, align 4
  %419 = load i32, i32* %10, align 4
  %420 = mul nsw i32 %418, %419
  %421 = add nsw i32 %417, %420
  store i32 %421, i32* %30, align 4
  %422 = load i32, i32* %11, align 4
  %423 = load i32, i32* %11, align 4
  %424 = mul nsw i32 %422, %423
  %425 = load i32, i32* %12, align 4
  %426 = load i32, i32* %12, align 4
  %427 = mul nsw i32 %425, %426
  %428 = add nsw i32 %424, %427
  %429 = load i32, i32* %6, align 4
  %430 = mul nsw i32 %428, %429
  store i32 %430, i32* %31, align 4
  %431 = load i32, i32* %30, align 4
  %432 = sext i32 %431 to i64
  %433 = inttoptr i64 %432 to i8*
  %434 = call i32 @PHY_DEBUG(i8* %433)
  %435 = load i32, i32* %31, align 4
  %436 = sext i32 %435 to i64
  %437 = inttoptr i64 %436 to i8*
  %438 = call i32 @PHY_DEBUG(i8* %437)
  %439 = load i32, i32* %30, align 4
  %440 = load i32, i32* %31, align 4
  %441 = icmp sgt i32 %439, %440
  br i1 %441, label %442, label %458

442:                                              ; preds = %336
  %443 = load i32, i32* %32, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %32, align 4
  %445 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.34, i64 0, i64 0))
  %446 = load i32, i32* %32, align 4
  %447 = sext i32 %446 to i64
  %448 = inttoptr i64 %447 to i8*
  %449 = call i32 @PHY_DEBUG(i8* %448)
  %450 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0))
  %451 = load i32, i32* %32, align 4
  %452 = icmp sgt i32 %451, 2
  br i1 %452, label %453, label %457

453:                                              ; preds = %442
  %454 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.36, i64 0, i64 0))
  %455 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i64 0, i64 0))
  %456 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.38, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %693

457:                                              ; preds = %442
  br label %73

458:                                              ; preds = %336
  %459 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %460 = call i32 @hw_get_dxx_reg(%struct.hw_data* %459, i32 84, i32* %28)
  %461 = load i32, i32* %28, align 4
  %462 = sext i32 %461 to i64
  %463 = inttoptr i64 %462 to i8*
  %464 = call i32 @PHY_DEBUG(i8* %463)
  %465 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %466 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 4
  %468 = icmp eq i32 %467, 8194
  br i1 %468, label %469, label %489

469:                                              ; preds = %458
  %470 = load i32, i32* %28, align 4
  %471 = and i32 %470, 61440
  %472 = ashr i32 %471, 12
  %473 = call i32 @_s4_to_s32(i32 %472)
  %474 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32 %473, i32* %474, align 16
  %475 = load i32, i32* %28, align 4
  %476 = and i32 %475, 3840
  %477 = ashr i32 %476, 8
  %478 = call i32 @_s4_to_s32(i32 %477)
  %479 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  store i32 %478, i32* %479, align 4
  %480 = load i32, i32* %28, align 4
  %481 = and i32 %480, 240
  %482 = ashr i32 %481, 4
  %483 = call i32 @_s4_to_s32(i32 %482)
  %484 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  store i32 %483, i32* %484, align 8
  %485 = load i32, i32* %28, align 4
  %486 = and i32 %485, 15
  %487 = call i32 @_s4_to_s32(i32 %486)
  %488 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 3
  store i32 %487, i32* %488, align 4
  br label %510

489:                                              ; preds = %458
  %490 = load i32, i32* %28, align 4
  %491 = and i32 %490, -134217728
  %492 = lshr i32 %491, 27
  %493 = call i32 @_s5_to_s32(i32 %492)
  %494 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32 %493, i32* %494, align 16
  %495 = load i32, i32* %28, align 4
  %496 = and i32 %495, 132120576
  %497 = ashr i32 %496, 21
  %498 = call i32 @_s6_to_s32(i32 %497)
  %499 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  store i32 %498, i32* %499, align 4
  %500 = load i32, i32* %28, align 4
  %501 = and i32 %500, 2064384
  %502 = ashr i32 %501, 15
  %503 = call i32 @_s6_to_s32(i32 %502)
  %504 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  store i32 %503, i32* %504, align 8
  %505 = load i32, i32* %28, align 4
  %506 = and i32 %505, 31744
  %507 = ashr i32 %506, 10
  %508 = call i32 @_s5_to_s32(i32 %507)
  %509 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 3
  store i32 %508, i32* %509, align 4
  br label %510

510:                                              ; preds = %489, %469
  %511 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %512 = load i32, i32* %511, align 16
  %513 = sext i32 %512 to i64
  %514 = inttoptr i64 %513 to i8*
  %515 = call i32 @PHY_DEBUG(i8* %514)
  %516 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  %517 = load i32, i32* %516, align 4
  %518 = sext i32 %517 to i64
  %519 = inttoptr i64 %518 to i8*
  %520 = call i32 @PHY_DEBUG(i8* %519)
  %521 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  %522 = load i32, i32* %521, align 8
  %523 = sext i32 %522 to i64
  %524 = inttoptr i64 %523 to i8*
  %525 = call i32 @PHY_DEBUG(i8* %524)
  %526 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 3
  %527 = load i32, i32* %526, align 4
  %528 = sext i32 %527 to i64
  %529 = inttoptr i64 %528 to i8*
  %530 = call i32 @PHY_DEBUG(i8* %529)
  %531 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %532 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %531, i32 0, i32 2
  %533 = load i32, i32* %532, align 4
  %534 = icmp eq i32 %533, 8194
  br i1 %534, label %535, label %556

535:                                              ; preds = %510
  %536 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %537 = load i32, i32* %536, align 16
  %538 = icmp eq i32 %537, 7
  br i1 %538, label %543, label %539

539:                                              ; preds = %535
  %540 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %541 = load i32, i32* %540, align 16
  %542 = icmp eq i32 %541, -8
  br i1 %542, label %543, label %555

543:                                              ; preds = %539, %535
  %544 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 3
  %545 = load i32, i32* %544, align 4
  %546 = icmp eq i32 %545, 7
  br i1 %546, label %551, label %547

547:                                              ; preds = %543
  %548 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 3
  %549 = load i32, i32* %548, align 4
  %550 = icmp eq i32 %549, -8
  br i1 %550, label %551, label %555

551:                                              ; preds = %547, %543
  %552 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.36, i64 0, i64 0))
  %553 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.44, i64 0, i64 0))
  %554 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.38, i64 0, i64 0))
  br label %692

555:                                              ; preds = %547, %539
  br label %577

556:                                              ; preds = %510
  %557 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %558 = load i32, i32* %557, align 16
  %559 = icmp eq i32 %558, 31
  br i1 %559, label %564, label %560

560:                                              ; preds = %556
  %561 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %562 = load i32, i32* %561, align 16
  %563 = icmp eq i32 %562, -32
  br i1 %563, label %564, label %576

564:                                              ; preds = %560, %556
  %565 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 3
  %566 = load i32, i32* %565, align 4
  %567 = icmp eq i32 %566, 31
  br i1 %567, label %572, label %568

568:                                              ; preds = %564
  %569 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 3
  %570 = load i32, i32* %569, align 4
  %571 = icmp eq i32 %570, -32
  br i1 %571, label %572, label %576

572:                                              ; preds = %568, %564
  %573 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.36, i64 0, i64 0))
  %574 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.44, i64 0, i64 0))
  %575 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.38, i64 0, i64 0))
  br label %692

576:                                              ; preds = %568, %560
  br label %577

577:                                              ; preds = %576, %555
  %578 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %579 = load i32, i32* %578, align 16
  %580 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %581 = load i32, i32* %580, align 16
  %582 = add nsw i32 %579, %581
  %583 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %582, i32* %583, align 16
  %584 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %585 = load i32, i32* %584, align 4
  %586 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  %587 = load i32, i32* %586, align 4
  %588 = add nsw i32 %585, %587
  %589 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %588, i32* %589, align 4
  %590 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %591 = load i32, i32* %590, align 8
  %592 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  %593 = load i32, i32* %592, align 8
  %594 = add nsw i32 %591, %593
  %595 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %594, i32* %595, align 8
  %596 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  %597 = load i32, i32* %596, align 4
  %598 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 3
  %599 = load i32, i32* %598, align 4
  %600 = add nsw i32 %597, %599
  %601 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  store i32 %600, i32* %601, align 4
  %602 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %603 = load i32, i32* %602, align 16
  %604 = sext i32 %603 to i64
  %605 = inttoptr i64 %604 to i8*
  %606 = call i32 @PHY_DEBUG(i8* %605)
  %607 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %608 = load i32, i32* %607, align 4
  %609 = sext i32 %608 to i64
  %610 = inttoptr i64 %609 to i8*
  %611 = call i32 @PHY_DEBUG(i8* %610)
  %612 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %613 = load i32, i32* %612, align 8
  %614 = sext i32 %613 to i64
  %615 = inttoptr i64 %614 to i8*
  %616 = call i32 @PHY_DEBUG(i8* %615)
  %617 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  %618 = load i32, i32* %617, align 4
  %619 = sext i32 %618 to i64
  %620 = inttoptr i64 %619 to i8*
  %621 = call i32 @PHY_DEBUG(i8* %620)
  %622 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %623 = call i32 @hw_get_dxx_reg(%struct.hw_data* %622, i32 84, i32* %28)
  %624 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %625 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %624, i32 0, i32 2
  %626 = load i32, i32* %625, align 4
  %627 = icmp eq i32 %626, 8194
  br i1 %627, label %628, label %654

628:                                              ; preds = %577
  %629 = load i32, i32* %28, align 4
  %630 = and i32 %629, 65535
  store i32 %630, i32* %28, align 4
  %631 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %632 = load i32, i32* %631, align 16
  %633 = call i32 @_s32_to_s4(i32 %632)
  %634 = shl i32 %633, 12
  %635 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %636 = load i32, i32* %635, align 4
  %637 = call i32 @_s32_to_s4(i32 %636)
  %638 = shl i32 %637, 8
  %639 = or i32 %634, %638
  %640 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %641 = load i32, i32* %640, align 8
  %642 = call i32 @_s32_to_s4(i32 %641)
  %643 = shl i32 %642, 4
  %644 = or i32 %639, %643
  %645 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  %646 = load i32, i32* %645, align 4
  %647 = call i32 @_s32_to_s4(i32 %646)
  %648 = or i32 %644, %647
  %649 = load i32, i32* %28, align 4
  %650 = or i32 %649, %648
  store i32 %650, i32* %28, align 4
  %651 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %652 = load i32, i32* %28, align 4
  %653 = call i32 @hw_set_dxx_reg(%struct.hw_data* %651, i32 84, i32 %652)
  br label %685

654:                                              ; preds = %577
  %655 = load i32, i32* %28, align 4
  %656 = and i32 %655, 1023
  store i32 %656, i32* %28, align 4
  %657 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %658 = load i32, i32* %657, align 16
  %659 = call i32 @_s32_to_s5(i32 %658)
  %660 = shl i32 %659, 27
  %661 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %662 = load i32, i32* %661, align 4
  %663 = call i32 @_s32_to_s6(i32 %662)
  %664 = shl i32 %663, 21
  %665 = or i32 %660, %664
  %666 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %667 = load i32, i32* %666, align 8
  %668 = call i32 @_s32_to_s6(i32 %667)
  %669 = shl i32 %668, 15
  %670 = or i32 %665, %669
  %671 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  %672 = load i32, i32* %671, align 4
  %673 = call i32 @_s32_to_s5(i32 %672)
  %674 = shl i32 %673, 10
  %675 = or i32 %670, %674
  %676 = load i32, i32* %28, align 4
  %677 = or i32 %676, %675
  store i32 %677, i32* %28, align 4
  %678 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %679 = load i32, i32* %28, align 4
  %680 = call i32 @hw_set_dxx_reg(%struct.hw_data* %678, i32 84, i32 %679)
  %681 = load i32, i32* %29, align 4
  %682 = icmp eq i32 %681, 3
  br i1 %682, label %683, label %684

683:                                              ; preds = %654
  store i32 0, i32* %4, align 4
  br label %693

684:                                              ; preds = %654
  br label %685

685:                                              ; preds = %684, %628
  %686 = load i32, i32* %28, align 4
  %687 = sext i32 %686 to i64
  %688 = inttoptr i64 %687 to i8*
  %689 = call i32 @PHY_DEBUG(i8* %688)
  %690 = load i32, i32* %29, align 4
  %691 = add nsw i32 %690, -1
  store i32 %691, i32* %29, align 4
  br label %73

692:                                              ; preds = %572, %551, %311, %253, %73
  store i32 1, i32* %4, align 4
  br label %693

693:                                              ; preds = %692, %683, %453, %97
  %694 = load i32, i32* %4, align 4
  ret i32 %694
}

declare dso_local i32 @PHY_DEBUG(i8*) #1

declare dso_local i32 @hw_get_cxx_reg(%struct.hw_data*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hw_set_cxx_reg(%struct.hw_data*, i32, i32) #1

declare dso_local i32 @hw_set_dxx_reg(%struct.hw_data*, i32, i32) #1

declare dso_local i32 @hw_get_dxx_reg(%struct.hw_data*, i32, i32*) #1

declare dso_local i32 @_s13_to_s32(i32) #1

declare dso_local i32 @_sin_cos(i32, i32*, i32*) #1

declare dso_local i32 @_floor(i32) #1

declare dso_local i32 @_s4_to_s32(i32) #1

declare dso_local i32 @_s5_to_s32(i32) #1

declare dso_local i32 @_s6_to_s32(i32) #1

declare dso_local i32 @_s32_to_s4(i32) #1

declare dso_local i32 @_s32_to_s5(i32) #1

declare dso_local i32 @_s32_to_s6(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
