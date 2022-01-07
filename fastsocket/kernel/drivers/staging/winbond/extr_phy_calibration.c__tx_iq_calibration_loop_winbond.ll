; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_phy_calibration.c__tx_iq_calibration_loop_winbond.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_phy_calibration.c__tx_iq_calibration_loop_winbond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"[CAL] -> _tx_iq_calibration_loop()\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"[CAL]    ** a_2_threshold = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"[CAL]    ** b_2_threshold = %d\0A\00", align 1
@REG_MODE_CTRL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"[CAL]    MODE_CTRL (read) = 0x%08X\0A\00", align 1
@LOOP_TIMES = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"[CAL] [%d.] <_tx_iq_calibration_loop>\0A\00", align 1
@MASK_IQCAL_TONE_SEL = common dso_local global i32 0, align 4
@MASK_IQCAL_MODE = common dso_local global i32 0, align 4
@MASK_CALIB_START = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"[CAL]    MODE_CTRL (write) = 0x%08X\0A\00", align 1
@REG_CALIB_READ1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"[CAL]    CALIB_READ1 = 0x%08X\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"[CAL]    ** iqcal_tone_i0=%d, iqcal_tone_q0=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"[CAL]    ** iq_mag_0_tx=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"[CAL]    ** iqcal_tone_i = %d, iqcal_tone_q = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"[CAL]    ** rot_i_b = %d, rot_q_b = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"[CAL] ** <_tx_iq_calibration_loop> ERROR *******\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"[CAL] ** divisor=0 to calculate EPS and THETA !!\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"[CAL] ******************************************\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"[CAL]    ***** EPSILON/2 = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"[CAL]    ***** THETA/2   = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"[CAL] ** <_tx_iq_calibration_loop> *************\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"[CAL] ** VERIFY OK # %d !!\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"[CAL] ** <_tx_iq_calibration_loop> *********\0A\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"[CAL] ** TX_IQ_CALIBRATION (EPS,THETA) OK !!\0A\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"[CAL] **************************************\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"[CAL]    ** sin(b/2)=%d, cos(b/2)=%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"[CAL]    ** sin(b)=%d, cos(b)=%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"[CAL] ** cos(b)=0 !!\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"[CAL]    ** tx_cal_flt_b[0] = %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"[CAL]       tx_cal_flt_b[1] = %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"[CAL]       tx_cal_flt_b[2] = %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"[CAL]       tx_cal_flt_b[3] = %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"[CAL]       tx_cal[0] = %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"[CAL]       tx_cal[1] = %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"[CAL]       tx_cal[2] = %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"[CAL]       tx_cal[3] = %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"[CAL]    ** 0x54 = 0x%08X\0A\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"[CAL]    ** 0x3C = 0x%08X\0A\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"[CAL]    ** tx_cal_reg[0] = %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"[CAL]       tx_cal_reg[1] = %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"[CAL]       tx_cal_reg[2] = %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"[CAL]       tx_cal_reg[3] = %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"[CAL] ** TX_IQ_CALIBRATION SATUATION !!\0A\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"[CAL]    ** apply tx_cal[0] = %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"[CAL]       apply tx_cal[1] = %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"[CAL]       apply tx_cal[2] = %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"[CAL]       apply tx_cal[3] = %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"[CAL]    ** CALIB_DATA = 0x%08X\0A\00", align 1
@.str.44 = private unnamed_addr constant [40 x i8] c"[CAL]    ** TX_IQ_CALIBRATION = 0x%08X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_tx_iq_calibration_loop_winbond(%struct.hw_data* %0, i32 %1, i32 %2) #0 {
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
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.hw_data* %0, %struct.hw_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %35 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @PHY_DEBUG(i8* %38)
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @PHY_DEBUG(i8* %42)
  store i32 0, i32* %33, align 4
  %44 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %45 = load i32, i32* @REG_MODE_CTRL, align 4
  %46 = call i32 @hw_get_dxx_reg(%struct.hw_data* %44, i32 %45, i32* %8)
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @PHY_DEBUG(i8* %49)
  %51 = load i64, i64* @LOOP_TIMES, align 8
  store i64 %51, i64* %30, align 8
  br label %52

