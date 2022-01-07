; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_PHY_IQCalibrateBcut.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_PHY_IQCalibrateBcut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@bMaskDWord = common dso_local global i32 0, align 4
@rFPGA0_XA_HSSIParameter1 = common dso_local global i32 0, align 4
@BIT8 = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"IQK -%d\0A\00", align 1
@BIT27 = common dso_local global i32 0, align 4
@BIT28 = common dso_local global i32 0, align 4
@BIT30 = common dso_local global i32 0, align 4
@BIT31 = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i64 0, align 8
@RF90_PATH_C = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"PHY_IQCalibrate OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PHY_IQCalibrateBcut(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i64], align 16
  %9 = alloca [4 x i32], align 16
  %10 = alloca [13 x i32], align 16
  %11 = alloca [13 x i32], align 16
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %13 = bitcast [13 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 52, i1 false)
  store i64 0, i64* %12, align 8
  %14 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 0
  store i32 3808, i32* %14, align 16
  %15 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 1
  store i32 3804, i32* %15, align 4
  %16 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 2
  store i32 3696, i32* %16, align 8
  %17 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 3
  store i32 3700, i32* %17, align 4
  %18 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 4
  store i32 3704, i32* %18, align 16
  %19 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 5
  store i32 3708, i32* %19, align 4
  %20 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 6
  store i32 3712, i32* %20, align 8
  %21 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 7
  store i32 3716, i32* %21, align 4
  %22 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 8
  store i32 3720, i32* %22, align 16
  %23 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 9
  store i32 3724, i32* %23, align 4
  %24 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 10
  store i32 3792, i32* %24, align 8
  %25 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 11
  store i32 3796, i32* %25, align 4
  %26 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 12
  store i32 3800, i32* %26, align 16
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %48, %1
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 13
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @bMaskDWord, align 4
  %37 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %31, i32 %35, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [13 x i32], [13 x i32]* %11, i64 0, i64 %39
  store i32 %37, i32* %40, align 4
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @bMaskDWord, align 4
  %47 = call i32 @rtl8192_setBBreg(%struct.net_device* %41, i32 %45, i32 %46, i32 1072534267)
  br label %48

48:                                               ; preds = %30
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %27

51:                                               ; preds = %27
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = load i32, i32* @rFPGA0_XA_HSSIParameter1, align 4
  %54 = load i32, i32* @BIT8, align 4
  %55 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %52, i32 %53, i32 %54)
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %12, align 8
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %396, %51
  %58 = load i32, i32* %3, align 4
  %59 = icmp slt i32 %58, 10
  br i1 %59, label %60, label %399

60:                                               ; preds = %57
  %61 = load i32, i32* @COMP_INIT, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i64, i64* %12, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %60
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = load i32, i32* @bMaskDWord, align 4
  %69 = call i32 @rtl8192_setBBreg(%struct.net_device* %67, i32 2080, i32 %68, i32 16777472)
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = load i32, i32* @bMaskDWord, align 4
  %72 = call i32 @rtl8192_setBBreg(%struct.net_device* %70, i32 2088, i32 %71, i32 16777472)
  br label %73

