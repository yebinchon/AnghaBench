; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpSetFrequencyEx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpSetFrequencyEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.zsHpPriv* }
%struct.zsHpPriv = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64 }

@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_LV_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Frequency = \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"bw40 = \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"extOffset = \00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"zfHpSetFrequencyEx: Do ColdReset \00", align 1
@ZM_HAL_80211_MODE_IBSS_GENERAL = common dso_local global i64 0, align 8
@ZM_HAL_80211_MODE_IBSS_WPA2PSK = common dso_local global i64 0, align 8
@ZM_CH_G_14 = common dso_local global i64 0, align 8
@ZM_MAC_REG_AC0_CW = common dso_local global i32 0, align 4
@ZM_CH_G_1 = common dso_local global i64 0, align 8
@ZM_CH_G_2 = common dso_local global i64 0, align 8
@ZM_CMD_FREQ_STRAT = common dso_local global i32 0, align 4
@ZM_OID_INTERNAL_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"=====band switch=====\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Do cold reset BB/ADDA\00", align 1
@ZM_CMD_RF_INIT = common dso_local global i32 0, align 4
@ZM_CMD_FREQUENCY = common dso_local global i32 0, align 4
@ZM_HP_CAP_11N_ONE_TX_STREAM = common dso_local global i32 0, align 4
@ZM_CMD_SET_FREQUENCY = common dso_local global i32 0, align 4
@ZM_CMD_BITAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfHpSetFrequencyEx(i32* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [9 x i64], align 16
  %12 = alloca [3 x i64], align 16
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.zsHpPriv*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @zmw_get_wlan_dev(i32* %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.zsHpPriv*, %struct.zsHpPriv** %26, align 8
  store %struct.zsHpPriv* %27, %struct.zsHpPriv** %22, align 8
  %28 = load i32, i32* @ZM_LV_1, align 4
  %29 = load i64, i64* %7, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @zm_msg1_scan(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ZM_LV_1, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @zm_msg1_scan(i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ZM_LV_1, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @zm_msg1_scan(i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load %struct.zsHpPriv*, %struct.zsHpPriv** %22, align 8
  %39 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %38, i32 0, i32 12
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %5
  %43 = load %struct.zsHpPriv*, %struct.zsHpPriv** %22, align 8
  %44 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %43, i32 0, i32 12
  store i64 0, i64* %44, align 8
  store i32 2, i32* %10, align 4
  %45 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %5
  %47 = load %struct.zsHpPriv*, %struct.zsHpPriv** %22, align 8
  %48 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i64 2000, i64* %16, align 8
  br label %53

52:                                               ; preds = %46
  store i64 1000, i64* %16, align 8
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.zsHpPriv*, %struct.zsHpPriv** %22, align 8
  %56 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %55, i32 0, i32 11
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.zsHpPriv*, %struct.zsHpPriv** %22, align 8
  %59 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.zsHpPriv*, %struct.zsHpPriv** %22, align 8
  %62 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.zsHpPriv*, %struct.zsHpPriv** %22, align 8
  %64 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ZM_HAL_80211_MODE_IBSS_GENERAL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %53
  %69 = load %struct.zsHpPriv*, %struct.zsHpPriv** %22, align 8
  %70 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ZM_HAL_80211_MODE_IBSS_WPA2PSK, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %68, %53
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @ZM_CH_G_14, align 8
  %77 = icmp sle i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* @ZM_MAC_REG_AC0_CW, align 4
  %81 = call i32 @zfDelayWriteInternalReg(i32* %79, i32 %80, i32 8323079)
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %68
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @zfSelAdcClk(i32* %84, i32 %85, i64 %86)
  %88 = call i32 @reg_write(i32 39392, i32 512)
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @zfFlushDelayWrite(i32* %89)
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* @ZM_CH_G_14, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  store i32 1, i32* %15, align 4
  br label %96

95:                                               ; preds = %83
  store i32 0, i32* %15, align 4
  br label %96

96:                                               ; preds = %95, %94
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load %struct.zsHpPriv*, %struct.zsHpPriv** %98, align 8
  %100 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @ZM_CH_G_14, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i32 1, i32* %14, align 4
  br label %106

105:                                              ; preds = %96
  store i32 0, i32* %14, align 4
  br label %106

106:                                              ; preds = %105, %104
  %107 = load %struct.zsHpPriv*, %struct.zsHpPriv** %22, align 8
  %108 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %106
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load %struct.zsHpPriv*, %struct.zsHpPriv** %114, align 8
  %116 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @ZM_CH_G_1, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %112
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* @ZM_CH_G_2, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 1, i32* %14, align 4
  br label %125

125:                                              ; preds = %124, %120, %112
  br label %126

126:                                              ; preds = %125, %106
  %127 = load i32, i32* @ZM_CMD_FREQ_STRAT, align 4
  %128 = shl i32 %127, 8
  %129 = or i32 0, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [9 x i64], [9 x i64]* %11, i64 0, i64 0
  store i64 %130, i64* %131, align 16
  %132 = load i32*, i32** %6, align 8
  %133 = getelementptr inbounds [9 x i64], [9 x i64]* %11, i64 0, i64 0
  %134 = load i32, i32* @ZM_OID_INTERNAL_WRITE, align 4
  %135 = call i64 @zfIssueCmd(i32* %132, i64* %133, i32 8, i32 %134, i32 0)
  store i64 %135, i64* %13, align 8
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %150, label %138

138:                                              ; preds = %126
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %150, label %142

142:                                              ; preds = %138
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load %struct.zsHpPriv*, %struct.zsHpPriv** %144, align 8
  %146 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %193

150:                                              ; preds = %142, %138, %126
  %151 = load i32, i32* @ZM_LV_1, align 4
  %152 = call i32 @zm_msg0_scan(i32 %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %153 = load i32, i32* %10, align 4
  %154 = icmp eq i32 %153, 2
  br i1 %154, label %155, label %162

155:                                              ; preds = %150
  %156 = load i32*, i32** %6, align 8
  %157 = call i32 @zfDelayWriteInternalReg(i32* %156, i32 1916932, i32 2048)
  %158 = load i32*, i32** %6, align 8
  %159 = call i32 @zfFlushDelayWrite(i32* %158)
  %160 = load i32, i32* @ZM_LV_1, align 4
  %161 = call i32 @zm_msg0_scan(i32 %160, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %167

162:                                              ; preds = %150
  %163 = load i32*, i32** %6, align 8
  %164 = call i32 @zfDelayWriteInternalReg(i32* %163, i32 1916932, i32 1024)
  %165 = load i32*, i32** %6, align 8
  %166 = call i32 @zfFlushDelayWrite(i32* %165)
  br label %167

167:                                              ; preds = %162, %155
  %168 = load %struct.zsHpPriv*, %struct.zsHpPriv** %22, align 8
  %169 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %168, i32 0, i32 10
  store i64 0, i64* %169, align 8
  %170 = load %struct.zsHpPriv*, %struct.zsHpPriv** %22, align 8
  %171 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %170, i32 0, i32 9
  store i64 0, i64* %171, align 8
  %172 = load i32*, i32** %6, align 8
  %173 = call i32 @zfDelayWriteInternalReg(i32* %172, i32 1916932, i32 0)
  %174 = load i32*, i32** %6, align 8
  %175 = call i32 @zfFlushDelayWrite(i32* %174)
  %176 = load i32*, i32** %6, align 8
  %177 = load i64, i64* %7, align 8
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @zfInitPhy(i32* %176, i64 %177, i32 %178)
  %180 = load i32*, i32** %6, align 8
  %181 = load i64, i64* %7, align 8
  %182 = call i32 @zfSetRfRegs(i32* %180, i64 %181)
  %183 = load i32*, i32** %6, align 8
  %184 = load i64, i64* %7, align 8
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @zfSetBank4AndPowerTable(i32* %183, i64 %184, i32 %185, i32 %186)
  %188 = load i32, i32* @ZM_CMD_RF_INIT, align 4
  %189 = shl i32 %188, 8
  %190 = or i32 32, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [9 x i64], [9 x i64]* %11, i64 0, i64 0
  store i64 %191, i64* %192, align 16
  br label %204

193:                                              ; preds = %142
  %194 = load i32*, i32** %6, align 8
  %195 = load i64, i64* %7, align 8
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* %9, align 4
  %198 = call i32 @zfSetBank4AndPowerTable(i32* %194, i64 %195, i32 %196, i32 %197)
  %199 = load i32, i32* @ZM_CMD_FREQUENCY, align 4
  %200 = shl i32 %199, 8
  %201 = or i32 32, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [9 x i64], [9 x i64]* %11, i64 0, i64 0
  store i64 %202, i64* %203, align 16
  br label %204

204:                                              ; preds = %193, %167
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load %struct.zsHpPriv*, %struct.zsHpPriv** %206, align 8
  %208 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %207, i32 0, i32 7
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @ZM_HP_CAP_11N_ONE_TX_STREAM, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %204
  store i64 0, i64* %17, align 8
  br label %215

214:                                              ; preds = %204
  store i64 256, i64* %17, align 8
  br label %215

215:                                              ; preds = %214, %213
  %216 = load i32, i32* %8, align 4
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %232

218:                                              ; preds = %215
  %219 = load i32, i32* %9, align 4
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %226

221:                                              ; preds = %218
  %222 = load i64, i64* %17, align 8
  %223 = or i64 %222, 724
  %224 = trunc i64 %223 to i32
  %225 = call i32 @reg_write(i32 38916, i32 %224)
  br label %231

226:                                              ; preds = %218
  %227 = load i64, i64* %17, align 8
  %228 = or i64 %227, 708
  %229 = trunc i64 %228 to i32
  %230 = call i32 @reg_write(i32 38916, i32 %229)
  br label %231

231:                                              ; preds = %226, %221
  br label %237

232:                                              ; preds = %215
  %233 = load i64, i64* %17, align 8
  %234 = or i64 %233, 576
  %235 = trunc i64 %234 to i32
  %236 = call i32 @reg_write(i32 38916, i32 %235)
  br label %237

237:                                              ; preds = %232, %231
  %238 = load i32*, i32** %6, align 8
  %239 = call i32 @zfFlushDelayWrite(i32* %238)
  %240 = load i32*, i32** %6, align 8
  %241 = load i64, i64* %7, align 8
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* %9, align 4
  %244 = call i32 @zfSetPowerCalTable(i32* %240, i64 %241, i32 %242, i32 %243)
  %245 = load i64, i64* %7, align 8
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 0
  %248 = load %struct.zsHpPriv*, %struct.zsHpPriv** %247, align 8
  %249 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %248, i32 0, i32 4
  store i64 %245, i64* %249, align 8
  %250 = load i32, i32* %8, align 4
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 0
  %253 = load %struct.zsHpPriv*, %struct.zsHpPriv** %252, align 8
  %254 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %253, i32 0, i32 6
  store i32 %250, i32* %254, align 4
  %255 = load i32, i32* %9, align 4
  %256 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 0
  %258 = load %struct.zsHpPriv*, %struct.zsHpPriv** %257, align 8
  %259 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %258, i32 0, i32 8
  store i32 %255, i32* %259, align 4
  %260 = load i32*, i32** %6, align 8
  %261 = load i64, i64* %7, align 8
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* %9, align 4
  %264 = call i32 @zfGetHwTurnOffdynParam(i32* %260, i64 %261, i32 %262, i32 %263, i32* %18, i32* %19, i32* %20, i32* %21)
  %265 = load i64, i64* %7, align 8
  %266 = mul nsw i64 %265, 1000
  store i64 %266, i64* %7, align 8
  %267 = load i64, i64* %7, align 8
  %268 = getelementptr inbounds [9 x i64], [9 x i64]* %11, i64 0, i64 1
  store i64 %267, i64* %268, align 8
  %269 = load i32, i32* %8, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [9 x i64], [9 x i64]* %11, i64 0, i64 2
  store i64 %270, i64* %271, align 16
  %272 = load i32, i32* %9, align 4
  %273 = shl i32 %272, 2
  %274 = or i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [9 x i64], [9 x i64]* %11, i64 0, i64 3
  store i64 %275, i64* %276, align 8
  %277 = load i32, i32* %18, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [9 x i64], [9 x i64]* %11, i64 0, i64 4
  store i64 %278, i64* %279, align 16
  %280 = load i32, i32* %19, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [9 x i64], [9 x i64]* %11, i64 0, i64 5
  store i64 %281, i64* %282, align 8
  %283 = load i32, i32* %20, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [9 x i64], [9 x i64]* %11, i64 0, i64 6
  store i64 %284, i64* %285, align 16
  %286 = load i32, i32* %21, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [9 x i64], [9 x i64]* %11, i64 0, i64 7
  store i64 %287, i64* %288, align 8
  %289 = load i64, i64* %16, align 8
  %290 = getelementptr inbounds [9 x i64], [9 x i64]* %11, i64 0, i64 8
  store i64 %289, i64* %290, align 16
  %291 = load i32*, i32** %6, align 8
  %292 = getelementptr inbounds [9 x i64], [9 x i64]* %11, i64 0, i64 0
  %293 = load i32, i32* @ZM_CMD_SET_FREQUENCY, align 4
  %294 = call i64 @zfIssueCmd(i32* %291, i64* %292, i32 36, i32 %293, i32 0)
  store i64 %294, i64* %13, align 8
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zm_msg1_scan(i32, i8*, i32) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zfDelayWriteInternalReg(i32*, i32, i32) #1

declare dso_local i32 @zfSelAdcClk(i32*, i32, i64) #1

declare dso_local i32 @reg_write(i32, i32) #1

declare dso_local i32 @zfFlushDelayWrite(i32*) #1

declare dso_local i64 @zfIssueCmd(i32*, i64*, i32, i32, i32) #1

declare dso_local i32 @zm_msg0_scan(i32, i8*) #1

declare dso_local i32 @zfInitPhy(i32*, i64, i32) #1

declare dso_local i32 @zfSetRfRegs(i32*, i64) #1

declare dso_local i32 @zfSetBank4AndPowerTable(i32*, i64, i32, i32) #1

declare dso_local i32 @zfSetPowerCalTable(i32*, i64, i32, i32) #1

declare dso_local i32 @zfGetHwTurnOffdynParam(i32*, i64, i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