52:                                               ; preds = %291, %3
  %53 = load i64, i64* %30, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %656

55:                                               ; preds = %52
  %56 = load i64, i64* @LOOP_TIMES, align 8
  %57 = load i64, i64* %30, align 8
  %58 = sub nsw i64 %56, %57
  %59 = add nsw i64 %58, 1
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @PHY_DEBUG(i8* %60)
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  %62 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %63 = call i32 @hw_set_dxx_reg(%struct.hw_data* %62, i32 60, i32 0)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %657

66:                                               ; preds = %55
  store i32 0, i32* %34, align 4
  br label %67

67:                                               ; preds = %202, %66
  %68 = load i32, i32* %34, align 4
  %69 = icmp slt i32 %68, 10
  br i1 %69, label %70, label %205

70:                                               ; preds = %67
  %71 = load i32, i32* @MASK_IQCAL_TONE_SEL, align 4
  %72 = load i32, i32* @MASK_IQCAL_MODE, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* @MASK_IQCAL_MODE, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* @MASK_CALIB_START, align 4
  %82 = or i32 %81, 2
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* @MASK_CALIB_START, align 4
  %86 = or i32 %85, 2
  %87 = or i32 %86, 8
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %91 = load i32, i32* @REG_MODE_CTRL, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @hw_set_dxx_reg(%struct.hw_data* %90, i32 %91, i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 @PHY_DEBUG(i8* %96)
  %98 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %99 = load i32, i32* @REG_CALIB_READ1, align 4
  %100 = call i32 @hw_get_dxx_reg(%struct.hw_data* %98, i32 %99, i32* %29)
  %101 = load i32, i32* %29, align 4
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  %104 = call i32 @PHY_DEBUG(i8* %103)
  %105 = load i32, i32* %29, align 4
  %106 = and i32 %105, 8191
  %107 = call i32 @_s13_to_s32(i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %29, align 4
  %109 = and i32 %108, 67100672
  %110 = ashr i32 %109, 13
  %111 = call i32 @_s13_to_s32(i32 %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  %116 = call i32 @PHY_DEBUG(i8* %115)
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = mul nsw i32 %117, %118
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = mul nsw i32 %120, %121
  %123 = add nsw i32 %119, %122
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = call i64 @_sqrt(i32 %124)
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to i8*
  %130 = call i32 @PHY_DEBUG(i8* %129)
  %131 = load i32, i32* @MASK_CALIB_START, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %8, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %8, align 4
  %135 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %136 = load i32, i32* @REG_MODE_CTRL, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @hw_set_dxx_reg(%struct.hw_data* %135, i32 %136, i32 %137)
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = inttoptr i64 %140 to i8*
  %142 = call i32 @PHY_DEBUG(i8* %141)
  %143 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %144 = load i32, i32* @REG_MODE_CTRL, align 4
  %145 = call i32 @hw_get_dxx_reg(%struct.hw_data* %143, i32 %144, i32* %8)
  %146 = load i32, i32* @MASK_IQCAL_MODE, align 4
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %8, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* @MASK_CALIB_START, align 4
  %151 = or i32 %150, 3
  %152 = load i32, i32* %8, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %8, align 4
  %154 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %155 = load i32, i32* @REG_MODE_CTRL, align 4
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @hw_set_dxx_reg(%struct.hw_data* %154, i32 %155, i32 %156)
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = call i32 @PHY_DEBUG(i8* %160)
  %162 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %163 = load i32, i32* @REG_CALIB_READ1, align 4
  %164 = call i32 @hw_get_dxx_reg(%struct.hw_data* %162, i32 %163, i32* %29)
  %165 = load i32, i32* %29, align 4
  %166 = sext i32 %165 to i64
  %167 = inttoptr i64 %166 to i8*
  %168 = call i32 @PHY_DEBUG(i8* %167)
  %169 = load i32, i32* %29, align 4
  %170 = and i32 %169, 8191
  %171 = call i32 @_s13_to_s32(i32 %170)
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %29, align 4
  %173 = and i32 %172, 67100672
  %174 = ashr i32 %173, 13
  %175 = call i32 @_s13_to_s32(i32 %174)
  store i32 %175, i32* %13, align 4
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = inttoptr i64 %178 to i8*
  %180 = call i32 @PHY_DEBUG(i8* %179)
  %181 = load i32, i32* %34, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %70
  br label %202

184:                                              ; preds = %70
  %185 = load i32, i32* %31, align 4
  %186 = load i32, i32* %34, align 4
  %187 = sub nsw i32 %186, 1
  %188 = mul nsw i32 %185, %187
  %189 = load i32, i32* %12, align 4
  %190 = add nsw i32 %188, %189
  %191 = load i32, i32* %34, align 4
  %192 = sdiv i32 %190, %191
  store i32 %192, i32* %31, align 4
  %193 = load i32, i32* %32, align 4
  %194 = load i32, i32* %34, align 4
  %195 = sub nsw i32 %194, 1
  %196 = mul nsw i32 %193, %195
  %197 = load i32, i32* %13, align 4
  %198 = add nsw i32 %196, %197
  %199 = load i32, i32* %34, align 4
  %200 = sdiv i32 %198, %199
  store i32 %200, i32* %32, align 4
  br label %201

201:                                              ; preds = %184
  br label %202

202:                                              ; preds = %201, %183
  %203 = load i32, i32* %34, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %34, align 4
  br label %67

205:                                              ; preds = %67
  %206 = load i32, i32* %31, align 4
  store i32 %206, i32* %12, align 4
  %207 = load i32, i32* %32, align 4
  store i32 %207, i32* %13, align 4
  %208 = load i32, i32* %12, align 4
  %209 = load i32, i32* %10, align 4
  %210 = mul nsw i32 %208, %209
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* %11, align 4
  %213 = mul nsw i32 %211, %212
  %214 = add nsw i32 %210, %213
  %215 = sdiv i32 %214, 1024
  store i32 %215, i32* %15, align 4
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* %11, align 4
  %218 = mul nsw i32 %216, %217
  %219 = mul nsw i32 %218, -1
  %220 = load i32, i32* %13, align 4
  %221 = load i32, i32* %10, align 4
  %222 = mul nsw i32 %220, %221
  %223 = add nsw i32 %219, %222
  %224 = sdiv i32 %223, 1024
  store i32 %224, i32* %16, align 4
  %225 = load i32, i32* %15, align 4
  %226 = load i32, i32* %16, align 4
  %227 = sext i32 %226 to i64
  %228 = inttoptr i64 %227 to i8*
  %229 = call i32 @PHY_DEBUG(i8* %228)
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* %9, align 4
  %232 = mul nsw i32 %230, %231
  %233 = mul nsw i32 %232, 2
  %234 = sdiv i32 %233, 1024
  %235 = load i32, i32* %15, align 4
  %236 = sub nsw i32 %234, %235
  %237 = mul nsw i32 %236, 2
  store i32 %237, i32* %26, align 4
  %238 = load i32, i32* %26, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %205
  %241 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  %242 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0))
  %243 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0))
  br label %656

