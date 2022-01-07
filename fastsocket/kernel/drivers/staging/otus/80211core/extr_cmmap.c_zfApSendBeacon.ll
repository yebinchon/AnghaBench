; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApSendBeacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApSendBeacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64, i32*, i64*, i64*, i32*, i32 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_LV_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Send beacon, vap=\00", align 1
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Alloc beacon buf Fail!\00", align 1
@ZM_WLAN_EID_SSID = common dso_local global i32 0, align 4
@ZM_WLAN_EID_SUPPORT_RATE = common dso_local global i32 0, align 4
@ZM_RATE_SET_CCK = common dso_local global i32 0, align 4
@ZM_RATE_SET_OFDM = common dso_local global i32 0, align 4
@ZM_WLAN_TYPE_PURE_B = common dso_local global i64 0, align 8
@ZM_WLAN_EID_EXTENDED_RATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfApSendBeacon(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @zmw_get_wlan_dev(i32* %7)
  %9 = call i32 (...) @zmw_declare_for_critical_section()
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %12, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %18, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @ZM_LV_2, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @zm_msg1_mm(i32 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32* @zfwBufAllocate(i32* %37, i32 1024)
  store i32* %38, i32** %3, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i32, i32* @ZM_LV_0, align 4
  %42 = call i32 @zm_msg0_mm(i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %330

43:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  %44 = load i32*, i32** %2, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @zmw_tx_buf_writeh(i32* %44, i32* %45, i32 %46, i32 128)
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 2
  store i32 %49, i32* %4, align 4
  %50 = load i32*, i32** %2, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @zmw_tx_buf_writeh(i32* %50, i32* %51, i32 %52, i32 0)
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* %4, align 4
  %56 = load i32*, i32** %2, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @zmw_tx_buf_writeh(i32* %56, i32* %57, i32 %58, i32 65535)
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 2
  store i32 %61, i32* %4, align 4
  %62 = load i32*, i32** %2, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @zmw_tx_buf_writeh(i32* %62, i32* %63, i32 %64, i32 65535)
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 2
  store i32 %67, i32* %4, align 4
  %68 = load i32*, i32** %2, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @zmw_tx_buf_writeh(i32* %68, i32* %69, i32 %70, i32 65535)
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %4, align 4
  %74 = load i32*, i32** %2, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @zmw_tx_buf_writeh(i32* %74, i32* %75, i32 %76, i32 %81)
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 2
  store i32 %84, i32* %4, align 4
  %85 = load i32*, i32** %2, align 8
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @zmw_tx_buf_writeh(i32* %85, i32* %86, i32 %87, i32 %92)
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 2
  store i32 %95, i32* %4, align 4
  %96 = load i32*, i32** %2, align 8
  %97 = load i32*, i32** %3, align 8
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %5, align 4
  %105 = shl i32 %104, 8
  %106 = add nsw i32 %103, %105
  %107 = call i32 @zmw_tx_buf_writeh(i32* %96, i32* %97, i32 %98, i32 %106)
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 2
  store i32 %109, i32* %4, align 4
  %110 = load i32*, i32** %2, align 8
  %111 = load i32*, i32** %3, align 8
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @zmw_tx_buf_writeh(i32* %110, i32* %111, i32 %112, i32 %117)
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 2
  store i32 %120, i32* %4, align 4
  %121 = load i32*, i32** %2, align 8
  %122 = load i32*, i32** %3, align 8
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @zmw_tx_buf_writeh(i32* %121, i32* %122, i32 %123, i32 %128)
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 2
  store i32 %131, i32* %4, align 4
  %132 = load i32*, i32** %2, align 8
  %133 = load i32*, i32** %3, align 8
  %134 = load i32, i32* %4, align 4
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %5, align 4
  %141 = shl i32 %140, 8
  %142 = add nsw i32 %139, %141
  %143 = call i32 @zmw_tx_buf_writeh(i32* %132, i32* %133, i32 %134, i32 %142)
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, 2
  store i32 %145, i32* %4, align 4
  %146 = load i32*, i32** %2, align 8
  %147 = call i32 @zmw_enter_critical_section(i32* %146)
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 8
  %152 = shl i32 %150, 4
  store i32 %152, i32* %6, align 4
  %153 = load i32*, i32** %2, align 8
  %154 = call i32 @zmw_leave_critical_section(i32* %153)
  %155 = load i32*, i32** %2, align 8
  %156 = load i32*, i32** %3, align 8
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @zmw_tx_buf_writeh(i32* %155, i32* %156, i32 %157, i32 %158)
  %160 = load i32, i32* %4, align 4
  %161 = add nsw i32 %160, 2
  store i32 %161, i32* %4, align 4
  %162 = load i32*, i32** %2, align 8
  %163 = load i32*, i32** %3, align 8
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @zmw_tx_buf_writeh(i32* %162, i32* %163, i32 %164, i32 0)
  %166 = load i32*, i32** %2, align 8
  %167 = load i32*, i32** %3, align 8
  %168 = load i32, i32* %4, align 4
  %169 = add nsw i32 %168, 2
  %170 = call i32 @zmw_tx_buf_writeh(i32* %166, i32* %167, i32 %169, i32 0)
  %171 = load i32*, i32** %2, align 8
  %172 = load i32*, i32** %3, align 8
  %173 = load i32, i32* %4, align 4
  %174 = add nsw i32 %173, 4
  %175 = call i32 @zmw_tx_buf_writeh(i32* %171, i32* %172, i32 %174, i32 0)
  %176 = load i32*, i32** %2, align 8
  %177 = load i32*, i32** %3, align 8
  %178 = load i32, i32* %4, align 4
  %179 = add nsw i32 %178, 6
  %180 = call i32 @zmw_tx_buf_writeh(i32* %176, i32* %177, i32 %179, i32 0)
  %181 = load i32, i32* %4, align 4
  %182 = add nsw i32 %181, 8
  store i32 %182, i32* %4, align 4
  %183 = load i32*, i32** %2, align 8
  %184 = load i32*, i32** %3, align 8
  %185 = load i32, i32* %4, align 4
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @zmw_tx_buf_writeh(i32* %183, i32* %184, i32 %185, i32 %188)
  %190 = load i32, i32* %4, align 4
  %191 = add nsw i32 %190, 2
  store i32 %191, i32* %4, align 4
  %192 = load i32*, i32** %2, align 8
  %193 = load i32*, i32** %3, align 8
  %194 = load i32, i32* %4, align 4
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @zmw_tx_buf_writeh(i32* %192, i32* %193, i32 %194, i32 %202)
  %204 = load i32, i32* %4, align 4
  %205 = add nsw i32 %204, 2
  store i32 %205, i32* %4, align 4
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 3
  %209 = load i64*, i64** %208, align 8
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %209, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %43
  %216 = load i32*, i32** %2, align 8
  %217 = load i32*, i32** %3, align 8
  %218 = load i32, i32* %4, align 4
  %219 = load i32, i32* %5, align 4
  %220 = call i32 @zfApAddIeSsid(i32* %216, i32* %217, i32 %218, i32 %219)
  store i32 %220, i32* %4, align 4
  br label %233

221:                                              ; preds = %43
  %222 = load i32*, i32** %2, align 8
  %223 = load i32*, i32** %3, align 8
  %224 = load i32, i32* %4, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %4, align 4
  %226 = load i32, i32* @ZM_WLAN_EID_SSID, align 4
  %227 = call i32 @zmw_tx_buf_writeb(i32* %222, i32* %223, i32 %224, i32 %226)
  %228 = load i32*, i32** %2, align 8
  %229 = load i32*, i32** %3, align 8
  %230 = load i32, i32* %4, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %4, align 4
  %232 = call i32 @zmw_tx_buf_writeb(i32* %228, i32* %229, i32 %230, i32 0)
  br label %233

233:                                              ; preds = %221, %215
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = icmp slt i32 %236, 3000
  br i1 %237, label %238, label %245

238:                                              ; preds = %233
  %239 = load i32*, i32** %2, align 8
  %240 = load i32*, i32** %3, align 8
  %241 = load i32, i32* %4, align 4
  %242 = load i32, i32* @ZM_WLAN_EID_SUPPORT_RATE, align 4
  %243 = load i32, i32* @ZM_RATE_SET_CCK, align 4
  %244 = call i32 @zfMmAddIeSupportRate(i32* %239, i32* %240, i32 %241, i32 %242, i32 %243)
  store i32 %244, i32* %4, align 4
  br label %252

245:                                              ; preds = %233
  %246 = load i32*, i32** %2, align 8
  %247 = load i32*, i32** %3, align 8
  %248 = load i32, i32* %4, align 4
  %249 = load i32, i32* @ZM_WLAN_EID_SUPPORT_RATE, align 4
  %250 = load i32, i32* @ZM_RATE_SET_OFDM, align 4
  %251 = call i32 @zfMmAddIeSupportRate(i32* %246, i32* %247, i32 %248, i32 %249, i32 %250)
  store i32 %251, i32* %4, align 4
  br label %252

252:                                              ; preds = %245, %238
  %253 = load i32*, i32** %2, align 8
  %254 = load i32*, i32** %3, align 8
  %255 = load i32, i32* %4, align 4
  %256 = call i32 @zfMmAddIeDs(i32* %253, i32* %254, i32 %255)
  store i32 %256, i32* %4, align 4
  %257 = load i32*, i32** %2, align 8
  %258 = load i32*, i32** %3, align 8
  %259 = load i32, i32* %4, align 4
  %260 = load i32, i32* %5, align 4
  %261 = call i32 @zfApAddIeTim(i32* %257, i32* %258, i32 %259, i32 %260)
  store i32 %261, i32* %4, align 4
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 4
  %265 = load i64*, i64** %264, align 8
  %266 = load i32, i32* %5, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i64, i64* %265, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @ZM_WLAN_TYPE_PURE_B, align 8
  %271 = icmp ne i64 %269, %270
  br i1 %271, label %272, label %289

272:                                              ; preds = %252
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = icmp slt i32 %275, 3000
  br i1 %276, label %277, label %288

277:                                              ; preds = %272
  %278 = load i32*, i32** %2, align 8
  %279 = load i32*, i32** %3, align 8
  %280 = load i32, i32* %4, align 4
  %281 = call i32 @zfMmAddIeErp(i32* %278, i32* %279, i32 %280)
  store i32 %281, i32* %4, align 4
  %282 = load i32*, i32** %2, align 8
  %283 = load i32*, i32** %3, align 8
  %284 = load i32, i32* %4, align 4
  %285 = load i32, i32* @ZM_WLAN_EID_EXTENDED_RATE, align 4
  %286 = load i32, i32* @ZM_RATE_SET_OFDM, align 4
  %287 = call i32 @zfMmAddIeSupportRate(i32* %282, i32* %283, i32 %284, i32 %285, i32 %286)
  store i32 %287, i32* %4, align 4
  br label %288

288:                                              ; preds = %277, %272
  br label %289

289:                                              ; preds = %288, %252
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 3
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 5
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %5, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = icmp eq i32 %297, 1
  br i1 %298, label %299, label %305

299:                                              ; preds = %289
  %300 = load i32*, i32** %2, align 8
  %301 = load i32*, i32** %3, align 8
  %302 = load i32, i32* %4, align 4
  %303 = load i32, i32* %5, align 4
  %304 = call i32 @zfMmAddIeWpa(i32* %300, i32* %301, i32 %302, i32 %303)
  store i32 %304, i32* %4, align 4
  br label %305

305:                                              ; preds = %299, %289
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 3
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 6
  %309 = load i32, i32* %308, align 8
  %310 = icmp eq i32 %309, 1
  br i1 %310, label %311, label %317

311:                                              ; preds = %305
  %312 = load i32*, i32** %2, align 8
  %313 = load i32*, i32** %3, align 8
  %314 = load i32, i32* %4, align 4
  %315 = load i32, i32* %5, align 4
  %316 = call i32 @zfApAddIeWmePara(i32* %312, i32* %313, i32 %314, i32 %315)
  store i32 %316, i32* %4, align 4
  br label %317

317:                                              ; preds = %311, %305
  %318 = load i32*, i32** %2, align 8
  %319 = load i32*, i32** %3, align 8
  %320 = load i32, i32* %4, align 4
  %321 = call i32 @zfMmAddHTCapability(i32* %318, i32* %319, i32 %320)
  store i32 %321, i32* %4, align 4
  %322 = load i32*, i32** %2, align 8
  %323 = load i32*, i32** %3, align 8
  %324 = load i32, i32* %4, align 4
  %325 = call i32 @zfMmAddExtendedHTCapability(i32* %322, i32* %323, i32 %324)
  store i32 %325, i32* %4, align 4
  %326 = load i32*, i32** %2, align 8
  %327 = load i32*, i32** %3, align 8
  %328 = load i32, i32* %4, align 4
  %329 = call i32 @zfHpSendBeacon(i32* %326, i32* %327, i32 %328)
  br label %330

330:                                              ; preds = %317, %40
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zm_msg1_mm(i32, i8*, i32) #1

declare dso_local i32* @zfwBufAllocate(i32*, i32) #1

declare dso_local i32 @zm_msg0_mm(i32, i8*) #1

declare dso_local i32 @zmw_tx_buf_writeh(i32*, i32*, i32, i32) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfApAddIeSsid(i32*, i32*, i32, i32) #1

declare dso_local i32 @zmw_tx_buf_writeb(i32*, i32*, i32, i32) #1

declare dso_local i32 @zfMmAddIeSupportRate(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @zfMmAddIeDs(i32*, i32*, i32) #1

declare dso_local i32 @zfApAddIeTim(i32*, i32*, i32, i32) #1

declare dso_local i32 @zfMmAddIeErp(i32*, i32*, i32) #1

declare dso_local i32 @zfMmAddIeWpa(i32*, i32*, i32, i32) #1

declare dso_local i32 @zfApAddIeWmePara(i32*, i32*, i32, i32) #1

declare dso_local i32 @zfMmAddHTCapability(i32*, i32*, i32) #1

declare dso_local i32 @zfMmAddExtendedHTCapability(i32*, i32*, i32) #1

declare dso_local i32 @zfHpSendBeacon(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
