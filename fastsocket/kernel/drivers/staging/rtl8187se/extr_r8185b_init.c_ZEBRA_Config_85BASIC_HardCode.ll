; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_ZEBRA_Config_85BASIC_HardCode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_ZEBRA_Config_85BASIC_HardCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i64, i32, i32, i32, i32, i64 }

@VERSION_8187S_C = common dso_local global i64 0, align 8
@VERSION_8187S_D = common dso_local global i64 0, align 8
@ZEBRA_RF_RX_GAIN_TABLE = common dso_local global i32* null, align 8
@BIT11 = common dso_local global i32 0, align 4
@BIT9 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ZEBRA_Config_85BASIC_HardCode(): (%02x)\0A\00", align 1
@BIT5 = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i32 0, align 4
@CCK_TXAGC = common dso_local global i32 0, align 4
@OFDM_TXAGC = common dso_local global i32 0, align 4
@ANTSEL = common dso_local global i32 0, align 4
@ZEBRA_AGC = common dso_local global i32* null, align 8
@PhyAddr = common dso_local global i32 0, align 4
@OFDM_CONFIG = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ZEBRA_Config_85BASIC_HardCode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i64 @ieee80211_priv(%struct.net_device* %12)
  %14 = inttoptr i64 %13 to %struct.r8180_priv*
  store %struct.r8180_priv* %14, %struct.r8180_priv** %3, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @RF_WriteReg(%struct.net_device* %15, i32 0, i32 319)
  %17 = call i32 @mdelay(i32 1)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @RF_ReadReg(%struct.net_device* %18, i32 8)
  store i32 %19, i32* %9, align 4
  %20 = call i32 @mdelay(i32 1)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @RF_ReadReg(%struct.net_device* %21, i32 9)
  store i32 %22, i32* %10, align 4
  %23 = call i32 @mdelay(i32 1)
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 2072
  br i1 %25, label %26, label %39

26:                                               ; preds = %1
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 1804
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %31 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VERSION_8187S_C, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64, i64* @VERSION_8187S_D, align 8
  %37 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %38 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %35, %29, %26, %1
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 @RF_WriteReg(%struct.net_device* %40, i32 0, i32 159)
  %42 = call i32 @mdelay(i32 1)
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = call i32 @RF_WriteReg(%struct.net_device* %43, i32 1, i32 1760)
  %45 = call i32 @mdelay(i32 1)
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = call i32 @RF_WriteReg(%struct.net_device* %46, i32 2, i32 77)
  %48 = call i32 @mdelay(i32 1)
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = call i32 @RF_WriteReg(%struct.net_device* %49, i32 3, i32 2033)
  %51 = call i32 @mdelay(i32 1)
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = call i32 @RF_WriteReg(%struct.net_device* %52, i32 4, i32 2421)
  %54 = call i32 @mdelay(i32 1)
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = call i32 @RF_WriteReg(%struct.net_device* %55, i32 5, i32 3186)
  %57 = call i32 @mdelay(i32 1)
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = call i32 @RF_WriteReg(%struct.net_device* %58, i32 6, i32 2790)
  %60 = call i32 @mdelay(i32 1)
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = call i32 @RF_WriteReg(%struct.net_device* %61, i32 7, i32 202)
  %63 = call i32 @mdelay(i32 1)
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = call i32 @RF_WriteReg(%struct.net_device* %64, i32 8, i32 3612)
  %66 = call i32 @mdelay(i32 1)
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = call i32 @RF_WriteReg(%struct.net_device* %67, i32 9, i32 752)
  %69 = call i32 @mdelay(i32 1)
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = call i32 @RF_WriteReg(%struct.net_device* %70, i32 10, i32 2512)
  %72 = call i32 @mdelay(i32 1)
  %73 = load %struct.net_device*, %struct.net_device** %2, align 8
  %74 = call i32 @RF_WriteReg(%struct.net_device* %73, i32 11, i32 442)
  %75 = call i32 @mdelay(i32 1)
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = call i32 @RF_WriteReg(%struct.net_device* %76, i32 12, i32 1600)
  %78 = call i32 @mdelay(i32 1)
  %79 = load %struct.net_device*, %struct.net_device** %2, align 8
  %80 = call i32 @RF_WriteReg(%struct.net_device* %79, i32 13, i32 2271)
  %81 = call i32 @mdelay(i32 1)
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = call i32 @RF_WriteReg(%struct.net_device* %82, i32 14, i32 32)
  %84 = call i32 @mdelay(i32 1)
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = call i32 @RF_WriteReg(%struct.net_device* %85, i32 15, i32 2448)
  %87 = call i32 @mdelay(i32 1)
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = call i32 @RF_WriteReg(%struct.net_device* %88, i32 0, i32 319)
  %90 = call i32 @mdelay(i32 1)
  %91 = load %struct.net_device*, %struct.net_device** %2, align 8
  %92 = call i32 @RF_WriteReg(%struct.net_device* %91, i32 3, i32 2054)
  %93 = call i32 @mdelay(i32 1)
  %94 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %95 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @VERSION_8187S_C, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %39
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = call i32 @RF_WriteReg(%struct.net_device* %100, i32 4, i32 1015)
  %102 = call i32 @mdelay(i32 1)
  %103 = load %struct.net_device*, %struct.net_device** %2, align 8
  %104 = call i32 @RF_WriteReg(%struct.net_device* %103, i32 5, i32 1451)
  %105 = call i32 @mdelay(i32 1)
  %106 = load %struct.net_device*, %struct.net_device** %2, align 8
  %107 = call i32 @RF_WriteReg(%struct.net_device* %106, i32 6, i32 193)
  %108 = call i32 @mdelay(i32 1)
  br label %119