73:                                               ; preds = %66, %60
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = load i32, i32* @bMaskDWord, align 4
  %76 = call i32 @rtl8192_setBBreg(%struct.net_device* %74, i32 3076, i32 %75, i32 10507312)
  %77 = call i32 @udelay(i32 5)
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = load i32, i32* @bMaskDWord, align 4
  %80 = call i32 @rtl8192_setBBreg(%struct.net_device* %78, i32 3080, i32 %79, i32 524516)
  %81 = call i32 @udelay(i32 5)
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = load i32, i32* @bMaskDWord, align 4
  %84 = call i32 @rtl8192_setBBreg(%struct.net_device* %82, i32 3624, i32 %83, i32 -2139095040)
  %85 = call i32 @udelay(i32 5)
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = load i32, i32* @bMaskDWord, align 4
  %88 = call i32 @rtl8192_setBBreg(%struct.net_device* %86, i32 3648, i32 %87, i32 34865410)
  %89 = call i32 @udelay(i32 5)
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = load i32, i32* @bMaskDWord, align 4
  %92 = call i32 @rtl8192_setBBreg(%struct.net_device* %90, i32 3652, i32 %91, i32 1746273474)
  %93 = call i32 @udelay(i32 5)
  %94 = load %struct.net_device*, %struct.net_device** %2, align 8
  %95 = load i32, i32* @bMaskDWord, align 4
  %96 = call i32 @rtl8192_setBBreg(%struct.net_device* %94, i32 3660, i32 %95, i32 10449)
  %97 = call i32 @udelay(i32 5)
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = load i32, i32* @bMaskDWord, align 4
  %100 = call i32 @rtl8192_setBBreg(%struct.net_device* %98, i32 3680, i32 %99, i32 34865410)
  %101 = call i32 @udelay(i32 5)
  %102 = load %struct.net_device*, %struct.net_device** %2, align 8
  %103 = load i32, i32* @bMaskDWord, align 4
  %104 = call i32 @rtl8192_setBBreg(%struct.net_device* %102, i32 3684, i32 %103, i32 672533765)
  %105 = call i32 @udelay(i32 5)
  %106 = load %struct.net_device*, %struct.net_device** %2, align 8
  %107 = load i32, i32* @bMaskDWord, align 4
  %108 = call i32 @rtl8192_setBBreg(%struct.net_device* %106, i32 3656, i32 %107, i32 -83886080)
  %109 = call i32 @udelay(i32 5)
  %110 = load %struct.net_device*, %struct.net_device** %2, align 8
  %111 = load i32, i32* @bMaskDWord, align 4
  %112 = call i32 @rtl8192_setBBreg(%struct.net_device* %110, i32 3656, i32 %111, i32 -134217728)
  %113 = call i32 @udelay(i32 5)
  %114 = call i32 @udelay(i32 2000)
  %115 = load %struct.net_device*, %struct.net_device** %2, align 8
  %116 = load i32, i32* @bMaskDWord, align 4
  %117 = call i32 @rtl8192_setBBreg(%struct.net_device* %115, i32 3692, i32 %116, i32 33564881)
  %118 = call i32 @udelay(i32 5)
  %119 = load %struct.net_device*, %struct.net_device** %2, align 8
  %120 = load i32, i32* @bMaskDWord, align 4
  %121 = call i32 @rtl8192_setBBreg(%struct.net_device* %119, i32 3656, i32 %120, i32 -83886080)
  %122 = call i32 @udelay(i32 5)
  %123 = load %struct.net_device*, %struct.net_device** %2, align 8
  %124 = load i32, i32* @bMaskDWord, align 4
  %125 = call i32 @rtl8192_setBBreg(%struct.net_device* %123, i32 3656, i32 %124, i32 -134217728)
  %126 = call i32 @udelay(i32 2000)
  %127 = load %struct.net_device*, %struct.net_device** %2, align 8
  %128 = load i32, i32* @bMaskDWord, align 4
  %129 = call i32 @rtl8192_setBBreg(%struct.net_device* %127, i32 3076, i32 %128, i32 10507315)
  %130 = call i32 @udelay(i32 5)
  %131 = load %struct.net_device*, %struct.net_device** %2, align 8
  %132 = load i32, i32* @bMaskDWord, align 4
  %133 = call i32 @rtl8192_setBBreg(%struct.net_device* %131, i32 3080, i32 %132, i32 228)
  %134 = call i32 @udelay(i32 5)
  %135 = load %struct.net_device*, %struct.net_device** %2, align 8
  %136 = load i32, i32* @bMaskDWord, align 4
  %137 = call i32 @rtl8192_setBBreg(%struct.net_device* %135, i32 3624, i32 %136, i32 0)
  %138 = load i64, i64* %12, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %73
  %141 = load %struct.net_device*, %struct.net_device** %2, align 8
  %142 = load i32, i32* @bMaskDWord, align 4
  %143 = call i32 @rtl8192_setBBreg(%struct.net_device* %141, i32 2080, i32 %142, i32 16777216)
  %144 = load %struct.net_device*, %struct.net_device** %2, align 8
  %145 = load i32, i32* @bMaskDWord, align 4
  %146 = call i32 @rtl8192_setBBreg(%struct.net_device* %144, i32 2088, i32 %145, i32 16777216)
  br label %147