244:                                              ; preds = %205
  %245 = load i32, i32* %15, align 4
  %246 = mul nsw i32 %245, 32768
  %247 = load i32, i32* %26, align 4
  %248 = sdiv i32 %246, %247
  store i32 %248, i32* %20, align 4
  %249 = load i32, i32* %16, align 4
  %250 = mul nsw i32 %249, -32768
  %251 = load i32, i32* %26, align 4
  %252 = sdiv i32 %250, %251
  store i32 %252, i32* %21, align 4
  %253 = load i32, i32* %20, align 4
  %254 = sext i32 %253 to i64
  %255 = inttoptr i64 %254 to i8*
  %256 = call i32 @PHY_DEBUG(i8* %255)
  %257 = load i32, i32* %21, align 4
  %258 = sext i32 %257 to i64
  %259 = inttoptr i64 %258 to i8*
  %260 = call i32 @PHY_DEBUG(i8* %259)
  %261 = load i32, i32* %20, align 4
  %262 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %263 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %262, i32 0, i32 0
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* %21, align 4
  %265 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %266 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %265, i32 0, i32 1
  store i32 %264, i32* %266, align 4
  %267 = load i32, i32* %20, align 4
  %268 = call i32 @abs(i32 %267) #3
  %269 = load i32, i32* %6, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %292