109:                                              ; preds = %39
  %110 = load %struct.net_device*, %struct.net_device** %2, align 8
  %111 = call i32 @RF_WriteReg(%struct.net_device* %110, i32 4, i32 935)
  %112 = call i32 @mdelay(i32 1)
  %113 = load %struct.net_device*, %struct.net_device** %2, align 8
  %114 = call i32 @RF_WriteReg(%struct.net_device* %113, i32 5, i32 1435)
  %115 = call i32 @mdelay(i32 1)
  %116 = load %struct.net_device*, %struct.net_device** %2, align 8
  %117 = call i32 @RF_WriteReg(%struct.net_device* %116, i32 6, i32 129)
  %118 = call i32 @mdelay(i32 1)
  br label %119

119:                                              ; preds = %109, %99
  %120 = load %struct.net_device*, %struct.net_device** %2, align 8
  %121 = call i32 @RF_WriteReg(%struct.net_device* %120, i32 7, i32 416)
  %122 = call i32 @mdelay(i32 1)
  %123 = load %struct.net_device*, %struct.net_device** %2, align 8
  %124 = call i32 @RF_WriteReg(%struct.net_device* %123, i32 10, i32 1)
  %125 = call i32 @mdelay(i32 1)
  %126 = load %struct.net_device*, %struct.net_device** %2, align 8
  %127 = call i32 @RF_WriteReg(%struct.net_device* %126, i32 11, i32 1048)
  %128 = call i32 @mdelay(i32 1)
  %129 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %130 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @VERSION_8187S_D, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %119
  %135 = load %struct.net_device*, %struct.net_device** %2, align 8
  %136 = call i32 @RF_WriteReg(%struct.net_device* %135, i32 12, i32 4030)
  %137 = call i32 @mdelay(i32 1)
  %138 = load %struct.net_device*, %struct.net_device** %2, align 8
  %139 = call i32 @RF_WriteReg(%struct.net_device* %138, i32 13, i32 8)
  %140 = call i32 @mdelay(i32 1)
  %141 = load %struct.net_device*, %struct.net_device** %2, align 8
  %142 = call i32 @RF_WriteReg(%struct.net_device* %141, i32 14, i32 2055)
  %143 = call i32 @mdelay(i32 1)
  br label %154