147:                                              ; preds = %140, %73
  %148 = load %struct.net_device*, %struct.net_device** %2, align 8
  %149 = load i32, i32* @bMaskDWord, align 4
  %150 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %148, i32 3756, i32 %149)
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @BIT27, align 4
  %153 = load i32, i32* @BIT28, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @BIT30, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @BIT31, align 4
  %158 = or i32 %156, %157
  %159 = and i32 %151, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %395, label %161

161:                                              ; preds = %147
  %162 = load %struct.net_device*, %struct.net_device** %2, align 8
  %163 = load i32, i32* @bMaskDWord, align 4
  %164 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %162, i32 3200, i32 %163)
  %165 = and i32 %164, 1023
  store i32 %165, i32* %5, align 4
  %166 = load %struct.net_device*, %struct.net_device** %2, align 8
  %167 = load i32, i32* @bMaskDWord, align 4
  %168 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %166, i32 3732, i32 %167)
  %169 = and i32 %168, 67043328
  %170 = ashr i32 %169, 16
  %171 = sext i32 %170 to i64
  store i64 %171, i64* %6, align 8
  %172 = load i64, i64* %6, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = mul nsw i64 %172, %174
  %176 = sdiv i64 %175, 256
  %177 = trunc i64 %176 to i32
  %178 = load i64, i64* @RF90_PATH_A, align 8
  %179 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %178
  store i32 %177, i32* %179, align 4
  %180 = load %struct.net_device*, %struct.net_device** %2, align 8
  %181 = load i32, i32* @bMaskDWord, align 4
  %182 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %180, i32 3200, i32 %181)
  store i32 %182, i32* %4, align 4
  %183 = load i32, i32* %4, align 4
  %184 = and i32 %183, -1024
  %185 = load i64, i64* @RF90_PATH_A, align 8
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %184, %187
  store i32 %188, i32* %4, align 4
  %189 = load %struct.net_device*, %struct.net_device** %2, align 8
  %190 = load i32, i32* @bMaskDWord, align 4
  %191 = load i32, i32* %4, align 4
  %192 = call i32 @rtl8192_setBBreg(%struct.net_device* %189, i32 3200, i32 %190, i32 %191)
  %193 = call i32 @udelay(i32 5)
  %194 = load %struct.net_device*, %struct.net_device** %2, align 8
  %195 = load i32, i32* @bMaskDWord, align 4
  %196 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %194, i32 3740, i32 %195)
  %197 = and i32 %196, 67043328
  %198 = ashr i32 %197, 16
  %199 = sext i32 %198 to i64
  store i64 %199, i64* %7, align 8
  %200 = load i64, i64* %7, align 8
  %201 = load i32, i32* %5, align 4
  %202 = sext i32 %201 to i64
  %203 = mul nsw i64 %200, %202
  %204 = sdiv i64 %203, 256
  %205 = load i64, i64* @RF90_PATH_C, align 8
  %206 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %205
  store i64 %204, i64* %206, align 8
  %207 = load %struct.net_device*, %struct.net_device** %2, align 8
  %208 = load i32, i32* @bMaskDWord, align 4
  %209 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %207, i32 3200, i32 %208)
  store i32 %209, i32* %4, align 4
  %210 = load i32, i32* %4, align 4
  %211 = and i32 %210, -4128769
  %212 = load i64, i64* @RF90_PATH_C, align 8
  %213 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = and i64 %214, 63
  %216 = trunc i64 %215 to i32
  %217 = shl i32 %216, 16
  %218 = or i32 %211, %217
  store i32 %218, i32* %4, align 4
  %219 = load %struct.net_device*, %struct.net_device** %2, align 8
  %220 = load i32, i32* @bMaskDWord, align 4
  %221 = load i32, i32* %4, align 4
  %222 = call i32 @rtl8192_setBBreg(%struct.net_device* %219, i32 3200, i32 %220, i32 %221)
  %223 = load %struct.net_device*, %struct.net_device** %2, align 8
  %224 = load i32, i32* @bMaskDWord, align 4
  %225 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %223, i32 3220, i32 %224)
  store i32 %225, i32* %4, align 4
  %226 = load i32, i32* %4, align 4
  %227 = and i32 %226, 268435455
  %228 = sext i32 %227 to i64
  %229 = load i64, i64* %7, align 8
  %230 = and i64 %229, 960
  %231 = ashr i64 %230, 6
  %232 = shl i64 %231, 28
  %233 = or i64 %228, %232
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %4, align 4
  %235 = load %struct.net_device*, %struct.net_device** %2, align 8
  %236 = load i32, i32* @bMaskDWord, align 4
  %237 = load i32, i32* %4, align 4
  %238 = call i32 @rtl8192_setBBreg(%struct.net_device* %235, i32 3220, i32 %236, i32 %237)
  %239 = call i32 @udelay(i32 5)
  %240 = load %struct.net_device*, %struct.net_device** %2, align 8
  %241 = load i32, i32* @bMaskDWord, align 4
  %242 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %240, i32 3092, i32 %241)
  store i32 %242, i32* %4, align 4
  %243 = load %struct.net_device*, %struct.net_device** %2, align 8
  %244 = load i32, i32* @bMaskDWord, align 4
  %245 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %243, i32 3748, i32 %244)
  %246 = and i32 %245, 67043328
  %247 = ashr i32 %246, 16
  %248 = sext i32 %247 to i64
  store i64 %248, i64* %6, align 8
  %249 = load i32, i32* %4, align 4
  %250 = and i32 %249, -1024
  %251 = zext i32 %250 to i64
  %252 = load i64, i64* %6, align 8
  %253 = or i64 %251, %252
  %254 = trunc i64 %253 to i32
  store i32 %254, i32* %4, align 4
  %255 = load %struct.net_device*, %struct.net_device** %2, align 8
  %256 = load i32, i32* @bMaskDWord, align 4
  %257 = load i32, i32* %4, align 4
  %258 = call i32 @rtl8192_setBBreg(%struct.net_device* %255, i32 3092, i32 %256, i32 %257)
  %259 = load %struct.net_device*, %struct.net_device** %2, align 8
  %260 = load i32, i32* @bMaskDWord, align 4
  %261 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %259, i32 3756, i32 %260)
  %262 = and i32 %261, 4128768
  %263 = ashr i32 %262, 16
  %264 = sext i32 %263 to i64
  store i64 %264, i64* %7, align 8
  %265 = load i32, i32* %4, align 4
  %266 = and i32 %265, -64513
  %267 = zext i32 %266 to i64
  %268 = load i64, i64* %7, align 8
  %269 = shl i64 %268, 10
  %270 = or i64 %267, %269
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %4, align 4
  %272 = load %struct.net_device*, %struct.net_device** %2, align 8
  %273 = load i32, i32* @bMaskDWord, align 4
  %274 = load i32, i32* %4, align 4
  %275 = call i32 @rtl8192_setBBreg(%struct.net_device* %272, i32 3092, i32 %273, i32 %274)
  %276 = call i32 @udelay(i32 5)
  %277 = load %struct.net_device*, %struct.net_device** %2, align 8
  %278 = load i32, i32* @bMaskDWord, align 4
  %279 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %277, i32 3208, i32 %278)
  %280 = and i32 %279, 1023
  store i32 %280, i32* %5, align 4
  %281 = load %struct.net_device*, %struct.net_device** %2, align 8
  %282 = load i32, i32* @bMaskDWord, align 4
  %283 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %281, i32 3764, i32 %282)
  %284 = and i32 %283, 67043328
  %285 = ashr i32 %284, 16
  %286 = sext i32 %285 to i64
  store i64 %286, i64* %6, align 8
  %287 = load %struct.net_device*, %struct.net_device** %2, align 8
  %288 = load i32, i32* @bMaskDWord, align 4
  %289 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %287, i32 3208, i32 %288)
  store i32 %289, i32* %4, align 4
  %290 = load i64, i64* %6, align 8
  %291 = load i32, i32* %5, align 4
  %292 = sext i32 %291 to i64
  %293 = mul nsw i64 %290, %292
  %294 = sdiv i64 %293, 256
  %295 = trunc i64 %294 to i32
  %296 = load i64, i64* @RF90_PATH_A, align 8
  %297 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %296
  store i32 %295, i32* %297, align 4
  %298 = load i32, i32* %4, align 4
  %299 = and i32 %298, -1024
  %300 = load i64, i64* @RF90_PATH_A, align 8
  %301 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = or i32 %299, %302
  store i32 %303, i32* %4, align 4
  %304 = load %struct.net_device*, %struct.net_device** %2, align 8
  %305 = load i32, i32* @bMaskDWord, align 4
  %306 = load i32, i32* %4, align 4
  %307 = call i32 @rtl8192_setBBreg(%struct.net_device* %304, i32 3208, i32 %305, i32 %306)
  %308 = call i32 @udelay(i32 5)
  %309 = load %struct.net_device*, %struct.net_device** %2, align 8
  %310 = load i32, i32* @bMaskDWord, align 4
  %311 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %309, i32 3772, i32 %310)
  %312 = and i32 %311, 67043328
  %313 = ashr i32 %312, 16
  %314 = sext i32 %313 to i64
  store i64 %314, i64* %7, align 8
  %315 = load i64, i64* %7, align 8
  %316 = load i32, i32* %5, align 4
  %317 = sext i32 %316 to i64
  %318 = mul nsw i64 %315, %317
  %319 = sdiv i64 %318, 256
  %320 = load i64, i64* @RF90_PATH_C, align 8
  %321 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %320
  store i64 %319, i64* %321, align 8
  %322 = load %struct.net_device*, %struct.net_device** %2, align 8
  %323 = load i32, i32* @bMaskDWord, align 4
  %324 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %322, i32 3208, i32 %323)
  store i32 %324, i32* %4, align 4
  %325 = load i32, i32* %4, align 4
  %326 = and i32 %325, -4128769
  %327 = zext i32 %326 to i64
  %328 = load i64, i64* @RF90_PATH_C, align 8
  %329 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %328
  %330 = load i64, i64* %329, align 8
  %331 = and i64 %330, 63
  %332 = shl i64 %331, 16
  %333 = or i64 %327, %332
  %334 = trunc i64 %333 to i32
  store i32 %334, i32* %4, align 4
  %335 = load %struct.net_device*, %struct.net_device** %2, align 8
  %336 = load i32, i32* @bMaskDWord, align 4
  %337 = load i32, i32* %4, align 4
  %338 = call i32 @rtl8192_setBBreg(%struct.net_device* %335, i32 3208, i32 %336, i32 %337)
  %339 = load %struct.net_device*, %struct.net_device** %2, align 8
  %340 = load i32, i32* @bMaskDWord, align 4
  %341 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %339, i32 3228, i32 %340)
  store i32 %341, i32* %4, align 4
  %342 = load i32, i32* %4, align 4
  %343 = and i32 %342, 268435455
  %344 = sext i32 %343 to i64
  %345 = load i64, i64* %7, align 8
  %346 = and i64 %345, 960
  %347 = ashr i64 %346, 6
  %348 = shl i64 %347, 28
  %349 = or i64 %344, %348
  %350 = trunc i64 %349 to i32
  store i32 %350, i32* %4, align 4
  %351 = load %struct.net_device*, %struct.net_device** %2, align 8
  %352 = load i32, i32* @bMaskDWord, align 4
  %353 = load i32, i32* %4, align 4
  %354 = call i32 @rtl8192_setBBreg(%struct.net_device* %351, i32 3228, i32 %352, i32 %353)
  %355 = call i32 @udelay(i32 5)
  %356 = load %struct.net_device*, %struct.net_device** %2, align 8
  %357 = load i32, i32* @bMaskDWord, align 4
  %358 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %356, i32 3100, i32 %357)
  store i32 %358, i32* %4, align 4
  %359 = load %struct.net_device*, %struct.net_device** %2, align 8
  %360 = load i32, i32* @bMaskDWord, align 4
  %361 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %359, i32 3780, i32 %360)
  %362 = and i32 %361, 67043328
  %363 = ashr i32 %362, 16
  %364 = sext i32 %363 to i64
  store i64 %364, i64* %6, align 8
  %365 = load i32, i32* %4, align 4
  %366 = and i32 %365, -1024
  %367 = zext i32 %366 to i64
  %368 = load i64, i64* %6, align 8
  %369 = or i64 %367, %368
  %370 = trunc i64 %369 to i32
  store i32 %370, i32* %4, align 4
  %371 = load %struct.net_device*, %struct.net_device** %2, align 8
  %372 = load i32, i32* @bMaskDWord, align 4
  %373 = load i32, i32* %4, align 4
  %374 = call i32 @rtl8192_setBBreg(%struct.net_device* %371, i32 3100, i32 %372, i32 %373)
  %375 = load %struct.net_device*, %struct.net_device** %2, align 8
  %376 = load i32, i32* @bMaskDWord, align 4
  %377 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %375, i32 3788, i32 %376)
  %378 = and i32 %377, 4128768
  %379 = ashr i32 %378, 16
  %380 = sext i32 %379 to i64
  store i64 %380, i64* %7, align 8
  %381 = load i32, i32* %4, align 4
  %382 = and i32 %381, -64513
  %383 = zext i32 %382 to i64
  %384 = load i64, i64* %7, align 8
  %385 = shl i64 %384, 10
  %386 = or i64 %383, %385
  %387 = trunc i64 %386 to i32
  store i32 %387, i32* %4, align 4
  %388 = load %struct.net_device*, %struct.net_device** %2, align 8
  %389 = load i32, i32* @bMaskDWord, align 4
  %390 = load i32, i32* %4, align 4
  %391 = call i32 @rtl8192_setBBreg(%struct.net_device* %388, i32 3100, i32 %389, i32 %390)
  %392 = call i32 @udelay(i32 5)
  %393 = load i32, i32* @COMP_INIT, align 4
  %394 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %393, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %399

395:                                              ; preds = %147
  br label %396

396:                                              ; preds = %395
  %397 = load i32, i32* %3, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %3, align 4
  br label %57

399:                                              ; preds = %161, %57
  store i32 0, i32* %3, align 4
  br label %400

400:                                              ; preds = %415, %399
  %401 = load i32, i32* %3, align 4
  %402 = icmp slt i32 %401, 13
  br i1 %402, label %403, label %418

403:                                              ; preds = %400
  %404 = load %struct.net_device*, %struct.net_device** %2, align 8
  %405 = load i32, i32* %3, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* @bMaskDWord, align 4
  %410 = load i32, i32* %3, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [13 x i32], [13 x i32]* %11, i64 0, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = call i32 @rtl8192_setBBreg(%struct.net_device* %404, i32 %408, i32 %409, i32 %413)
  br label %415

415:                                              ; preds = %403
  %416 = load i32, i32* %3, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %3, align 4
  br label %400

418:                                              ; preds = %400
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rtl8192_QueryBBReg(%struct.net_device*, i32, i32) #2

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #2

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #2

declare dso_local i32 @udelay(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
