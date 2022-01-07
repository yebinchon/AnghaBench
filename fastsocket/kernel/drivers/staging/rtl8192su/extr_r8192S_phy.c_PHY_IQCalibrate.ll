; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_PHY_IQCalibrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_PHY_IQCalibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@bMaskDWord = common dso_local global i32 0, align 4
@BIT27 = common dso_local global i32 0, align 4
@BIT28 = common dso_local global i32 0, align 4
@BIT30 = common dso_local global i32 0, align 4
@BIT31 = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i64 0, align 8
@RF90_PATH_C = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"PHY_IQCalibrate OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PHY_IQCalibrate(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i64], align 16
  %9 = alloca [4 x i32], align 16
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %317, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %13, label %320

13:                                               ; preds = %10
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = load i32, i32* @bMaskDWord, align 4
  %16 = call i32 @rtl8192_setBBreg(%struct.net_device* %14, i32 3076, i32 %15, i32 10507312)
  %17 = call i32 @udelay(i32 5)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = load i32, i32* @bMaskDWord, align 4
  %20 = call i32 @rtl8192_setBBreg(%struct.net_device* %18, i32 3080, i32 %19, i32 524516)
  %21 = call i32 @udelay(i32 5)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = load i32, i32* @bMaskDWord, align 4
  %24 = call i32 @rtl8192_setBBreg(%struct.net_device* %22, i32 3624, i32 %23, i32 -2139095040)
  %25 = call i32 @udelay(i32 5)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = load i32, i32* @bMaskDWord, align 4
  %28 = call i32 @rtl8192_setBBreg(%struct.net_device* %26, i32 3648, i32 %27, i32 34865480)
  %29 = call i32 @udelay(i32 5)
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = load i32, i32* @bMaskDWord, align 4
  %32 = call i32 @rtl8192_setBBreg(%struct.net_device* %30, i32 3652, i32 %31, i32 1746273442)
  %33 = call i32 @udelay(i32 5)
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = load i32, i32* @bMaskDWord, align 4
  %36 = call i32 @rtl8192_setBBreg(%struct.net_device* %34, i32 3660, i32 %35, i32 10449)
  %37 = call i32 @udelay(i32 5)
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = load i32, i32* @bMaskDWord, align 4
  %40 = call i32 @rtl8192_setBBreg(%struct.net_device* %38, i32 3680, i32 %39, i32 34865485)
  %41 = call i32 @udelay(i32 5)
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = load i32, i32* @bMaskDWord, align 4
  %44 = call i32 @rtl8192_setBBreg(%struct.net_device* %42, i32 3684, i32 %43, i32 672532666)
  %45 = call i32 @udelay(i32 5)
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = load i32, i32* @bMaskDWord, align 4
  %48 = call i32 @rtl8192_setBBreg(%struct.net_device* %46, i32 3692, i32 %47, i32 10449)
  %49 = call i32 @udelay(i32 5)
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = load i32, i32* @bMaskDWord, align 4
  %52 = call i32 @rtl8192_setBBreg(%struct.net_device* %50, i32 3656, i32 %51, i32 -83886079)
  %53 = call i32 @udelay(i32 5)
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = load i32, i32* @bMaskDWord, align 4
  %56 = call i32 @rtl8192_setBBreg(%struct.net_device* %54, i32 3656, i32 %55, i32 -134217727)
  %57 = call i32 @udelay(i32 2000)
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = load i32, i32* @bMaskDWord, align 4
  %60 = call i32 @rtl8192_setBBreg(%struct.net_device* %58, i32 3076, i32 %59, i32 10507315)
  %61 = call i32 @udelay(i32 5)
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = load i32, i32* @bMaskDWord, align 4
  %64 = call i32 @rtl8192_setBBreg(%struct.net_device* %62, i32 3080, i32 %63, i32 228)
  %65 = call i32 @udelay(i32 5)
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = load i32, i32* @bMaskDWord, align 4
  %68 = call i32 @rtl8192_setBBreg(%struct.net_device* %66, i32 3624, i32 %67, i32 0)
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = load i32, i32* @bMaskDWord, align 4
  %71 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %69, i32 3756, i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @BIT27, align 4
  %74 = load i32, i32* @BIT28, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @BIT30, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @BIT31, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %72, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %316, label %82