144:                                              ; preds = %119
  %145 = load %struct.net_device*, %struct.net_device** %2, align 8
  %146 = call i32 @RF_WriteReg(%struct.net_device* %145, i32 12, i32 4030)
  %147 = call i32 @mdelay(i32 1)
  %148 = load %struct.net_device*, %struct.net_device** %2, align 8
  %149 = call i32 @RF_WriteReg(%struct.net_device* %148, i32 13, i32 8)
  %150 = call i32 @mdelay(i32 1)
  %151 = load %struct.net_device*, %struct.net_device** %2, align 8
  %152 = call i32 @RF_WriteReg(%struct.net_device* %151, i32 14, i32 2054)
  %153 = call i32 @mdelay(i32 1)
  br label %154

154:                                              ; preds = %144, %134
  %155 = load %struct.net_device*, %struct.net_device** %2, align 8
  %156 = call i32 @RF_WriteReg(%struct.net_device* %155, i32 15, i32 2764)
  %157 = call i32 @mdelay(i32 1)
  %158 = load %struct.net_device*, %struct.net_device** %2, align 8
  %159 = call i32 @RF_WriteReg(%struct.net_device* %158, i32 0, i32 471)
  %160 = call i32 @mdelay(i32 1)
  %161 = load %struct.net_device*, %struct.net_device** %2, align 8
  %162 = call i32 @RF_WriteReg(%struct.net_device* %161, i32 3, i32 3584)
  %163 = call i32 @mdelay(i32 1)
  %164 = load %struct.net_device*, %struct.net_device** %2, align 8
  %165 = call i32 @RF_WriteReg(%struct.net_device* %164, i32 4, i32 3664)
  %166 = call i32 @mdelay(i32 1)
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %183, %154
  %168 = load i32, i32* %4, align 4
  %169 = icmp sle i32 %168, 36
  br i1 %169, label %170, label %186

170:                                              ; preds = %167
  %171 = load %struct.net_device*, %struct.net_device** %2, align 8
  %172 = load i32, i32* %4, align 4
  %173 = call i32 @RF_WriteReg(%struct.net_device* %171, i32 1, i32 %172)
  %174 = call i32 @mdelay(i32 1)
  %175 = load %struct.net_device*, %struct.net_device** %2, align 8
  %176 = load i32*, i32** @ZEBRA_RF_RX_GAIN_TABLE, align 8
  %177 = load i32, i32* %4, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @RF_WriteReg(%struct.net_device* %175, i32 2, i32 %180)
  %182 = call i32 @mdelay(i32 1)
  br label %183

183:                                              ; preds = %170
  %184 = load i32, i32* %4, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %4, align 4
  br label %167