271:                                              ; preds = %244
  %272 = load i32, i32* %21, align 4
  %273 = call i32 @abs(i32 %272) #3
  %274 = load i32, i32* %7, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %292

276:                                              ; preds = %271
  %277 = load i32, i32* %33, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %33, align 4
  %279 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0))
  %280 = load i32, i32* %33, align 4
  %281 = sext i32 %280 to i64
  %282 = inttoptr i64 %281 to i8*
  %283 = call i32 @PHY_DEBUG(i8* %282)
  %284 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0))
  %285 = load i32, i32* %33, align 4
  %286 = icmp sgt i32 %285, 2
  br i1 %286, label %287, label %291

287:                                              ; preds = %276
  %288 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0))
  %289 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0))
  %290 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %657

291:                                              ; preds = %276
  br label %52

292:                                              ; preds = %271, %244
  store i32 0, i32* %33, align 4
  br label %293

293:                                              ; preds = %292
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

311:                                              ; preds = %293
  %312 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  %313 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0))
  %314 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0))
  br label %656

315:                                              ; preds = %293
  %316 = load i32, i32* %25, align 4
  %317 = sdiv i32 41943040, %316
  %318 = load i32, i32* %24, align 4
  %319 = mul nsw i32 %317, %318
  store i32 %319, i32* %27, align 4
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
  store i32 %329, i32* %28, align 4
  br label %336

330:                                              ; preds = %315
  %331 = load i32, i32* %25, align 4
  %332 = sdiv i32 167772160, %331
  %333 = load i32, i32* %22, align 4
  %334 = mul nsw i32 %332, %333
  %335 = mul nsw i32 %334, -1
  store i32 %335, i32* %28, align 4
  br label %336

336:                                              ; preds = %330, %324
  %337 = load i32, i32* %27, align 4
  %338 = load i32, i32* %20, align 4
  %339 = add nsw i32 32768, %338
  %340 = sdiv i32 %337, %339
  %341 = call i32 @_floor(i32 %340)
  %342 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  store i32 %341, i32* %342, align 16
  %343 = load i32, i32* %28, align 4
  %344 = load i32, i32* %20, align 4
  %345 = add nsw i32 32768, %344
  %346 = sdiv i32 %343, %345
  %347 = call i32 @_floor(i32 %346)
  %348 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  store i32 %347, i32* %348, align 4
  %349 = load i32, i32* %28, align 4
  %350 = load i32, i32* %20, align 4
  %351 = sub nsw i32 32768, %350
  %352 = sdiv i32 %349, %351
  %353 = call i32 @_floor(i32 %352)
  %354 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  store i32 %353, i32* %354, align 8
  %355 = load i32, i32* %27, align 4
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
  %381 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  %382 = load i32, i32* %381, align 8
  %383 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %382, i32* %383, align 8
  %384 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %385 = load i32, i32* %384, align 8
  %386 = add nsw i32 %385, 3
  %387 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %386, i32* %387, align 8
  %388 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %389 = load i32, i32* %388, align 8
  %390 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %389, i32* %390, align 4
  %391 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  %392 = load i32, i32* %391, align 4
  %393 = sub nsw i32 %392, 128
  %394 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  store i32 %393, i32* %394, align 4
  %395 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  %396 = load i32, i32* %395, align 4
  %397 = sub nsw i32 0, %396
  %398 = add nsw i32 %397, 1
  %399 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %398, i32* %399, align 16
  %400 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %401 = load i32, i32* %400, align 16
  %402 = sext i32 %401 to i64
  %403 = inttoptr i64 %402 to i8*
  %404 = call i32 @PHY_DEBUG(i8* %403)
  %405 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %406 = load i32, i32* %405, align 4
  %407 = sext i32 %406 to i64
  %408 = inttoptr i64 %407 to i8*
  %409 = call i32 @PHY_DEBUG(i8* %408)
  %410 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %411 = load i32, i32* %410, align 8
  %412 = sext i32 %411 to i64
  %413 = inttoptr i64 %412 to i8*
  %414 = call i32 @PHY_DEBUG(i8* %413)
  %415 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  %416 = load i32, i32* %415, align 4
  %417 = sext i32 %416 to i64
  %418 = inttoptr i64 %417 to i8*
  %419 = call i32 @PHY_DEBUG(i8* %418)
  %420 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %421 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %420, i32 0, i32 2
  %422 = load i32, i32* %421, align 4
  %423 = icmp eq i32 %422, 8194
  br i1 %423, label %424, label %451

