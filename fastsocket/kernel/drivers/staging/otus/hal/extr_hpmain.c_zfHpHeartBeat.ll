; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpHeartBeat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpHeartBeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i64, i64, %struct.TYPE_3__, %struct.zsHpPriv* }
%struct.TYPE_3__ = type { i32, i64, i32, i32, i64, i64, i32 }
%struct.zsHpPriv = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i64*, i64 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_CH_G_14 = common dso_local global i64 0, align 8
@ZM_MAC_REG_BCN_PERIOD = common dso_local global i32 0, align 4
@ZM_MAC_REG_BCN_ADDR = common dso_local global i32 0, align 4
@ZM_BEACON_BUFFER_ADDRESS = common dso_local global i32 0, align 4
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@ZM_MAC_REG_EIFS_AND_SIFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"##### Correct Tx retransmission issue #####, \00", align 1
@FALSE = common dso_local global i64 0, align 8
@ZM_HP_CAP_11N_ONE_TX_STREAM = common dso_local global i32 0, align 4
@ZM_MAC_REG_AC1_AC0_TXOP = common dso_local global i32 0, align 4
@ZM_MAC_REG_AC0_CW = common dso_local global i32 0, align 4
@ZM_SW_TKIP_ENCRY_EN = common dso_local global i32 0, align 4
@ZM_SW_WEP_ENCRY_EN = common dso_local global i32 0, align 4
@ZM_RX_SIGNAL_THRESHOLD_H = common dso_local global i32 0, align 4
@ZM_RX_SIGNAL_THRESHOLD_L = common dso_local global i32 0, align 4
@ZM_SIGNAL_THRESHOLD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfHpHeartBeat(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.zsHpPriv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @zmw_get_wlan_dev(i32* %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 6
  %12 = load %struct.zsHpPriv*, %struct.zsHpPriv** %11, align 8
  store %struct.zsHpPriv* %12, %struct.zsHpPriv** %3, align 8
  %13 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %14 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %1
  %18 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %19 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ZM_CH_G_14, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %17
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = srem i32 %26, 10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = srem i32 %32, 40
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* @ZM_MAC_REG_BCN_PERIOD, align 4
  %38 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %39 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @zfDelayWriteInternalReg(i32* %36, i32 %37, i32 %41)
  store i32 1, i32* %4, align 4
  br label %50

43:                                               ; preds = %29
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @ZM_MAC_REG_BCN_PERIOD, align 4
  %46 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %47 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @zfDelayWriteInternalReg(i32* %44, i32 %45, i32 %48)
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %43, %35
  br label %51

51:                                               ; preds = %50, %23
  br label %52

52:                                               ; preds = %51, %17
  br label %53

53:                                               ; preds = %52, %1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 63
  %58 = icmp eq i32 %57, 37
  br i1 %58, label %59, label %647

59:                                               ; preds = %53
  %60 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %61 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32*, i32** %2, align 8
  %66 = load i32, i32* @ZM_MAC_REG_BCN_ADDR, align 4
  %67 = load i32, i32* @ZM_BEACON_BUFFER_ADDRESS, align 4
  %68 = call i32 @zfDelayWriteInternalReg(i32* %65, i32 %66, i32 %67)
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %64, %59
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %110

75:                                               ; preds = %69
  %76 = load i32*, i32** %2, align 8
  %77 = call i64 @zfStaIsConnected(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %110

79:                                               ; preds = %75
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %110

85:                                               ; preds = %79
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %110

90:                                               ; preds = %85
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %90
  %97 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %98 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %99, 2000
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %105, 1420
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32*, i32** %2, align 8
  %109 = call i32 @zfDelayWriteInternalReg(i32* %108, i32 1850268, i32 524298)
  store i32 1, i32* %4, align 4
  br label %116

110:                                              ; preds = %101, %96, %90, %85, %79, %75, %69
  %111 = load i32*, i32** %2, align 8
  %112 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %113 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @zfDelayWriteInternalReg(i32* %111, i32 1850268, i32 %114)
  store i32 1, i32* %4, align 4
  br label %116

116:                                              ; preds = %110, %107
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %155

121:                                              ; preds = %116
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %151

127:                                              ; preds = %121
  %128 = load i32*, i32** %2, align 8
  %129 = call i64 @zfStaIsConnected(i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %127
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %151

137:                                              ; preds = %131
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %137
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load i32*, i32** %2, align 8
  %150 = call i32 @zfDelayWriteInternalReg(i32* %149, i32 1848984, i32 85213184)
  store i32 1, i32* %4, align 4
  br label %154

151:                                              ; preds = %142, %137, %131, %127, %121
  %152 = load i32*, i32** %2, align 8
  %153 = call i32 @zfDelayWriteInternalReg(i32* %152, i32 1848984, i32 169099264)
  store i32 1, i32* %4, align 4
  br label %154

154:                                              ; preds = %151, %148
  br label %232

155:                                              ; preds = %116
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %224

161:                                              ; preds = %155
  %162 = load i32*, i32** %2, align 8
  %163 = call i64 @zfStaIsConnected(i32* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %224

165:                                              ; preds = %161
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %224

171:                                              ; preds = %165
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %224

177:                                              ; preds = %171
  %178 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %179 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %178, i32 0, i32 16
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %223

182:                                              ; preds = %177
  %183 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %184 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  switch i32 %185, label %210 [
    i32 0, label %186
    i32 1, label %192
    i32 2, label %198
    i32 3, label %204
  ]

186:                                              ; preds = %182
  %187 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %188 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %187, i32 0, i32 5
  store i32 1, i32* %188, align 4
  %189 = load i32*, i32** %2, align 8
  %190 = load i32, i32* @ZM_MAC_REG_EIFS_AND_SIFS, align 4
  %191 = call i32 @zfDelayWriteInternalReg(i32* %189, i32 %190, i32 135544832)
  br label %216

192:                                              ; preds = %182
  %193 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %194 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %193, i32 0, i32 5
  store i32 2, i32* %194, align 4
  %195 = load i32*, i32** %2, align 8
  %196 = load i32, i32* @ZM_MAC_REG_EIFS_AND_SIFS, align 4
  %197 = call i32 @zfDelayWriteInternalReg(i32* %195, i32 %196, i32 169099264)
  br label %216

198:                                              ; preds = %182
  %199 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %200 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %199, i32 0, i32 5
  store i32 3, i32* %200, align 4
  %201 = load i32*, i32** %2, align 8
  %202 = load i32, i32* @ZM_MAC_REG_EIFS_AND_SIFS, align 4
  %203 = call i32 @zfDelayWriteInternalReg(i32* %201, i32 %202, i32 202653696)
  br label %216

204:                                              ; preds = %182
  %205 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %206 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %205, i32 0, i32 5
  store i32 0, i32* %206, align 4
  %207 = load i32*, i32** %2, align 8
  %208 = load i32, i32* @ZM_MAC_REG_EIFS_AND_SIFS, align 4
  %209 = call i32 @zfDelayWriteInternalReg(i32* %207, i32 %208, i32 169099264)
  br label %216

210:                                              ; preds = %182
  %211 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %212 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %211, i32 0, i32 5
  store i32 0, i32* %212, align 4
  %213 = load i32*, i32** %2, align 8
  %214 = load i32, i32* @ZM_MAC_REG_EIFS_AND_SIFS, align 4
  %215 = call i32 @zfDelayWriteInternalReg(i32* %213, i32 %214, i32 169099264)
  br label %216

216:                                              ; preds = %210, %204, %198, %192, %186
  store i32 1, i32* %4, align 4
  %217 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %218 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %219)
  %221 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %222 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %221, i32 0, i32 16
  store i64 0, i64* %222, align 8
  br label %223

223:                                              ; preds = %216, %177
  br label %231

224:                                              ; preds = %171, %165, %161, %155
  %225 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %226 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %225, i32 0, i32 5
  store i32 0, i32* %226, align 4
  %227 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %228 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %227, i32 0, i32 16
  store i64 0, i64* %228, align 8
  %229 = load i32*, i32** %2, align 8
  %230 = call i32 @zfDelayWriteInternalReg(i32* %229, i32 1848984, i32 169099264)
  store i32 1, i32* %4, align 4
  br label %231

231:                                              ; preds = %224, %223
  br label %232

232:                                              ; preds = %231, %154
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 5
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @FALSE, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %348

239:                                              ; preds = %232
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 5
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 5
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @FALSE, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %348

246:                                              ; preds = %239
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %289

252:                                              ; preds = %246
  %253 = load i32*, i32** %2, align 8
  %254 = call i64 @zfStaIsConnected(i32* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %289

256:                                              ; preds = %252
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = icmp sgt i64 %259, 66
  br i1 %260, label %261, label %289

261:                                              ; preds = %256
  %262 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %263 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %262, i32 0, i32 6
  store i32 1, i32* %263, align 8
  %264 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %265 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %264, i32 0, i32 7
  %266 = load i32, i32* %265, align 4
  %267 = icmp sgt i32 %266, 24
  br i1 %267, label %268, label %273

268:                                              ; preds = %261
  %269 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %270 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %269, i32 0, i32 7
  %271 = load i32, i32* %270, align 4
  %272 = sub nsw i32 %271, 14
  store i32 %272, i32* %5, align 4
  br label %274

273:                                              ; preds = %261
  store i32 10, i32* %5, align 4
  br label %274

274:                                              ; preds = %273, %268
  %275 = load i32*, i32** %2, align 8
  %276 = load i32, i32* %5, align 4
  %277 = shl i32 %276, 20
  %278 = or i32 %277, 67108864
  %279 = call i32 @zfDelayWriteInternalReg(i32* %275, i32 1848980, i32 %278)
  %280 = load i32*, i32** %2, align 8
  %281 = load i32, i32* %5, align 4
  %282 = shl i32 %281, 5
  %283 = or i32 %282, 2048
  %284 = load i32, i32* %5, align 4
  %285 = shl i32 %284, 21
  %286 = or i32 %283, %285
  %287 = or i32 %286, 134217728
  %288 = call i32 @zfDelayWriteInternalReg(i32* %280, i32 1850292, i32 %287)
  store i32 1, i32* %4, align 4
  br label %347

289:                                              ; preds = %256, %252, %246
  %290 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %291 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %290, i32 0, i32 6
  store i32 0, i32* %291, align 8
  %292 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %293 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %292, i32 0, i32 8
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @ZM_HP_CAP_11N_ONE_TX_STREAM, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %322

298:                                              ; preds = %289
  %299 = load i32*, i32** %2, align 8
  %300 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %301 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 4
  %303 = and i32 %302, 63
  %304 = shl i32 %303, 20
  %305 = or i32 %304, 67108864
  %306 = call i32 @zfDelayWriteInternalReg(i32* %299, i32 1848980, i32 %305)
  %307 = load i32*, i32** %2, align 8
  %308 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %309 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %308, i32 0, i32 7
  %310 = load i32, i32* %309, align 4
  %311 = and i32 %310, 63
  %312 = shl i32 %311, 5
  %313 = or i32 %312, 2048
  %314 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %315 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %314, i32 0, i32 7
  %316 = load i32, i32* %315, align 4
  %317 = and i32 %316, 63
  %318 = shl i32 %317, 21
  %319 = or i32 %313, %318
  %320 = or i32 %319, 134217728
  %321 = call i32 @zfDelayWriteInternalReg(i32* %307, i32 1850292, i32 %320)
  br label %346

322:                                              ; preds = %289
  %323 = load i32*, i32** %2, align 8
  %324 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %325 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %324, i32 0, i32 7
  %326 = load i32, i32* %325, align 4
  %327 = and i32 %326, 63
  %328 = shl i32 %327, 20
  %329 = or i32 %328, 335544320
  %330 = call i32 @zfDelayWriteInternalReg(i32* %323, i32 1848980, i32 %329)
  %331 = load i32*, i32** %2, align 8
  %332 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %333 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %332, i32 0, i32 7
  %334 = load i32, i32* %333, align 4
  %335 = and i32 %334, 63
  %336 = shl i32 %335, 5
  %337 = or i32 %336, 10240
  %338 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %339 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %338, i32 0, i32 7
  %340 = load i32, i32* %339, align 4
  %341 = and i32 %340, 63
  %342 = shl i32 %341, 21
  %343 = or i32 %337, %342
  %344 = or i32 %343, 671088640
  %345 = call i32 @zfDelayWriteInternalReg(i32* %331, i32 1850292, i32 %344)
  br label %346

346:                                              ; preds = %322, %298
  store i32 1, i32* %4, align 4
  br label %347

347:                                              ; preds = %346, %274
  br label %348

348:                                              ; preds = %347, %239, %232
  %349 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %350 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %349, i32 0, i32 8
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @ZM_HP_CAP_11N_ONE_TX_STREAM, align 4
  %353 = and i32 %351, %352
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %461

355:                                              ; preds = %348
  %356 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 5
  %358 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %357, i32 0, i32 4
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @FALSE, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %460

362:                                              ; preds = %355
  %363 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i32 0, i32 5
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 5
  %366 = load i64, i64* %365, align 8
  %367 = load i64, i64* @FALSE, align 8
  %368 = icmp eq i64 %366, %367
  br i1 %368, label %369, label %460

369:                                              ; preds = %362
  store i32 71, i32* %6, align 4
  store i32 66, i32* %7, align 4
  %370 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %375, label %413

375:                                              ; preds = %369
  %376 = load i32*, i32** %2, align 8
  %377 = call i64 @zfStaIsConnected(i32* %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %413

379:                                              ; preds = %375
  %380 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 4
  %382 = load i64, i64* %381, align 8
  %383 = load i32, i32* %6, align 4
  %384 = sext i32 %383 to i64
  %385 = icmp sgt i64 %382, %384
  br i1 %385, label %386, label %413

386:                                              ; preds = %379
  %387 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %388 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %387, i32 0, i32 9
  store i32 1, i32* %388, align 4
  %389 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %390 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %389, i32 0, i32 10
  %391 = load i32*, i32** %390, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 392
  %393 = load i32, i32* %392, align 4
  %394 = and i32 %393, 255
  %395 = icmp eq i32 %394, 128
  br i1 %395, label %396, label %409

396:                                              ; preds = %386
  %397 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %398 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %397, i32 0, i32 1
  %399 = load i64, i64* %398, align 8
  %400 = load i64, i64* @ZM_CH_G_14, align 8
  %401 = icmp sle i64 %399, %400
  br i1 %401, label %402, label %405

402:                                              ; preds = %396
  %403 = load i32*, i32** %2, align 8
  %404 = call i32 @zfDelayWriteInternalReg(i32* %403, i32 1870176, i32 2304)
  br label %408

405:                                              ; preds = %396
  %406 = load i32*, i32** %2, align 8
  %407 = call i32 @zfDelayWriteInternalReg(i32* %406, i32 1870176, i32 39753)
  br label %408

408:                                              ; preds = %405, %402
  br label %412

409:                                              ; preds = %386
  %410 = load i32*, i32** %2, align 8
  %411 = call i32 @zfDelayWriteInternalReg(i32* %410, i32 1870176, i32 2304)
  br label %412

412:                                              ; preds = %409, %408
  store i32 1, i32* %4, align 4
  br label %459

413:                                              ; preds = %379, %375, %369
  %414 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %415 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %414, i32 0, i32 1
  %416 = load i64, i64* %415, align 8
  %417 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %418 = icmp eq i64 %416, %417
  br i1 %418, label %419, label %431

419:                                              ; preds = %413
  %420 = load i32*, i32** %2, align 8
  %421 = call i64 @zfStaIsConnected(i32* %420)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %431

423:                                              ; preds = %419
  %424 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %425 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %424, i32 0, i32 4
  %426 = load i64, i64* %425, align 8
  %427 = load i32, i32* %7, align 4
  %428 = sext i32 %427 to i64
  %429 = icmp sgt i64 %426, %428
  br i1 %429, label %430, label %431

430:                                              ; preds = %423
  br label %458

431:                                              ; preds = %423, %419, %413
  %432 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %433 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %432, i32 0, i32 9
  store i32 0, i32* %433, align 4
  %434 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %435 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %434, i32 0, i32 10
  %436 = load i32*, i32** %435, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 392
  %438 = load i32, i32* %437, align 4
  %439 = and i32 %438, 255
  %440 = icmp eq i32 %439, 128
  br i1 %440, label %441, label %454

441:                                              ; preds = %431
  %442 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %443 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %442, i32 0, i32 1
  %444 = load i64, i64* %443, align 8
  %445 = load i64, i64* @ZM_CH_G_14, align 8
  %446 = icmp sle i64 %444, %445
  br i1 %446, label %447, label %450

447:                                              ; preds = %441
  %448 = load i32*, i32** %2, align 8
  %449 = call i32 @zfDelayWriteInternalReg(i32* %448, i32 1870176, i32 39753)
  br label %453

450:                                              ; preds = %441
  %451 = load i32*, i32** %2, align 8
  %452 = call i32 @zfDelayWriteInternalReg(i32* %451, i32 1870176, i32 2304)
  br label %453

453:                                              ; preds = %450, %447
  br label %457

454:                                              ; preds = %431
  %455 = load i32*, i32** %2, align 8
  %456 = call i32 @zfDelayWriteInternalReg(i32* %455, i32 1870176, i32 39744)
  br label %457

457:                                              ; preds = %454, %453
  store i32 1, i32* %4, align 4
  br label %458

458:                                              ; preds = %457, %430
  br label %459

459:                                              ; preds = %458, %412
  br label %460

460:                                              ; preds = %459, %362, %355
  br label %461

461:                                              ; preds = %460, %348
  %462 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %463 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %462, i32 0, i32 11
  %464 = load i32*, i32** %463, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 3
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %468 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %467, i32 0, i32 11
  %469 = load i32*, i32** %468, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 0
  %471 = load i32, i32* %470, align 4
  %472 = mul nsw i32 %471, 2
  %473 = icmp sgt i32 %466, %472
  br i1 %473, label %474, label %483

474:                                              ; preds = %461
  %475 = load i32*, i32** %2, align 8
  %476 = load i32, i32* @ZM_MAC_REG_AC1_AC0_TXOP, align 4
  %477 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %478 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %477, i32 0, i32 12
  %479 = load i32*, i32** %478, align 8
  %480 = getelementptr inbounds i32, i32* %479, i64 3
  %481 = load i32, i32* %480, align 4
  %482 = call i32 @zfDelayWriteInternalReg(i32* %475, i32 %476, i32 %481)
  store i32 1, i32* %4, align 4
  br label %630

483:                                              ; preds = %461
  %484 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %485 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %484, i32 0, i32 11
  %486 = load i32*, i32** %485, align 8
  %487 = getelementptr inbounds i32, i32* %486, i64 2
  %488 = load i32, i32* %487, align 4
  %489 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %490 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %489, i32 0, i32 11
  %491 = load i32*, i32** %490, align 8
  %492 = getelementptr inbounds i32, i32* %491, i64 0
  %493 = load i32, i32* %492, align 4
  %494 = mul nsw i32 %493, 2
  %495 = icmp sgt i32 %488, %494
  br i1 %495, label %496, label %505

496:                                              ; preds = %483
  %497 = load i32*, i32** %2, align 8
  %498 = load i32, i32* @ZM_MAC_REG_AC1_AC0_TXOP, align 4
  %499 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %500 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %499, i32 0, i32 12
  %501 = load i32*, i32** %500, align 8
  %502 = getelementptr inbounds i32, i32* %501, i64 2
  %503 = load i32, i32* %502, align 4
  %504 = call i32 @zfDelayWriteInternalReg(i32* %497, i32 %498, i32 %503)
  store i32 1, i32* %4, align 4
  br label %629

505:                                              ; preds = %483
  %506 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %507 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %506, i32 0, i32 11
  %508 = load i32*, i32** %507, align 8
  %509 = getelementptr inbounds i32, i32* %508, i64 1
  %510 = load i32, i32* %509, align 4
  %511 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %512 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %511, i32 0, i32 11
  %513 = load i32*, i32** %512, align 8
  %514 = getelementptr inbounds i32, i32* %513, i64 0
  %515 = load i32, i32* %514, align 4
  %516 = mul nsw i32 %515, 2
  %517 = icmp sgt i32 %510, %516
  br i1 %517, label %518, label %535

518:                                              ; preds = %505
  %519 = load i32*, i32** %2, align 8
  %520 = load i32, i32* @ZM_MAC_REG_AC0_CW, align 4
  %521 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %522 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %521, i32 0, i32 13
  %523 = load i32*, i32** %522, align 8
  %524 = getelementptr inbounds i32, i32* %523, i64 1
  %525 = load i32, i32* %524, align 4
  %526 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %527 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %526, i32 0, i32 15
  %528 = load i64*, i64** %527, align 8
  %529 = getelementptr inbounds i64, i64* %528, i64 1
  %530 = load i64, i64* %529, align 8
  %531 = trunc i64 %530 to i32
  %532 = shl i32 %531, 16
  %533 = add nsw i32 %525, %532
  %534 = call i32 @zfDelayWriteInternalReg(i32* %519, i32 %520, i32 %533)
  store i32 1, i32* %4, align 4
  br label %628

535:                                              ; preds = %505
  %536 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %537 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %536, i32 0, i32 14
  %538 = load i32, i32* %537, align 8
  %539 = icmp eq i32 %538, 1
  br i1 %539, label %540, label %587

540:                                              ; preds = %535
  %541 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %542 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %541, i32 0, i32 5
  %543 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %542, i32 0, i32 1
  %544 = load i64, i64* %543, align 8
  %545 = icmp eq i64 %544, 0
  br i1 %545, label %546, label %569

546:                                              ; preds = %540
  %547 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %548 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %547, i32 0, i32 3
  %549 = load i32, i32* %548, align 4
  %550 = icmp sgt i32 %549, 2000
  br i1 %550, label %551, label %569

551:                                              ; preds = %546
  %552 = load i32*, i32** %2, align 8
  %553 = load i32, i32* @ZM_MAC_REG_AC0_CW, align 4
  %554 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %555 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %554, i32 0, i32 13
  %556 = load i32*, i32** %555, align 8
  %557 = getelementptr inbounds i32, i32* %556, i64 0
  %558 = load i32, i32* %557, align 4
  %559 = sdiv i32 %558, 2
  %560 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %561 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %560, i32 0, i32 15
  %562 = load i64*, i64** %561, align 8
  %563 = getelementptr inbounds i64, i64* %562, i64 0
  %564 = load i64, i64* %563, align 8
  %565 = trunc i64 %564 to i32
  %566 = shl i32 %565, 16
  %567 = add nsw i32 %559, %566
  %568 = call i32 @zfDelayWriteInternalReg(i32* %552, i32 %553, i32 %567)
  br label %586

569:                                              ; preds = %546, %540
  %570 = load i32*, i32** %2, align 8
  %571 = load i32, i32* @ZM_MAC_REG_AC0_CW, align 4
  %572 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %573 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %572, i32 0, i32 13
  %574 = load i32*, i32** %573, align 8
  %575 = getelementptr inbounds i32, i32* %574, i64 0
  %576 = load i32, i32* %575, align 4
  %577 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %578 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %577, i32 0, i32 15
  %579 = load i64*, i64** %578, align 8
  %580 = getelementptr inbounds i64, i64* %579, i64 0
  %581 = load i64, i64* %580, align 8
  %582 = trunc i64 %581 to i32
  %583 = shl i32 %582, 16
  %584 = add nsw i32 %576, %583
  %585 = call i32 @zfDelayWriteInternalReg(i32* %570, i32 %571, i32 %584)
  br label %586

586:                                              ; preds = %569, %551
  store i32 1, i32* %4, align 4
  br label %604

587:                                              ; preds = %535
  %588 = load i32*, i32** %2, align 8
  %589 = load i32, i32* @ZM_MAC_REG_AC0_CW, align 4
  %590 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %591 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %590, i32 0, i32 13
  %592 = load i32*, i32** %591, align 8
  %593 = getelementptr inbounds i32, i32* %592, i64 0
  %594 = load i32, i32* %593, align 4
  %595 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %596 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %595, i32 0, i32 15
  %597 = load i64*, i64** %596, align 8
  %598 = getelementptr inbounds i64, i64* %597, i64 0
  %599 = load i64, i64* %598, align 8
  %600 = trunc i64 %599 to i32
  %601 = shl i32 %600, 16
  %602 = add nsw i32 %594, %601
  %603 = call i32 @zfDelayWriteInternalReg(i32* %588, i32 %589, i32 %602)
  store i32 1, i32* %4, align 4
  br label %604

604:                                              ; preds = %587, %586
  %605 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %606 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %605, i32 0, i32 5
  %607 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %606, i32 0, i32 6
  %608 = load i32, i32* %607, align 8
  %609 = load i32, i32* @ZM_SW_TKIP_ENCRY_EN, align 4
  %610 = load i32, i32* @ZM_SW_WEP_ENCRY_EN, align 4
  %611 = or i32 %609, %610
  %612 = and i32 %608, %611
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %614, label %623

614:                                              ; preds = %604
  %615 = load i32*, i32** %2, align 8
  %616 = load i32, i32* @ZM_MAC_REG_AC1_AC0_TXOP, align 4
  %617 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %618 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %617, i32 0, i32 12
  %619 = load i32*, i32** %618, align 8
  %620 = getelementptr inbounds i32, i32* %619, i64 0
  %621 = load i32, i32* %620, align 4
  %622 = call i32 @zfDelayWriteInternalReg(i32* %615, i32 %616, i32 %621)
  store i32 1, i32* %4, align 4
  br label %627

623:                                              ; preds = %604
  %624 = load i32*, i32** %2, align 8
  %625 = load i32, i32* @ZM_MAC_REG_AC1_AC0_TXOP, align 4
  %626 = call i32 @zfDelayWriteInternalReg(i32* %624, i32 %625, i32 48)
  store i32 1, i32* %4, align 4
  br label %627

627:                                              ; preds = %623, %614
  br label %628

628:                                              ; preds = %627, %518
  br label %629

629:                                              ; preds = %628, %496
  br label %630

630:                                              ; preds = %629, %474
  %631 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %632 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %631, i32 0, i32 11
  %633 = load i32*, i32** %632, align 8
  %634 = getelementptr inbounds i32, i32* %633, i64 3
  store i32 0, i32* %634, align 4
  %635 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %636 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %635, i32 0, i32 11
  %637 = load i32*, i32** %636, align 8
  %638 = getelementptr inbounds i32, i32* %637, i64 2
  store i32 0, i32* %638, align 4
  %639 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %640 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %639, i32 0, i32 11
  %641 = load i32*, i32** %640, align 8
  %642 = getelementptr inbounds i32, i32* %641, i64 1
  store i32 0, i32* %642, align 4
  %643 = load %struct.zsHpPriv*, %struct.zsHpPriv** %3, align 8
  %644 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %643, i32 0, i32 11
  %645 = load i32*, i32** %644, align 8
  %646 = getelementptr inbounds i32, i32* %645, i64 0
  store i32 0, i32* %646, align 4
  br label %647

647:                                              ; preds = %630, %53
  %648 = load i32, i32* %4, align 4
  %649 = icmp eq i32 %648, 1
  br i1 %649, label %650, label %653

650:                                              ; preds = %647
  %651 = load i32*, i32** %2, align 8
  %652 = call i32 @zfFlushDelayWrite(i32* %651)
  br label %653

653:                                              ; preds = %650, %647
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfDelayWriteInternalReg(i32*, i32, i32) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

declare dso_local i32 @zm_debug_msg1(i8*, i32) #1

declare dso_local i32 @zfFlushDelayWrite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
