; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApProcessAsocReq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApProcessAsocReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 (i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32)* }
%struct.TYPE_3__ = type { i32, i32*, i32**, i64*, i64, i32*, i32*, i32* }

@ZM_WLAN_EID_SSID = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_WLAN_EID_EXTENDED_RATE = common dso_local global i32 0, align 4
@ZM_WLAN_EID_HT_CAPABILITY = common dso_local global i32 0, align 4
@ZM_WLAN_TYPE_PURE_G = common dso_local global i64 0, align 8
@ZM_WLAN_FRAME_TYPE_DEAUTH = common dso_local global i32 0, align 4
@ZM_WLAN_TYPE_PURE_B = common dso_local global i64 0, align 8
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"WME STA\00", align 1
@ZM_WLAN_EID_WPA_IE = common dso_local global i32 0, align 4
@ZM_MAX_WPAIE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"WPA Mode zfwAsocNotify, apId=\00", align 1
@ZM_WLAN_EID_RSN_IE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"RSN Mode zfwAsocNotify, apId=\00", align 1
@ZM_STATE_ASOC = common dso_local global i32 0, align 4
@ZM_WLAN_FRAME_TYPE_ASOCREQ = common dso_local global i32 0, align 4
@ZM_WLAN_FRAME_TYPE_ASOCRSP = common dso_local global i32 0, align 4
@ZM_WLAN_FRAME_TYPE_REASOCRSP = common dso_local global i32 0, align 4
@ZM_WLAN_EID_CENC_IE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfApProcessAsocReq(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 65535, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %19, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @zmw_get_wlan_dev(i32* %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @ZM_WLAN_EID_SSID, align 4
  %27 = call i32 @zfFindElement(i32* %24, i32* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = icmp ne i32 %27, 65535
  br i1 %28, label %29, label %142

29:                                               ; preds = %4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %30

30:                                               ; preds = %56, %29
  %31 = load i32, i32* %17, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %30
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @zmw_buf_readb(i32* %38, i32* %39, i32 %41)
  store i32 %42, i32* %15, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %17, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %42, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %37
  %53 = load i32, i32* %18, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %18, align 4
  br label %55

55:                                               ; preds = %52, %37
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %17, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %17, align 4
  br label %30

59:                                               ; preds = %30
  %60 = load i32, i32* %18, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %60, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %406

67:                                               ; preds = %59
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %68

68:                                               ; preds = %130, %67
  %69 = load i32, i32* %17, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %133

75:                                               ; preds = %68
  store i32 0, i32* %16, align 4
  br label %76

76:                                               ; preds = %110, %75
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %77, %85
  br i1 %86, label %87, label %113

87:                                               ; preds = %76
  %88 = load i32*, i32** %5, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 2
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %91, %92
  %94 = call i32 @zmw_buf_readb(i32* %88, i32* %89, i32 %93)
  store i32 %94, i32* %15, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i32**, i32*** %97, align 8
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %94, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %87
  br label %113

109:                                              ; preds = %87
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %16, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %16, align 4
  br label %76

113:                                              ; preds = %108, %76
  %114 = load i32, i32* %16, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %17, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %114, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %113
  %125 = load i32, i32* %17, align 4
  store i32 %125, i32* %8, align 4
  br label %129

126:                                              ; preds = %113
  %127 = load i32, i32* %18, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %18, align 4
  br label %129

129:                                              ; preds = %126, %124
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %17, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %17, align 4
  br label %68

133:                                              ; preds = %68
  %134 = load i32, i32* %18, align 4
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %134, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %406

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %141, %4
  %143 = load i32*, i32** %5, align 8
  %144 = load i32*, i32** %6, align 8
  %145 = load i32, i32* @ZM_WLAN_EID_EXTENDED_RATE, align 4
  %146 = call i32 @zfFindElement(i32* %143, i32* %144, i32 %145)
  store i32 %146, i32* %11, align 4
  %147 = icmp ne i32 %146, 65535
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  store i32 1, i32* %12, align 4
  br label %149

149:                                              ; preds = %148, %142
  %150 = load i32*, i32** %5, align 8
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* @ZM_WLAN_EID_HT_CAPABILITY, align 4
  %153 = call i32 @zfFindElement(i32* %150, i32* %151, i32 %152)
  store i32 %153, i32* %11, align 4
  %154 = icmp ne i32 %153, 65535
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  store i32 2, i32* %12, align 4
  br label %156

156:                                              ; preds = %155, %149
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 3
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @ZM_WLAN_TYPE_PURE_G, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %156
  %168 = load i32, i32* %12, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = load i32*, i32** %5, align 8
  %172 = load i32, i32* @ZM_WLAN_FRAME_TYPE_DEAUTH, align 4
  %173 = load i32*, i32** %7, align 8
  %174 = call i32 @zfSendMmFrame(i32* %171, i32 %172, i32* %173, i32 3, i32 0, i32 0)
  br label %439

175:                                              ; preds = %167, %156
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 3
  %179 = load i64*, i64** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @ZM_WLAN_TYPE_PURE_B, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %175
  %187 = load i32, i32* %12, align 4
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  store i32 0, i32* %12, align 4
  br label %190

190:                                              ; preds = %189, %186, %175
  %191 = load i32*, i32** %5, align 8
  %192 = load i32*, i32** %6, align 8
  %193 = call i32 @zfFindWifiElement(i32* %191, i32* %192, i32 2, i32 0)
  store i32 %193, i32* %11, align 4
  %194 = icmp ne i32 %193, 65535
  br i1 %194, label %195, label %210

195:                                              ; preds = %190
  store i32 1, i32* %13, align 4
  %196 = load i32, i32* @ZM_LV_0, align 4
  %197 = call i32 @zm_msg0_mm(i32 %196, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %195
  %204 = load i32*, i32** %5, align 8
  %205 = load i32*, i32** %6, align 8
  %206 = load i32, i32* %11, align 4
  %207 = add nsw i32 %206, 8
  %208 = call i32 @zmw_rx_buf_readb(i32* %204, i32* %205, i32 %207)
  store i32 %208, i32* %14, align 4
  br label %209

209:                                              ; preds = %203, %195
  br label %210

210:                                              ; preds = %209, %190
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 5
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %8, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %375

220:                                              ; preds = %210
  %221 = load i32*, i32** %5, align 8
  %222 = load i32*, i32** %6, align 8
  %223 = load i32, i32* @ZM_WLAN_EID_WPA_IE, align 4
  %224 = call i32 @zfFindElement(i32* %221, i32* %222, i32 %223)
  store i32 %224, i32* %11, align 4
  %225 = icmp ne i32 %224, 65535
  br i1 %225, label %226, label %294

226:                                              ; preds = %220
  %227 = load i32*, i32** %5, align 8
  %228 = load i32*, i32** %6, align 8
  %229 = load i32, i32* %11, align 4
  %230 = add nsw i32 %229, 1
  %231 = call i32 @zmw_rx_buf_readb(i32* %227, i32* %228, i32 %230)
  store i32 %231, i32* %20, align 4
  %232 = load i32, i32* %20, align 4
  %233 = add nsw i32 %232, 2
  %234 = load i32, i32* @ZM_MAX_WPAIE_SIZE, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %292

236:                                              ; preds = %226
  %237 = load i32*, i32** %5, align 8
  %238 = load i32*, i32** %6, align 8
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 7
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %11, align 4
  %248 = load i32, i32* %20, align 4
  %249 = add nsw i32 %248, 2
  %250 = call i32 @zfCopyFromRxBuffer(i32* %237, i32* %238, i32 %246, i32 %247, i32 %249)
  %251 = load i32, i32* %20, align 4
  %252 = add nsw i32 %251, 2
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 6
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  store i32 %252, i32* %259, align 4
  store i32 1, i32* %19, align 4
  %260 = load i32, i32* @ZM_LV_0, align 4
  %261 = load i32, i32* %8, align 4
  %262 = call i32 @zm_msg1_mm(i32 %260, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %261)
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 2
  %265 = load i32 (i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32)** %264, align 8
  %266 = icmp ne i32 (i32*, i32*, i32, i32, i32)* %265, null
  br i1 %266, label %267, label %291

267:                                              ; preds = %236
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 2
  %270 = load i32 (i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32)** %269, align 8
  %271 = load i32*, i32** %5, align 8
  %272 = load i32*, i32** %7, align 8
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 7
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %8, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 6
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %8, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %8, align 4
  %290 = call i32 %270(i32* %271, i32* %272, i32 %280, i32 %288, i32 %289)
  br label %291

291:                                              ; preds = %267, %236
  br label %293

292:                                              ; preds = %226
  br label %406

293:                                              ; preds = %291
  br label %374

294:                                              ; preds = %220
  %295 = load i32*, i32** %5, align 8
  %296 = load i32*, i32** %6, align 8
  %297 = load i32, i32* @ZM_WLAN_EID_RSN_IE, align 4
  %298 = call i32 @zfFindElement(i32* %295, i32* %296, i32 %297)
  store i32 %298, i32* %11, align 4
  %299 = icmp ne i32 %298, 65535
  br i1 %299, label %300, label %368

300:                                              ; preds = %294
  %301 = load i32*, i32** %5, align 8
  %302 = load i32*, i32** %6, align 8
  %303 = load i32, i32* %11, align 4
  %304 = add nsw i32 %303, 1
  %305 = call i32 @zmw_rx_buf_readb(i32* %301, i32* %302, i32 %304)
  store i32 %305, i32* %21, align 4
  %306 = load i32, i32* %21, align 4
  %307 = add nsw i32 %306, 2
  %308 = load i32, i32* @ZM_MAX_WPAIE_SIZE, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %366

310:                                              ; preds = %300
  %311 = load i32*, i32** %5, align 8
  %312 = load i32*, i32** %6, align 8
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %314, i32 0, i32 7
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %8, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %11, align 4
  %322 = load i32, i32* %21, align 4
  %323 = add nsw i32 %322, 2
  %324 = call i32 @zfCopyFromRxBuffer(i32* %311, i32* %312, i32 %320, i32 %321, i32 %323)
  %325 = load i32, i32* %21, align 4
  %326 = add nsw i32 %325, 2
  %327 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 6
  %330 = load i32*, i32** %329, align 8
  %331 = load i32, i32* %8, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  store i32 %326, i32* %333, align 4
  store i32 1, i32* %19, align 4
  %334 = load i32, i32* @ZM_LV_0, align 4
  %335 = load i32, i32* %8, align 4
  %336 = call i32 @zm_msg1_mm(i32 %334, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %335)
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 2
  %339 = load i32 (i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32)** %338, align 8
  %340 = icmp ne i32 (i32*, i32*, i32, i32, i32)* %339, null
  br i1 %340, label %341, label %365

341:                                              ; preds = %310
  %342 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 2
  %344 = load i32 (i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32)** %343, align 8
  %345 = load i32*, i32** %5, align 8
  %346 = load i32*, i32** %7, align 8
  %347 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 7
  %350 = load i32*, i32** %349, align 8
  %351 = load i32, i32* %8, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %356, i32 0, i32 6
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* %8, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* %8, align 4
  %364 = call i32 %344(i32* %345, i32* %346, i32 %354, i32 %362, i32 %363)
  br label %365

365:                                              ; preds = %341, %310
  br label %367

366:                                              ; preds = %300
  br label %406

367:                                              ; preds = %365
  br label %373

368:                                              ; preds = %294
  %369 = load i32*, i32** %5, align 8
  %370 = load i32, i32* @ZM_WLAN_FRAME_TYPE_DEAUTH, align 4
  %371 = load i32*, i32** %7, align 8
  %372 = call i32 @zfSendMmFrame(i32* %369, i32 %370, i32* %371, i32 6, i32 0, i32 0)
  br label %439

373:                                              ; preds = %367
  br label %374

374:                                              ; preds = %373, %293
  br label %375

375:                                              ; preds = %374, %210
  %376 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %377, i32 0, i32 5
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* %8, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %393

385:                                              ; preds = %375
  %386 = load i32, i32* %19, align 4
  %387 = icmp eq i32 %386, 1
  br i1 %387, label %388, label %393

388:                                              ; preds = %385
  %389 = load i32*, i32** %5, align 8
  %390 = load i32, i32* @ZM_WLAN_FRAME_TYPE_DEAUTH, align 4
  %391 = load i32*, i32** %7, align 8
  %392 = call i32 @zfSendMmFrame(i32* %389, i32 %390, i32* %391, i32 6, i32 0, i32 0)
  br label %439

393:                                              ; preds = %385, %375
  %394 = load i32*, i32** %5, align 8
  %395 = load i32*, i32** %7, align 8
  %396 = load i32, i32* @ZM_STATE_ASOC, align 4
  %397 = load i32, i32* %8, align 4
  %398 = load i32, i32* %12, align 4
  %399 = load i32, i32* %13, align 4
  %400 = load i32, i32* %14, align 4
  %401 = call i32 @zfApAddSta(i32* %394, i32* %395, i32 %396, i32 %397, i32 %398, i32 %399, i32 %400)
  store i32 %401, i32* %9, align 4
  %402 = load i32*, i32** %5, align 8
  %403 = load i32*, i32** %6, align 8
  %404 = load i32, i32* %9, align 4
  %405 = call i32 @zfApStoreAsocReqIe(i32* %402, i32* %403, i32 %404)
  br label %406

406:                                              ; preds = %393, %366, %292, %140, %66
  %407 = load i32, i32* %9, align 4
  %408 = icmp ne i32 %407, 65535
  br i1 %408, label %409, label %433

409:                                              ; preds = %406
  %410 = load i32*, i32** %5, align 8
  %411 = load i32*, i32** %6, align 8
  %412 = call i32 @zmw_rx_buf_readb(i32* %410, i32* %411, i32 0)
  store i32 %412, i32* %10, align 4
  %413 = load i32, i32* %10, align 4
  %414 = load i32, i32* @ZM_WLAN_FRAME_TYPE_ASOCREQ, align 4
  %415 = icmp eq i32 %413, %414
  br i1 %415, label %416, label %424

416:                                              ; preds = %409
  %417 = load i32*, i32** %5, align 8
  %418 = load i32, i32* @ZM_WLAN_FRAME_TYPE_ASOCRSP, align 4
  %419 = load i32*, i32** %7, align 8
  %420 = load i32, i32* %9, align 4
  %421 = add nsw i32 %420, 1
  %422 = load i32, i32* %8, align 4
  %423 = call i32 @zfSendMmFrame(i32* %417, i32 %418, i32* %419, i32 0, i32 %421, i32 %422)
  br label %432

424:                                              ; preds = %409
  %425 = load i32*, i32** %5, align 8
  %426 = load i32, i32* @ZM_WLAN_FRAME_TYPE_REASOCRSP, align 4
  %427 = load i32*, i32** %7, align 8
  %428 = load i32, i32* %9, align 4
  %429 = add nsw i32 %428, 1
  %430 = load i32, i32* %8, align 4
  %431 = call i32 @zfSendMmFrame(i32* %425, i32 %426, i32* %427, i32 0, i32 %429, i32 %430)
  br label %432

432:                                              ; preds = %424, %416
  br label %438

433:                                              ; preds = %406
  %434 = load i32*, i32** %5, align 8
  %435 = load i32, i32* @ZM_WLAN_FRAME_TYPE_DEAUTH, align 4
  %436 = load i32*, i32** %7, align 8
  %437 = call i32 @zfSendMmFrame(i32* %434, i32 %435, i32* %436, i32 6, i32 0, i32 0)
  br label %438

438:                                              ; preds = %433, %432
  br label %439

439:                                              ; preds = %438, %388, %368, %170
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfFindElement(i32*, i32*, i32) #1

declare dso_local i32 @zmw_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zfSendMmFrame(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @zfFindWifiElement(i32*, i32*, i32, i32) #1

declare dso_local i32 @zm_msg0_mm(i32, i8*) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zfCopyFromRxBuffer(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @zm_msg1_mm(i32, i8*, i32) #1

declare dso_local i32 @zfApAddSta(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @zfApStoreAsocReqIe(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