424:                                              ; preds = %336
  %425 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %426 = call i32 @hw_get_dxx_reg(%struct.hw_data* %425, i32 84, i32* %29)
  %427 = load i32, i32* %29, align 4
  %428 = sext i32 %427 to i64
  %429 = inttoptr i64 %428 to i8*
  %430 = call i32 @PHY_DEBUG(i8* %429)
  %431 = load i32, i32* %29, align 4
  %432 = and i32 %431, -268435456
  %433 = lshr i32 %432, 28
  %434 = call i32 @_s4_to_s32(i32 %433)
  %435 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32 %434, i32* %435, align 16
  %436 = load i32, i32* %29, align 4
  %437 = and i32 %436, 251658240
  %438 = ashr i32 %437, 24
  %439 = call i32 @_s4_to_s32(i32 %438)
  %440 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  store i32 %439, i32* %440, align 4
  %441 = load i32, i32* %29, align 4
  %442 = and i32 %441, 15728640
  %443 = ashr i32 %442, 20
  %444 = call i32 @_s4_to_s32(i32 %443)
  %445 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  store i32 %444, i32* %445, align 8
  %446 = load i32, i32* %29, align 4
  %447 = and i32 %446, 983040
  %448 = ashr i32 %447, 16
  %449 = call i32 @_s4_to_s32(i32 %448)
  %450 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 3
  store i32 %449, i32* %450, align 4
  br label %478

451:                                              ; preds = %336
  %452 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %453 = call i32 @hw_get_dxx_reg(%struct.hw_data* %452, i32 60, i32* %29)
  %454 = load i32, i32* %29, align 4
  %455 = sext i32 %454 to i64
  %456 = inttoptr i64 %455 to i8*
  %457 = call i32 @PHY_DEBUG(i8* %456)
  %458 = load i32, i32* %29, align 4
  %459 = and i32 %458, -134217728
  %460 = lshr i32 %459, 27
  %461 = call i32 @_s5_to_s32(i32 %460)
  %462 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32 %461, i32* %462, align 16
  %463 = load i32, i32* %29, align 4
  %464 = and i32 %463, 132120576
  %465 = ashr i32 %464, 21
  %466 = call i32 @_s6_to_s32(i32 %465)
  %467 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  store i32 %466, i32* %467, align 4
  %468 = load i32, i32* %29, align 4
  %469 = and i32 %468, 2064384
  %470 = ashr i32 %469, 15
  %471 = call i32 @_s6_to_s32(i32 %470)
  %472 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  store i32 %471, i32* %472, align 8
  %473 = load i32, i32* %29, align 4
  %474 = and i32 %473, 31744
  %475 = ashr i32 %474, 10
  %476 = call i32 @_s5_to_s32(i32 %475)
  %477 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 3
  store i32 %476, i32* %477, align 4
  br label %478

