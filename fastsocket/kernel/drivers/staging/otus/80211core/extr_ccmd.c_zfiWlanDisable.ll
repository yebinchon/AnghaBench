; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ccmd.c_zfiWlanDisable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ccmd.c_zfiWlanDisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, %struct.TYPE_6__, i32 (i32*, i32, i32)*, i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32, i64, i32, i64, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@ZM_WLAN_STATE_DISABLED = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_8__* null, align 8
@ZM_LV_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Disable Wlan\00", align 1
@ZM_MODE_AP = common dso_local global i64 0, align 8
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@ZM_AUTH_MODE_WPA2 = common dso_local global i64 0, align 8
@ZM_WLAN_FRAME_TYPE_DEAUTH = common dso_local global i32 0, align 4
@ZM_MODE_IBSS = common dso_local global i64 0, align 8
@ZM_EVENT_IBSS_MONITOR = common dso_local global i32 0, align 4
@ZM_STA_WPA_STATE_INIT = common dso_local global i32 0, align 4
@ZM_STA_CONN_STATE_NONE = common dso_local global i32 0, align 4
@ZM_RIFS_STATE_DETECTED = common dso_local global i64 0, align 8
@ZM_RIFS_STATE_DETECTING = common dso_local global i64 0, align 8
@ZM_STA_STATE_DISCONNECT = common dso_local global i32 0, align 4
@ZM_STATUS_MEDIA_CONNECTION_DISABLED = common dso_local global i32 0, align 4
@ZM_STATUS_MEDIA_DISABLED = common dso_local global i32 0, align 4
@ZM_MAX_STA_SUPPORT = common dso_local global i64 0, align 8
@ZM_MAX_OPPOSITE_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Disable software encryption\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfiWlanDisable(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @zmw_get_wlan_dev(i32* %7)
  %9 = load i32, i32* @ZM_WLAN_STATE_DISABLED, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @ZM_LV_1, align 4
  %13 = call i32 @zm_msg0_mm(i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ZM_MODE_AP, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %148

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @zfStaIsConnected(i32* %20)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %19
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ZM_AUTH_MODE_WPA2, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @ZM_WLAN_FRAME_TYPE_DEAUTH, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @zfSendMmFrame(i32* %38, i32 %39, i32 %43, i32 3, i32 0, i32 0)
  br label %45

45:                                               ; preds = %37, %34
  br label %46

46:                                               ; preds = %45, %27, %19
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ZM_MODE_IBSS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 14
  store i64 0, i64* %55, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* @ZM_EVENT_IBSS_MONITOR, align 4
  %58 = call i32 @zfTimerCancel(i32* %56, i32 %57)
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @zfStaIbssMonitoring(i32* %59, i32 1)
  br label %61

61:                                               ; preds = %52, %46
  %62 = load i32, i32* @ZM_STA_WPA_STATE_INIT, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 12
  store i32 %62, i32* %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 11
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* @ZM_STA_CONN_STATE_NONE, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 10
  store i32 %69, i32* %72, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 9
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ZM_RIFS_STATE_DETECTED, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %61
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @zfHpDisableRifs(i32* %83)
  br label %85

85:                                               ; preds = %82, %61
  %86 = load i64, i64* @ZM_RIFS_STATE_DETECTING, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store i64 %86, i64* %89, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 8
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 7
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 6
  store i64 0, i64* %98, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 5
  store i64 0, i64* %101, align 8
  %102 = load i32*, i32** %3, align 8
  %103 = load i32, i32* @ZM_STA_STATE_DISCONNECT, align 4
  %104 = call i32 @zfChangeAdapterState(i32* %102, i32 %103)
  %105 = load i64, i64* %4, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %85
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @zfHpResetKeyCache(i32* %108)
  br label %110

110:                                              ; preds = %107, %85
  %111 = load i64, i64* %6, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %110
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  %116 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %115, align 8
  %117 = icmp ne i32 (i32*, i32, i32)* %116, null
  br i1 %117, label %118, label %129

118:                                              ; preds = %113
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %120, align 8
  %122 = load i32*, i32** %3, align 8
  %123 = load i32, i32* @ZM_STATUS_MEDIA_CONNECTION_DISABLED, align 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 %121(i32* %122, i32 %123, i32 %127)
  br label %129

129:                                              ; preds = %118, %113
  br label %147

130:                                              ; preds = %110
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 3
  %133 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %132, align 8
  %134 = icmp ne i32 (i32*, i32, i32)* %133, null
  br i1 %134, label %135, label %146

135:                                              ; preds = %130
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 3
  %138 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %137, align 8
  %139 = load i32*, i32** %3, align 8
  %140 = load i32, i32* @ZM_STATUS_MEDIA_DISABLED, align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i32 %138(i32* %139, i32 %140, i32 %144)
  br label %146

146:                                              ; preds = %135, %130
  br label %147

147:                                              ; preds = %146, %129
  br label %191

148:                                              ; preds = %2
  store i64 0, i64* %5, align 8
  br label %149

149:                                              ; preds = %176, %148
  %150 = load i64, i64* %5, align 8
  %151 = load i64, i64* @ZM_MAX_STA_SUPPORT, align 8
  %152 = icmp ult i64 %150, %151
  br i1 %152, label %153, label %179

153:                                              ; preds = %149
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = load i64, i64* %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %175

163:                                              ; preds = %153
  %164 = load i32*, i32** %3, align 8
  %165 = load i32, i32* @ZM_WLAN_FRAME_TYPE_DEAUTH, align 4
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = load i64, i64* %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @zfSendMmFrame(i32* %164, i32 %165, i32 %173, i32 3, i32 0, i32 0)
  br label %175

175:                                              ; preds = %163, %153
  br label %176

176:                                              ; preds = %175
  %177 = load i64, i64* %5, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %5, align 8
  br label %149

179:                                              ; preds = %149
  %180 = load i64, i64* %4, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i32*, i32** %3, align 8
  %184 = call i32 @zfHpResetKeyCache(i32* %183)
  br label %185

185:                                              ; preds = %182, %179
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %188, align 8
  br label %191

191:                                              ; preds = %185, %147
  %192 = load i32*, i32** %3, align 8
  %193 = call i32 @zfHpDisableBeacon(i32* %192)
  %194 = load i32*, i32** %3, align 8
  %195 = call i32 @zfFlushVtxq(i32* %194)
  %196 = load i32*, i32** %3, align 8
  %197 = call i32 @zfApFlushBufferedPsFrame(i32* %196)
  %198 = load i32*, i32** %3, align 8
  %199 = call i32 @zfAgingDefragList(i32* %198, i32 1)
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = inttoptr i64 %203 to i64*
  %205 = load i32, i32* @ZM_MAX_OPPOSITE_COUNT, align 4
  %206 = sext i32 %205 to i64
  %207 = mul i64 4, %206
  %208 = trunc i64 %207 to i32
  %209 = call i32 @zfZeroMemory(i64* %204, i32 %208)
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %191
  %216 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %217 = load i32*, i32** %3, align 8
  %218 = call i32 @zfStaDisableSWEncryption(i32* %217)
  br label %219

219:                                              ; preds = %215, %191
  ret i64 0
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zm_msg0_mm(i32, i8*) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

declare dso_local i32 @zfSendMmFrame(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @zfTimerCancel(i32*, i32) #1

declare dso_local i32 @zfStaIbssMonitoring(i32*, i32) #1

declare dso_local i32 @zfHpDisableRifs(i32*) #1

declare dso_local i32 @zfChangeAdapterState(i32*, i32) #1

declare dso_local i32 @zfHpResetKeyCache(i32*) #1

declare dso_local i32 @zfHpDisableBeacon(i32*) #1

declare dso_local i32 @zfFlushVtxq(i32*) #1

declare dso_local i32 @zfApFlushBufferedPsFrame(i32*) #1

declare dso_local i32 @zfAgingDefragList(i32*, i32) #1

declare dso_local i32 @zfZeroMemory(i64*, i32) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zfStaDisableSWEncryption(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