186:                                              ; preds = %167
  %187 = load %struct.net_device*, %struct.net_device** %2, align 8
  %188 = call i32 @RF_WriteReg(%struct.net_device* %187, i32 5, i32 515)
  %189 = call i32 @mdelay(i32 1)
  %190 = load %struct.net_device*, %struct.net_device** %2, align 8
  %191 = call i32 @RF_WriteReg(%struct.net_device* %190, i32 6, i32 512)
  %192 = call i32 @mdelay(i32 1)
  %193 = load %struct.net_device*, %struct.net_device** %2, align 8
  %194 = call i32 @RF_WriteReg(%struct.net_device* %193, i32 0, i32 311)
  %195 = call i32 @mdelay(i32 1)
  %196 = call i32 @mdelay(i32 10)
  %197 = load %struct.net_device*, %struct.net_device** %2, align 8
  %198 = call i32 @RF_WriteReg(%struct.net_device* %197, i32 13, i32 8)
  %199 = call i32 @mdelay(i32 1)
  %200 = call i32 @mdelay(i32 10)
  %201 = load %struct.net_device*, %struct.net_device** %2, align 8
  %202 = call i32 @RF_WriteReg(%struct.net_device* %201, i32 0, i32 55)
  %203 = call i32 @mdelay(i32 1)
  %204 = call i32 @mdelay(i32 10)
  %205 = load %struct.net_device*, %struct.net_device** %2, align 8
  %206 = call i32 @RF_WriteReg(%struct.net_device* %205, i32 4, i32 352)
  %207 = call i32 @mdelay(i32 1)
  %208 = call i32 @mdelay(i32 10)
  %209 = load %struct.net_device*, %struct.net_device** %2, align 8
  %210 = call i32 @RF_WriteReg(%struct.net_device* %209, i32 7, i32 128)
  %211 = call i32 @mdelay(i32 1)
  %212 = call i32 @mdelay(i32 10)
  %213 = load %struct.net_device*, %struct.net_device** %2, align 8
  %214 = call i32 @RF_WriteReg(%struct.net_device* %213, i32 2, i32 2189)
  %215 = call i32 @mdelay(i32 1)
  %216 = call i32 @mdelay(i32 200)
  %217 = call i32 @mdelay(i32 10)
  %218 = call i32 @mdelay(i32 10)
  %219 = load %struct.net_device*, %struct.net_device** %2, align 8
  %220 = call i32 @RF_WriteReg(%struct.net_device* %219, i32 0, i32 311)
  %221 = call i32 @mdelay(i32 1)
  %222 = call i32 @mdelay(i32 10)
  %223 = load %struct.net_device*, %struct.net_device** %2, align 8
  %224 = call i32 @RF_WriteReg(%struct.net_device* %223, i32 7, i32 0)
  %225 = call i32 @mdelay(i32 1)
  %226 = load %struct.net_device*, %struct.net_device** %2, align 8
  %227 = call i32 @RF_WriteReg(%struct.net_device* %226, i32 7, i32 384)
  %228 = call i32 @mdelay(i32 1)
  %229 = load %struct.net_device*, %struct.net_device** %2, align 8
  %230 = call i32 @RF_WriteReg(%struct.net_device* %229, i32 7, i32 544)
  %231 = call i32 @mdelay(i32 1)
  %232 = load %struct.net_device*, %struct.net_device** %2, align 8
  %233 = call i32 @RF_WriteReg(%struct.net_device* %232, i32 7, i32 992)
  %234 = call i32 @mdelay(i32 1)
  %235 = load %struct.net_device*, %struct.net_device** %2, align 8
  %236 = call i32 @RF_WriteReg(%struct.net_device* %235, i32 6, i32 193)
  %237 = call i32 @mdelay(i32 1)
  %238 = load %struct.net_device*, %struct.net_device** %2, align 8
  %239 = call i32 @RF_WriteReg(%struct.net_device* %238, i32 10, i32 1)
  %240 = call i32 @mdelay(i32 1)
  %241 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %242 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %241, i32 0, i32 5
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %276

245:                                              ; preds = %186
  %246 = load %struct.net_device*, %struct.net_device** %2, align 8
  %247 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %248 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = shl i32 %249, 5
  %251 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %252 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = shl i32 %253, 1
  %255 = or i32 %250, %254
  %256 = load i32, i32* @BIT11, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @BIT9, align 4
  %259 = or i32 %257, %258
  %260 = call i32 @RF_WriteReg(%struct.net_device* %246, i32 15, i32 %259)
  %261 = call i32 @mdelay(i32 1)
  %262 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %263 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = shl i32 %264, 5
  %266 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %267 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = shl i32 %268, 1
  %270 = or i32 %265, %269
  %271 = load i32, i32* @BIT11, align 4
  %272 = or i32 %270, %271
  %273 = load i32, i32* @BIT9, align 4
  %274 = or i32 %272, %273
  %275 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %274)
  br label %280

276:                                              ; preds = %186
  %277 = load %struct.net_device*, %struct.net_device** %2, align 8
  %278 = call i32 @RF_WriteReg(%struct.net_device* %277, i32 15, i32 2764)
  %279 = call i32 @mdelay(i32 1)
  br label %280