478:                                              ; preds = %451, %424
  %479 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %480 = load i32, i32* %479, align 16
  %481 = sext i32 %480 to i64
  %482 = inttoptr i64 %481 to i8*
  %483 = call i32 @PHY_DEBUG(i8* %482)
  %484 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  %485 = load i32, i32* %484, align 4
  %486 = sext i32 %485 to i64
  %487 = inttoptr i64 %486 to i8*
  %488 = call i32 @PHY_DEBUG(i8* %487)
  %489 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  %490 = load i32, i32* %489, align 8
  %491 = sext i32 %490 to i64
  %492 = inttoptr i64 %491 to i8*
  %493 = call i32 @PHY_DEBUG(i8* %492)
  %494 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 3
  %495 = load i32, i32* %494, align 4
  %496 = sext i32 %495 to i64
  %497 = inttoptr i64 %496 to i8*
  %498 = call i32 @PHY_DEBUG(i8* %497)
  %499 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %500 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %499, i32 0, i32 2
  %501 = load i32, i32* %500, align 4
  %502 = icmp eq i32 %501, 8194
  br i1 %502, label %503, label %524

503:                                              ; preds = %478
  %504 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %505 = load i32, i32* %504, align 16
  %506 = icmp eq i32 %505, 7
  br i1 %506, label %511, label %507

507:                                              ; preds = %503
  %508 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %509 = load i32, i32* %508, align 16
  %510 = icmp eq i32 %509, -8
  br i1 %510, label %511, label %523

511:                                              ; preds = %507, %503
  %512 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 3
  %513 = load i32, i32* %512, align 4
  %514 = icmp eq i32 %513, 7
  br i1 %514, label %519, label %515

515:                                              ; preds = %511
  %516 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 3
  %517 = load i32, i32* %516, align 4
  %518 = icmp eq i32 %517, -8
  br i1 %518, label %519, label %523

519:                                              ; preds = %515, %511
  %520 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0))
  %521 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i64 0, i64 0))
  %522 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0))
  br label %656

523:                                              ; preds = %515, %507
  br label %545

524:                                              ; preds = %478
  %525 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %526 = load i32, i32* %525, align 16
  %527 = icmp eq i32 %526, 31
  br i1 %527, label %532, label %528

528:                                              ; preds = %524
  %529 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %530 = load i32, i32* %529, align 16
  %531 = icmp eq i32 %530, -32
  br i1 %531, label %532, label %544

532:                                              ; preds = %528, %524
  %533 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 3
  %534 = load i32, i32* %533, align 4
  %535 = icmp eq i32 %534, 31
  br i1 %535, label %540, label %536

536:                                              ; preds = %532
  %537 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 3
  %538 = load i32, i32* %537, align 4
  %539 = icmp eq i32 %538, -32
  br i1 %539, label %540, label %544

540:                                              ; preds = %536, %532
  %541 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0))
  %542 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i64 0, i64 0))
  %543 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0))
  br label %656

544:                                              ; preds = %536, %528
  br label %545

545:                                              ; preds = %544, %523
  %546 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %547 = load i32, i32* %546, align 16
  %548 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %549 = load i32, i32* %548, align 16
  %550 = add nsw i32 %547, %549
  %551 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %550, i32* %551, align 16
  %552 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %553 = load i32, i32* %552, align 4
  %554 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  %555 = load i32, i32* %554, align 4
  %556 = add nsw i32 %553, %555
  %557 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %556, i32* %557, align 4
  %558 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %559 = load i32, i32* %558, align 8
  %560 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  %561 = load i32, i32* %560, align 8
  %562 = add nsw i32 %559, %561
  %563 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %562, i32* %563, align 8
  %564 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  %565 = load i32, i32* %564, align 4
  %566 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 3
  %567 = load i32, i32* %566, align 4
  %568 = add nsw i32 %565, %567
  %569 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  store i32 %568, i32* %569, align 4
  %570 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %571 = load i32, i32* %570, align 16
  %572 = sext i32 %571 to i64
  %573 = inttoptr i64 %572 to i8*
  %574 = call i32 @PHY_DEBUG(i8* %573)
  %575 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %576 = load i32, i32* %575, align 4
  %577 = sext i32 %576 to i64
  %578 = inttoptr i64 %577 to i8*
  %579 = call i32 @PHY_DEBUG(i8* %578)
  %580 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %581 = load i32, i32* %580, align 8
  %582 = sext i32 %581 to i64
  %583 = inttoptr i64 %582 to i8*
  %584 = call i32 @PHY_DEBUG(i8* %583)
  %585 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  %586 = load i32, i32* %585, align 4
  %587 = sext i32 %586 to i64
  %588 = inttoptr i64 %587 to i8*
  %589 = call i32 @PHY_DEBUG(i8* %588)
  %590 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %591 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %590, i32 0, i32 2
  %592 = load i32, i32* %591, align 4
  %593 = icmp eq i32 %592, 8194
  br i1 %593, label %594, label %625

