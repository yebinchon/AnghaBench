; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaSendBeacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaSendBeacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i64, i32, i64, %struct.TYPE_5__, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_5__ = type { i32*, i64, i64, i32* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"Allocate beacon buffer failed\00", align 1
@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_CH_G_14 = common dso_local global i64 0, align 8
@ZM_WLAN_EID_SUPPORT_RATE = common dso_local global i32 0, align 4
@ZM_RATE_SET_CCK = common dso_local global i32 0, align 4
@ZM_WIRELESS_MODE_24_54 = common dso_local global i32 0, align 4
@ZM_WIRELESS_MODE_24_N = common dso_local global i32 0, align 4
@ZM_AUTH_MODE_WPA2PSK = common dso_local global i64 0, align 8
@ZM_WLAN_FRAME_TYPE_AUTH = common dso_local global i32 0, align 4
@ZM_WLAN_EID_EXTENDED_RATE = common dso_local global i32 0, align 4
@ZM_RATE_SET_OFDM = common dso_local global i32 0, align 4
@ZM_MODE_IBSS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfStaSendBeacon(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @zmw_get_wlan_dev(i32* %6)
  %8 = call i32 (...) @zmw_declare_for_critical_section()
  %9 = load i32*, i32** %2, align 8
  %10 = call i32* @zfwBufAllocate(i32* %9, i32 1024)
  store i32* %10, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %303

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @zmw_tx_buf_writeh(i32* %15, i32* %16, i32 %17, i32 128)
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 2
  store i32 %20, i32* %4, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @zmw_tx_buf_writeh(i32* %21, i32* %22, i32 %23, i32 0)
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 2
  store i32 %26, i32* %4, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @zmw_tx_buf_writeh(i32* %27, i32* %28, i32 %29, i32 65535)
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 2
  store i32 %32, i32* %4, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @zmw_tx_buf_writeh(i32* %33, i32* %34, i32 %35, i32 65535)
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %4, align 4
  %39 = load i32*, i32** %2, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @zmw_tx_buf_writeh(i32* %39, i32* %40, i32 %41, i32 65535)
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 2
  store i32 %44, i32* %4, align 4
  %45 = load i32*, i32** %2, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @zmw_tx_buf_writeh(i32* %45, i32* %46, i32 %47, i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* %4, align 4
  %56 = load i32*, i32** %2, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @zmw_tx_buf_writeh(i32* %56, i32* %57, i32 %58, i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 2
  store i32 %66, i32* %4, align 4
  %67 = load i32*, i32** %2, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @zmw_tx_buf_writeh(i32* %67, i32* %68, i32 %69, i32 %74)
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %4, align 4
  %78 = load i32*, i32** %2, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @zmw_tx_buf_writeh(i32* %78, i32* %79, i32 %80, i32 %86)
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 2
  store i32 %89, i32* %4, align 4
  %90 = load i32*, i32** %2, align 8
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @zmw_tx_buf_writeh(i32* %90, i32* %91, i32 %92, i32 %98)
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 2
  store i32 %101, i32* %4, align 4
  %102 = load i32*, i32** %2, align 8
  %103 = load i32*, i32** %3, align 8
  %104 = load i32, i32* %4, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @zmw_tx_buf_writeh(i32* %102, i32* %103, i32 %104, i32 %110)
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 2
  store i32 %113, i32* %4, align 4
  %114 = load i32*, i32** %2, align 8
  %115 = call i32 @zmw_enter_critical_section(i32* %114)
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  %120 = shl i32 %118, 4
  store i32 %120, i32* %5, align 4
  %121 = load i32*, i32** %2, align 8
  %122 = call i32 @zmw_leave_critical_section(i32* %121)
  %123 = load i32*, i32** %2, align 8
  %124 = load i32*, i32** %3, align 8
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @zmw_tx_buf_writeh(i32* %123, i32* %124, i32 %125, i32 %126)
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, 2
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 8
  store i32 %131, i32* %4, align 4
  %132 = load i32*, i32** %2, align 8
  %133 = load i32*, i32** %3, align 8
  %134 = load i32, i32* %4, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @zmw_tx_buf_writeh(i32* %132, i32* %133, i32 %134, i32 %137)
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 2
  store i32 %140, i32* %4, align 4
  %141 = load i32*, i32** %2, align 8
  %142 = load i32*, i32** %3, align 8
  %143 = load i32, i32* %4, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %4, align 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @zmw_tx_buf_writeb(i32* %141, i32* %142, i32 %143, i32 %150)
  %152 = load i32*, i32** %2, align 8
  %153 = load i32*, i32** %3, align 8
  %154 = load i32, i32* %4, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %4, align 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @zmw_tx_buf_writeb(i32* %152, i32* %153, i32 %154, i32 %161)
  %163 = load i32*, i32** %2, align 8
  %164 = load i32*, i32** %3, align 8
  %165 = load i32, i32* %4, align 4
  %166 = call i32 @zfStaAddIeSsid(i32* %163, i32* %164, i32 %165)
  store i32 %166, i32* %4, align 4
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @ZM_CH_G_14, align 8
  %171 = icmp sle i64 %169, %170
  br i1 %171, label %172, label %244

172:                                              ; preds = %14
  %173 = load i32*, i32** %2, align 8
  %174 = load i32*, i32** %3, align 8
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @ZM_WLAN_EID_SUPPORT_RATE, align 4
  %177 = load i32, i32* @ZM_RATE_SET_CCK, align 4
  %178 = call i32 @zfMmAddIeSupportRate(i32* %173, i32* %174, i32 %175, i32 %176, i32 %177)
  store i32 %178, i32* %4, align 4
  %179 = load i32*, i32** %2, align 8
  %180 = load i32*, i32** %3, align 8
  %181 = load i32, i32* %4, align 4
  %182 = call i32 @zfMmAddIeDs(i32* %179, i32* %180, i32 %181)
  store i32 %182, i32* %4, align 4
  %183 = load i32*, i32** %2, align 8
  %184 = load i32*, i32** %3, align 8
  %185 = load i32, i32* %4, align 4
  %186 = call i32 @zfStaAddIeIbss(i32* %183, i32* %184, i32 %185)
  store i32 %186, i32* %4, align 4
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 6
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %208

192:                                              ; preds = %172
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @ZM_WIRELESS_MODE_24_54, align 4
  %197 = load i32, i32* @ZM_WIRELESS_MODE_24_N, align 4
  %198 = or i32 %196, %197
  %199 = and i32 %195, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %192
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 7
  store i64 0, i64* %203, align 8
  %204 = load i32*, i32** %2, align 8
  %205 = load i32*, i32** %3, align 8
  %206 = load i32, i32* %4, align 4
  %207 = call i32 @zfMmAddIeErp(i32* %204, i32* %205, i32 %206)
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %201, %192, %172
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 5
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @ZM_AUTH_MODE_WPA2PSK, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %208
  %216 = load i32*, i32** %2, align 8
  %217 = load i32*, i32** %3, align 8
  %218 = load i32, i32* %4, align 4
  %219 = load i32, i32* @ZM_WLAN_FRAME_TYPE_AUTH, align 4
  %220 = call i32 @zfwStaAddIeWpaRsn(i32* %216, i32* %217, i32 %218, i32 %219)
  store i32 %220, i32* %4, align 4
  br label %221

221:                                              ; preds = %215, %208
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 6
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %243

227:                                              ; preds = %221
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @ZM_WIRELESS_MODE_24_54, align 4
  %232 = load i32, i32* @ZM_WIRELESS_MODE_24_N, align 4
  %233 = or i32 %231, %232
  %234 = and i32 %230, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %227
  %237 = load i32*, i32** %2, align 8
  %238 = load i32*, i32** %3, align 8
  %239 = load i32, i32* %4, align 4
  %240 = load i32, i32* @ZM_WLAN_EID_EXTENDED_RATE, align 4
  %241 = load i32, i32* @ZM_RATE_SET_OFDM, align 4
  %242 = call i32 @zfMmAddIeSupportRate(i32* %237, i32* %238, i32 %239, i32 %240, i32 %241)
  store i32 %242, i32* %4, align 4
  br label %243

243:                                              ; preds = %236, %227, %221
  br label %272

244:                                              ; preds = %14
  %245 = load i32*, i32** %2, align 8
  %246 = load i32*, i32** %3, align 8
  %247 = load i32, i32* %4, align 4
  %248 = load i32, i32* @ZM_WLAN_EID_SUPPORT_RATE, align 4
  %249 = load i32, i32* @ZM_RATE_SET_OFDM, align 4
  %250 = call i32 @zfMmAddIeSupportRate(i32* %245, i32* %246, i32 %247, i32 %248, i32 %249)
  store i32 %250, i32* %4, align 4
  %251 = load i32*, i32** %2, align 8
  %252 = load i32*, i32** %3, align 8
  %253 = load i32, i32* %4, align 4
  %254 = call i32 @zfMmAddIeDs(i32* %251, i32* %252, i32 %253)
  store i32 %254, i32* %4, align 4
  %255 = load i32*, i32** %2, align 8
  %256 = load i32*, i32** %3, align 8
  %257 = load i32, i32* %4, align 4
  %258 = call i32 @zfStaAddIeIbss(i32* %255, i32* %256, i32 %257)
  store i32 %258, i32* %4, align 4
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 5
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @ZM_AUTH_MODE_WPA2PSK, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %271

265:                                              ; preds = %244
  %266 = load i32*, i32** %2, align 8
  %267 = load i32*, i32** %3, align 8
  %268 = load i32, i32* %4, align 4
  %269 = load i32, i32* @ZM_WLAN_FRAME_TYPE_AUTH, align 4
  %270 = call i32 @zfwStaAddIeWpaRsn(i32* %266, i32* %267, i32 %268, i32 %269)
  store i32 %270, i32* %4, align 4
  br label %271

271:                                              ; preds = %265, %244
  br label %272

272:                                              ; preds = %271, %243
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 4
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @ZM_MODE_IBSS, align 8
  %277 = icmp ne i64 %275, %276
  br i1 %277, label %278, label %287

278:                                              ; preds = %272
  %279 = load i32*, i32** %2, align 8
  %280 = load i32*, i32** %3, align 8
  %281 = load i32, i32* %4, align 4
  %282 = call i32 @zfMmAddHTCapability(i32* %279, i32* %280, i32 %281)
  store i32 %282, i32* %4, align 4
  %283 = load i32*, i32** %2, align 8
  %284 = load i32*, i32** %3, align 8
  %285 = load i32, i32* %4, align 4
  %286 = call i32 @zfMmAddExtendedHTCapability(i32* %283, i32* %284, i32 %285)
  store i32 %286, i32* %4, align 4
  br label %287

287:                                              ; preds = %278, %272
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 5
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %287
  %294 = load i32*, i32** %2, align 8
  %295 = load i32*, i32** %3, align 8
  %296 = load i32, i32* %4, align 4
  %297 = call i32 @zfStaAddIbssAdditionalIE(i32* %294, i32* %295, i32 %296)
  store i32 %297, i32* %4, align 4
  br label %298

298:                                              ; preds = %293, %287
  %299 = load i32*, i32** %2, align 8
  %300 = load i32*, i32** %3, align 8
  %301 = load i32, i32* %4, align 4
  %302 = call i32 @zfHpSendBeacon(i32* %299, i32* %300, i32 %301)
  br label %303

303:                                              ; preds = %298, %12
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32* @zfwBufAllocate(i32*, i32) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zmw_tx_buf_writeh(i32*, i32*, i32, i32) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zmw_tx_buf_writeb(i32*, i32*, i32, i32) #1

declare dso_local i32 @zfStaAddIeSsid(i32*, i32*, i32) #1

declare dso_local i32 @zfMmAddIeSupportRate(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @zfMmAddIeDs(i32*, i32*, i32) #1

declare dso_local i32 @zfStaAddIeIbss(i32*, i32*, i32) #1

declare dso_local i32 @zfMmAddIeErp(i32*, i32*, i32) #1

declare dso_local i32 @zfwStaAddIeWpaRsn(i32*, i32*, i32, i32) #1

declare dso_local i32 @zfMmAddHTCapability(i32*, i32*, i32) #1

declare dso_local i32 @zfMmAddExtendedHTCapability(i32*, i32*, i32) #1

declare dso_local i32 @zfStaAddIbssAdditionalIE(i32*, i32*, i32) #1

declare dso_local i32 @zfHpSendBeacon(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