280:                                              ; preds = %276, %245
  %281 = load %struct.net_device*, %struct.net_device** %2, align 8
  %282 = call i32 @RF_WriteReg(%struct.net_device* %281, i32 0, i32 191)
  %283 = call i32 @mdelay(i32 1)
  %284 = load %struct.net_device*, %struct.net_device** %2, align 8
  %285 = call i32 @RF_WriteReg(%struct.net_device* %284, i32 13, i32 2271)
  %286 = call i32 @mdelay(i32 1)
  %287 = load %struct.net_device*, %struct.net_device** %2, align 8
  %288 = call i32 @RF_WriteReg(%struct.net_device* %287, i32 2, i32 77)
  %289 = call i32 @mdelay(i32 1)
  %290 = load %struct.net_device*, %struct.net_device** %2, align 8
  %291 = call i32 @RF_WriteReg(%struct.net_device* %290, i32 4, i32 2421)
  %292 = call i32 @mdelay(i32 1)
  %293 = call i32 @mdelay(i32 10)
  %294 = call i32 @mdelay(i32 10)
  %295 = call i32 @mdelay(i32 10)
  %296 = load %struct.net_device*, %struct.net_device** %2, align 8
  %297 = call i32 @RF_WriteReg(%struct.net_device* %296, i32 0, i32 407)
  %298 = call i32 @mdelay(i32 1)
  %299 = load %struct.net_device*, %struct.net_device** %2, align 8
  %300 = call i32 @RF_WriteReg(%struct.net_device* %299, i32 5, i32 1451)
  %301 = call i32 @mdelay(i32 1)
  %302 = load %struct.net_device*, %struct.net_device** %2, align 8
  %303 = call i32 @RF_WriteReg(%struct.net_device* %302, i32 0, i32 159)
  %304 = call i32 @mdelay(i32 1)
  %305 = load %struct.net_device*, %struct.net_device** %2, align 8
  %306 = call i32 @RF_WriteReg(%struct.net_device* %305, i32 1, i32 0)
  %307 = call i32 @mdelay(i32 1)
  %308 = load %struct.net_device*, %struct.net_device** %2, align 8
  %309 = call i32 @RF_WriteReg(%struct.net_device* %308, i32 2, i32 0)
  %310 = call i32 @mdelay(i32 1)
  %311 = load %struct.net_device*, %struct.net_device** %2, align 8
  %312 = call i32 @read_nic_byte(%struct.net_device* %311, i32 590)
  store i32 %312, i32* %11, align 4
  %313 = load %struct.net_device*, %struct.net_device** %2, align 8
  %314 = load i32, i32* %11, align 4
  %315 = load i32, i32* @BIT5, align 4
  %316 = load i32, i32* @BIT6, align 4
  %317 = or i32 %315, %316
  %318 = xor i32 %317, -1
  %319 = and i32 %314, %318
  %320 = call i32 @write_nic_byte(%struct.net_device* %313, i32 590, i32 %319)
  %321 = load %struct.net_device*, %struct.net_device** %2, align 8
  %322 = call i32 @write_phy_cck(%struct.net_device* %321, i32 0, i32 200)
  %323 = load %struct.net_device*, %struct.net_device** %2, align 8
  %324 = call i32 @write_phy_cck(%struct.net_device* %323, i32 6, i32 28)
  %325 = load %struct.net_device*, %struct.net_device** %2, align 8
  %326 = call i32 @write_phy_cck(%struct.net_device* %325, i32 16, i32 120)
  %327 = load %struct.net_device*, %struct.net_device** %2, align 8
  %328 = call i32 @write_phy_cck(%struct.net_device* %327, i32 46, i32 208)
  %329 = load %struct.net_device*, %struct.net_device** %2, align 8
  %330 = call i32 @write_phy_cck(%struct.net_device* %329, i32 47, i32 6)
  %331 = load %struct.net_device*, %struct.net_device** %2, align 8
  %332 = call i32 @write_phy_cck(%struct.net_device* %331, i32 1, i32 70)
  %333 = load %struct.net_device*, %struct.net_device** %2, align 8
  %334 = load i32, i32* @CCK_TXAGC, align 4
  %335 = call i32 @write_nic_byte(%struct.net_device* %333, i32 %334, i32 16)
  %336 = load %struct.net_device*, %struct.net_device** %2, align 8
  %337 = load i32, i32* @OFDM_TXAGC, align 4
  %338 = call i32 @write_nic_byte(%struct.net_device* %336, i32 %337, i32 27)
  %339 = load %struct.net_device*, %struct.net_device** %2, align 8
  %340 = load i32, i32* @ANTSEL, align 4
  %341 = call i32 @write_nic_byte(%struct.net_device* %339, i32 %340, i32 3)
  %342 = load %struct.net_device*, %struct.net_device** %2, align 8
  %343 = call i32 @write_phy_ofdm(%struct.net_device* %342, i32 0, i32 18)
  store i32 0, i32* %4, align 4
  br label %344