594:                                              ; preds = %545
  %595 = load i32, i32* %29, align 4
  %596 = and i32 %595, 65535
  store i32 %596, i32* %29, align 4
  %597 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %598 = load i32, i32* %597, align 16
  %599 = call i32 @_s32_to_s4(i32 %598)
  %600 = shl i32 %599, 28
  %601 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %602 = load i32, i32* %601, align 4
  %603 = call i32 @_s32_to_s4(i32 %602)
  %604 = shl i32 %603, 24
  %605 = or i32 %600, %604
  %606 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %607 = load i32, i32* %606, align 8
  %608 = call i32 @_s32_to_s4(i32 %607)
  %609 = shl i32 %608, 20
  %610 = or i32 %605, %609
  %611 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  %612 = load i32, i32* %611, align 4
  %613 = call i32 @_s32_to_s4(i32 %612)
  %614 = shl i32 %613, 16
  %615 = or i32 %610, %614
  %616 = load i32, i32* %29, align 4
  %617 = or i32 %616, %615
  store i32 %617, i32* %29, align 4
  %618 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %619 = load i32, i32* %29, align 4
  %620 = call i32 @hw_set_dxx_reg(%struct.hw_data* %618, i32 84, i32 %619)
  %621 = load i32, i32* %29, align 4
  %622 = sext i32 %621 to i64
  %623 = inttoptr i64 %622 to i8*
  %624 = call i32 @PHY_DEBUG(i8* %623)
  store i32 0, i32* %4, align 4
  br label %657

625:                                              ; preds = %545
  %626 = load i32, i32* %29, align 4
  %627 = and i32 %626, 1023
  store i32 %627, i32* %29, align 4
  %628 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %629 = load i32, i32* %628, align 16
  %630 = call i32 @_s32_to_s5(i32 %629)
  %631 = shl i32 %630, 27
  %632 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %633 = load i32, i32* %632, align 4
  %634 = call i32 @_s32_to_s6(i32 %633)
  %635 = shl i32 %634, 21
  %636 = or i32 %631, %635
  %637 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %638 = load i32, i32* %637, align 8
  %639 = call i32 @_s32_to_s6(i32 %638)
  %640 = shl i32 %639, 15
  %641 = or i32 %636, %640
  %642 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  %643 = load i32, i32* %642, align 4
  %644 = call i32 @_s32_to_s5(i32 %643)
  %645 = shl i32 %644, 10
  %646 = or i32 %641, %645
  %647 = load i32, i32* %29, align 4
  %648 = or i32 %647, %646
  store i32 %648, i32* %29, align 4
  %649 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %650 = load i32, i32* %29, align 4
  %651 = call i32 @hw_set_dxx_reg(%struct.hw_data* %649, i32 60, i32 %650)
  %652 = load i32, i32* %29, align 4
  %653 = sext i32 %652 to i64
  %654 = inttoptr i64 %653 to i8*
  %655 = call i32 @PHY_DEBUG(i8* %654)
  store i32 0, i32* %4, align 4
  br label %657

656:                                              ; preds = %540, %519, %311, %240, %52
  store i32 1, i32* %4, align 4
  br label %657

657:                                              ; preds = %656, %625, %594, %287, %65
  %658 = load i32, i32* %4, align 4
  ret i32 %658
}

declare dso_local i32 @PHY_DEBUG(i8*) #1

declare dso_local i32 @hw_get_dxx_reg(%struct.hw_data*, i32, i32*) #1

declare dso_local i32 @hw_set_dxx_reg(%struct.hw_data*, i32, i32) #1

declare dso_local i32 @_s13_to_s32(i32) #1

declare dso_local i64 @_sqrt(i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

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
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