82:                                               ; preds = %13
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = load i32, i32* @bMaskDWord, align 4
  %85 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %83, i32 3200, i32 %84)
  %86 = and i32 %85, 1023
  store i32 %86, i32* %5, align 4
  %87 = load %struct.net_device*, %struct.net_device** %2, align 8
  %88 = load i32, i32* @bMaskDWord, align 4
  %89 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %87, i32 3732, i32 %88)
  %90 = and i32 %89, 67043328
  %91 = ashr i32 %90, 16
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %6, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = mul nsw i64 %93, %95
  %97 = sdiv i64 %96, 256
  %98 = trunc i64 %97 to i32
  %99 = load i64, i64* @RF90_PATH_A, align 8
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %99
  store i32 %98, i32* %100, align 4
  %101 = load %struct.net_device*, %struct.net_device** %2, align 8
  %102 = load i32, i32* @bMaskDWord, align 4
  %103 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %101, i32 3200, i32 %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = and i32 %104, -1024
  %106 = load i64, i64* @RF90_PATH_A, align 8
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %105, %108
  store i32 %109, i32* %4, align 4
  %110 = load %struct.net_device*, %struct.net_device** %2, align 8
  %111 = load i32, i32* @bMaskDWord, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @rtl8192_setBBreg(%struct.net_device* %110, i32 3200, i32 %111, i32 %112)
  %114 = call i32 @udelay(i32 5)
  %115 = load %struct.net_device*, %struct.net_device** %2, align 8
  %116 = load i32, i32* @bMaskDWord, align 4
  %117 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %115, i32 3740, i32 %116)
  %118 = and i32 %117, 67043328
  %119 = ashr i32 %118, 16
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %7, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = mul nsw i64 %121, %123
  %125 = sdiv i64 %124, 256
  %126 = load i64, i64* @RF90_PATH_C, align 8
  %127 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %126
  store i64 %125, i64* %127, align 8
  %128 = load %struct.net_device*, %struct.net_device** %2, align 8
  %129 = load i32, i32* @bMaskDWord, align 4
  %130 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %128, i32 3200, i32 %129)
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = and i32 %131, -4128769
  %133 = load i64, i64* @RF90_PATH_C, align 8
  %134 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = and i64 %135, 63
  %137 = trunc i64 %136 to i32
  %138 = shl i32 %137, 16
  %139 = or i32 %132, %138
  store i32 %139, i32* %4, align 4
  %140 = load %struct.net_device*, %struct.net_device** %2, align 8
  %141 = load i32, i32* @bMaskDWord, align 4
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @rtl8192_setBBreg(%struct.net_device* %140, i32 3200, i32 %141, i32 %142)
  %144 = load %struct.net_device*, %struct.net_device** %2, align 8
  %145 = load i32, i32* @bMaskDWord, align 4
  %146 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %144, i32 3220, i32 %145)
  store i32 %146, i32* %4, align 4
  %147 = load i32, i32* %4, align 4
  %148 = and i32 %147, 268435455
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %7, align 8
  %151 = and i64 %150, 960
  %152 = ashr i64 %151, 6
  %153 = shl i64 %152, 28
  %154 = or i64 %149, %153
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %4, align 4
  %156 = load %struct.net_device*, %struct.net_device** %2, align 8
  %157 = load i32, i32* @bMaskDWord, align 4
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @rtl8192_setBBreg(%struct.net_device* %156, i32 3220, i32 %157, i32 %158)
  %160 = call i32 @udelay(i32 5)
  %161 = load %struct.net_device*, %struct.net_device** %2, align 8
  %162 = load i32, i32* @bMaskDWord, align 4
  %163 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %161, i32 3092, i32 %162)
  store i32 %163, i32* %4, align 4
  %164 = load %struct.net_device*, %struct.net_device** %2, align 8
  %165 = load i32, i32* @bMaskDWord, align 4
  %166 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %164, i32 3748, i32 %165)
  %167 = and i32 %166, 67043328
  %168 = ashr i32 %167, 16
  %169 = sext i32 %168 to i64
  store i64 %169, i64* %6, align 8
  %170 = load i32, i32* %4, align 4
  %171 = and i32 %170, -1024
  %172 = zext i32 %171 to i64
  %173 = load i64, i64* %6, align 8
  %174 = or i64 %172, %173
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %4, align 4
  %176 = load %struct.net_device*, %struct.net_device** %2, align 8
  %177 = load i32, i32* @bMaskDWord, align 4
  %178 = load i32, i32* %4, align 4
  %179 = call i32 @rtl8192_setBBreg(%struct.net_device* %176, i32 3092, i32 %177, i32 %178)
  %180 = load %struct.net_device*, %struct.net_device** %2, align 8
  %181 = load i32, i32* @bMaskDWord, align 4
  %182 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %180, i32 3756, i32 %181)
  %183 = and i32 %182, 4128768
  %184 = ashr i32 %183, 16
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %7, align 8
  %186 = load i32, i32* %4, align 4
  %187 = and i32 %186, -64513
  %188 = zext i32 %187 to i64
  %189 = load i64, i64* %7, align 8
  %190 = shl i64 %189, 10
  %191 = or i64 %188, %190
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %4, align 4
  %193 = load %struct.net_device*, %struct.net_device** %2, align 8
  %194 = load i32, i32* @bMaskDWord, align 4
  %195 = load i32, i32* %4, align 4
  %196 = call i32 @rtl8192_setBBreg(%struct.net_device* %193, i32 3092, i32 %194, i32 %195)
  %197 = call i32 @udelay(i32 5)
  %198 = load %struct.net_device*, %struct.net_device** %2, align 8
  %199 = load i32, i32* @bMaskDWord, align 4
  %200 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %198, i32 3208, i32 %199)
  %201 = and i32 %200, 1023
  store i32 %201, i32* %5, align 4
  %202 = load %struct.net_device*, %struct.net_device** %2, align 8
  %203 = load i32, i32* @bMaskDWord, align 4
  %204 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %202, i32 3764, i32 %203)
  %205 = and i32 %204, 67043328
  %206 = ashr i32 %205, 16
  %207 = sext i32 %206 to i64
  store i64 %207, i64* %6, align 8
  %208 = load %struct.net_device*, %struct.net_device** %2, align 8
  %209 = load i32, i32* @bMaskDWord, align 4
  %210 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %208, i32 3208, i32 %209)
  store i32 %210, i32* %4, align 4
  %211 = load i64, i64* %6, align 8
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = mul nsw i64 %211, %213
  %215 = sdiv i64 %214, 256
  %216 = trunc i64 %215 to i32
  %217 = load i64, i64* @RF90_PATH_A, align 8
  %218 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %217
  store i32 %216, i32* %218, align 4
  %219 = load i32, i32* %4, align 4
  %220 = and i32 %219, -1024
  %221 = load i64, i64* @RF90_PATH_A, align 8
  %222 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %220, %223
  store i32 %224, i32* %4, align 4
  %225 = load %struct.net_device*, %struct.net_device** %2, align 8
  %226 = load i32, i32* @bMaskDWord, align 4
  %227 = load i32, i32* %4, align 4
  %228 = call i32 @rtl8192_setBBreg(%struct.net_device* %225, i32 3208, i32 %226, i32 %227)
  %229 = call i32 @udelay(i32 5)
  %230 = load %struct.net_device*, %struct.net_device** %2, align 8
  %231 = load i32, i32* @bMaskDWord, align 4
  %232 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %230, i32 3772, i32 %231)
  %233 = and i32 %232, 67043328
  %234 = ashr i32 %233, 16
  %235 = sext i32 %234 to i64
  store i64 %235, i64* %7, align 8
  %236 = load i64, i64* %7, align 8
  %237 = load i32, i32* %5, align 4
  %238 = sext i32 %237 to i64
  %239 = mul nsw i64 %236, %238
  %240 = sdiv i64 %239, 256
  %241 = load i64, i64* @RF90_PATH_C, align 8
  %242 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %241
  store i64 %240, i64* %242, align 8
  %243 = load %struct.net_device*, %struct.net_device** %2, align 8
  %244 = load i32, i32* @bMaskDWord, align 4
  %245 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %243, i32 3208, i32 %244)
  store i32 %245, i32* %4, align 4
  %246 = load i32, i32* %4, align 4
  %247 = and i32 %246, -4128769
  %248 = zext i32 %247 to i64
  %249 = load i64, i64* @RF90_PATH_C, align 8
  %250 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = and i64 %251, 63
  %253 = shl i64 %252, 16
  %254 = or i64 %248, %253
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %4, align 4
  %256 = load %struct.net_device*, %struct.net_device** %2, align 8
  %257 = load i32, i32* @bMaskDWord, align 4
  %258 = load i32, i32* %4, align 4
  %259 = call i32 @rtl8192_setBBreg(%struct.net_device* %256, i32 3208, i32 %257, i32 %258)
  %260 = load %struct.net_device*, %struct.net_device** %2, align 8
  %261 = load i32, i32* @bMaskDWord, align 4
  %262 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %260, i32 3228, i32 %261)
  store i32 %262, i32* %4, align 4
  %263 = load i32, i32* %4, align 4
  %264 = and i32 %263, 268435455
  %265 = sext i32 %264 to i64
  %266 = load i64, i64* %7, align 8
  %267 = and i64 %266, 960
  %268 = ashr i64 %267, 6
  %269 = shl i64 %268, 28
  %270 = or i64 %265, %269
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %4, align 4
  %272 = load %struct.net_device*, %struct.net_device** %2, align 8
  %273 = load i32, i32* @bMaskDWord, align 4
  %274 = load i32, i32* %4, align 4
  %275 = call i32 @rtl8192_setBBreg(%struct.net_device* %272, i32 3228, i32 %273, i32 %274)
  %276 = call i32 @udelay(i32 5)
  %277 = load %struct.net_device*, %struct.net_device** %2, align 8
  %278 = load i32, i32* @bMaskDWord, align 4
  %279 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %277, i32 3100, i32 %278)
  store i32 %279, i32* %4, align 4
  %280 = load %struct.net_device*, %struct.net_device** %2, align 8
  %281 = load i32, i32* @bMaskDWord, align 4
  %282 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %280, i32 3780, i32 %281)
  %283 = and i32 %282, 67043328
  %284 = ashr i32 %283, 16
  %285 = sext i32 %284 to i64
  store i64 %285, i64* %6, align 8
  %286 = load i32, i32* %4, align 4
  %287 = and i32 %286, -1024
  %288 = zext i32 %287 to i64
  %289 = load i64, i64* %6, align 8
  %290 = or i64 %288, %289
  %291 = trunc i64 %290 to i32
  store i32 %291, i32* %4, align 4
  %292 = load %struct.net_device*, %struct.net_device** %2, align 8
  %293 = load i32, i32* @bMaskDWord, align 4
  %294 = load i32, i32* %4, align 4
  %295 = call i32 @rtl8192_setBBreg(%struct.net_device* %292, i32 3100, i32 %293, i32 %294)
  %296 = load %struct.net_device*, %struct.net_device** %2, align 8
  %297 = load i32, i32* @bMaskDWord, align 4
  %298 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %296, i32 3788, i32 %297)
  %299 = and i32 %298, 4128768
  %300 = ashr i32 %299, 16
  %301 = sext i32 %300 to i64
  store i64 %301, i64* %7, align 8
  %302 = load i32, i32* %4, align 4
  %303 = and i32 %302, -64513
  %304 = zext i32 %303 to i64
  %305 = load i64, i64* %7, align 8
  %306 = shl i64 %305, 10
  %307 = or i64 %304, %306
  %308 = trunc i64 %307 to i32
  store i32 %308, i32* %4, align 4
  %309 = load %struct.net_device*, %struct.net_device** %2, align 8
  %310 = load i32, i32* @bMaskDWord, align 4
  %311 = load i32, i32* %4, align 4
  %312 = call i32 @rtl8192_setBBreg(%struct.net_device* %309, i32 3100, i32 %310, i32 %311)
  %313 = call i32 @udelay(i32 5)
  %314 = load i32, i32* @COMP_INIT, align 4
  %315 = call i32 @RT_TRACE(i32 %314, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %320

316:                                              ; preds = %13
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %3, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %3, align 4
  br label %10

320:                                              ; preds = %82, %10
  ret void
}

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl8192_QueryBBReg(%struct.net_device*, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