344:                                              ; preds = %372, %280
  %345 = load i32, i32* %4, align 4
  %346 = icmp slt i32 %345, 128
  br i1 %346, label %347, label %375

347:                                              ; preds = %344
  %348 = load i32*, i32** @ZEBRA_AGC, align 8
  %349 = load i32, i32* %4, align 4
  %350 = add nsw i32 %349, 1
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %348, i64 %351
  %353 = load i32, i32* %352, align 4
  store i32 %353, i32* %6, align 4
  %354 = load i32, i32* %6, align 4
  %355 = shl i32 %354, 8
  store i32 %355, i32* %6, align 4
  %356 = load i32, i32* %6, align 4
  %357 = or i32 %356, 143
  store i32 %357, i32* %6, align 4
  %358 = load i32, i32* %4, align 4
  %359 = add nsw i32 %358, 128
  store i32 %359, i32* %5, align 4
  %360 = load i32, i32* %5, align 4
  %361 = shl i32 %360, 8
  store i32 %361, i32* %5, align 4
  %362 = load i32, i32* %5, align 4
  %363 = or i32 %362, 142
  store i32 %363, i32* %5, align 4
  %364 = load %struct.net_device*, %struct.net_device** %2, align 8
  %365 = load i32, i32* %6, align 4
  %366 = call i32 @WriteBBPortUchar(%struct.net_device* %364, i32 %365)
  %367 = load %struct.net_device*, %struct.net_device** %2, align 8
  %368 = load i32, i32* %5, align 4
  %369 = call i32 @WriteBBPortUchar(%struct.net_device* %367, i32 %368)
  %370 = load %struct.net_device*, %struct.net_device** %2, align 8
  %371 = call i32 @WriteBBPortUchar(%struct.net_device* %370, i32 142)
  br label %372

372:                                              ; preds = %347
  %373 = load i32, i32* %4, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %4, align 4
  br label %344

375:                                              ; preds = %344
  %376 = load %struct.net_device*, %struct.net_device** %2, align 8
  %377 = load i32, i32* @PhyAddr, align 4
  %378 = call i32 @PlatformIOWrite4Byte(%struct.net_device* %376, i32 %377, i32 4224)
  store i32 0, i32* %4, align 4
  br label %379

379:                                              ; preds = %398, %375
  %380 = load i32, i32* %4, align 4
  %381 = icmp slt i32 %380, 60
  br i1 %381, label %382, label %401

382:                                              ; preds = %379
  %383 = load i32, i32* %4, align 4
  store i32 %383, i32* %7, align 4
  %384 = load i32*, i32** @OFDM_CONFIG, align 8
  %385 = load i32, i32* %4, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  %388 = load i32, i32* %387, align 4
  store i32 %388, i32* %8, align 4
  %389 = load %struct.net_device*, %struct.net_device** %2, align 8
  %390 = load i32, i32* %7, align 4
  %391 = and i32 %390, 127
  %392 = or i32 128, %391
  %393 = load i32, i32* %8, align 4
  %394 = and i32 %393, 255
  %395 = shl i32 %394, 8
  %396 = or i32 %392, %395
  %397 = call i32 @WriteBBPortUchar(%struct.net_device* %389, i32 %396)
  br label %398

398:                                              ; preds = %382
  %399 = load i32, i32* %4, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %4, align 4
  br label %379

401:                                              ; preds = %379
  %402 = load %struct.net_device*, %struct.net_device** %2, align 8
  %403 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %404 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %403, i32 0, i32 4
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %407 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 8
  %409 = call i32 @SetAntennaConfig87SE(%struct.net_device* %402, i32 %405, i32 %408)
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RF_WriteReg(%struct.net_device*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @RF_ReadReg(%struct.net_device*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_phy_cck(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_phy_ofdm(%struct.net_device*, i32, i32) #1

declare dso_local i32 @WriteBBPortUchar(%struct.net_device*, i32) #1

declare dso_local i32 @PlatformIOWrite4Byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @SetAntennaConfig87SE(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
