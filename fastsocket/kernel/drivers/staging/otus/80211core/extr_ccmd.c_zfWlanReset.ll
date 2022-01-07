; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ccmd.c_zfWlanReset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ccmd.c_zfWlanReset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i32 (i32*, i32, i32)* }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"zfWlanReset\00", align 1
@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@ZM_AUTH_MODE_WPA2 = common dso_local global i64 0, align 8
@ZM_WLAN_FRAME_TYPE_DEAUTH = common dso_local global i32 0, align 4
@ZM_STA_STATE_DISCONNECT = common dso_local global i32 0, align 4
@ZM_STATUS_MEDIA_CONNECTION_RESET = common dso_local global i32 0, align 4
@ZM_STATUS_MEDIA_RESET = common dso_local global i32 0, align 4
@ZM_EVENT_IBSS_MONITOR = common dso_local global i32 0, align 4
@ZM_EVENT_CM_BLOCK_TIMER = common dso_local global i32 0, align 4
@ZM_EVENT_CM_DISCONNECT = common dso_local global i32 0, align 4
@ZM_STA_CONN_STATE_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ZM_NO_WEP = common dso_local global i32 0, align 4
@ZM_ENCRYPTION_WEP_DISABLED = common dso_local global i32 0, align 4
@ZM_STA_WPA_STATE_INIT = common dso_local global i32 0, align 4
@ZM_RIFS_STATE_DETECTED = common dso_local global i64 0, align 8
@ZM_RIFS_STATE_DETECTING = common dso_local global i64 0, align 8
@ZM_MAX_OPPOSITE_COUNT = common dso_local global i32 0, align 4
@ZM_SCAN_MGR_SCAN_INTERNAL = common dso_local global i32 0, align 4
@ZM_SCAN_MGR_SCAN_EXTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Disable software encryption\00", align 1
@ZM_MODE_PSEUDO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfWlanReset(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @zmw_get_wlan_dev(i32* %4)
  %6 = call i32 (...) @zmw_declare_for_critical_section()
  %7 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @zfStaIsConnected(i32* %8)
  store i64 %9, i64* %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ZM_AUTH_MODE_WPA2, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @ZM_WLAN_FRAME_TYPE_DEAUTH, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 21
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @zfSendMmFrame(i32* %26, i32 %27, i32 %31, i32 3, i32 0, i32 0)
  br label %33

33:                                               ; preds = %25, %22
  br label %34

34:                                               ; preds = %33, %15, %1
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @ZM_STA_STATE_DISCONNECT, align 4
  %37 = call i32 @zfChangeAdapterState(i32* %35, i32 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @zfHpResetKeyCache(i32* %38)
  %40 = load i64, i64* %3, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %34
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %44, align 8
  %46 = icmp ne i32 (i32*, i32, i32)* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %49, align 8
  %51 = load i32*, i32** %2, align 8
  %52 = load i32, i32* @ZM_STATUS_MEDIA_CONNECTION_RESET, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 21
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %50(i32* %51, i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %47, %42
  br label %76

59:                                               ; preds = %34
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %61, align 8
  %63 = icmp ne i32 (i32*, i32, i32)* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %66, align 8
  %68 = load i32*, i32** %2, align 8
  %69 = load i32, i32* @ZM_STATUS_MEDIA_RESET, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 21
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %67(i32* %68, i32 %69, i32 %73)
  br label %75

75:                                               ; preds = %64, %59
  br label %76

76:                                               ; preds = %75, %58
  %77 = load i32*, i32** %2, align 8
  %78 = call i32 @zfHpDisableBeacon(i32* %77)
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @zfAgingDefragList(i32* %79, i32 1)
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @zfFlushVtxq(i32* %81)
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @zfStaRefreshBlockList(i32* %83, i32 1)
  %85 = load i32*, i32** %2, align 8
  %86 = call i32 @zmw_enter_critical_section(i32* %85)
  %87 = load i32*, i32** %2, align 8
  %88 = load i32, i32* @ZM_EVENT_IBSS_MONITOR, align 4
  %89 = call i32 @zfTimerCancel(i32* %87, i32 %88)
  %90 = load i32*, i32** %2, align 8
  %91 = load i32, i32* @ZM_EVENT_CM_BLOCK_TIMER, align 4
  %92 = call i32 @zfTimerCancel(i32* %90, i32 %91)
  %93 = load i32*, i32** %2, align 8
  %94 = load i32, i32* @ZM_EVENT_CM_DISCONNECT, align 4
  %95 = call i32 @zfTimerCancel(i32* %93, i32 %94)
  %96 = load i32, i32* @ZM_STA_CONN_STATE_NONE, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 20
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* @FALSE, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 19
  store i32 %100, i32* %103, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 18
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 17
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 16
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* @ZM_NO_WEP, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 15
  store i32 %113, i32* %116, align 8
  %117 = load i32, i32* @ZM_ENCRYPTION_WEP_DISABLED, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 14
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* @ZM_STA_WPA_STATE_INIT, align 4
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 13
  store i32 %121, i32* %124, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 12
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 11
  store i64 0, i64* %130, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 9
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 8
  store i64 0, i64* %136, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @ZM_RIFS_STATE_DETECTED, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %76
  %144 = load i32*, i32** %2, align 8
  %145 = call i32 @zfHpDisableRifs(i32* %144)
  br label %146

146:                                              ; preds = %143, %76
  %147 = load i64, i64* @ZM_RIFS_STATE_DETECTING, align 8
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  store i64 %147, i64* %150, align 8
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 7
  store i64 0, i64* %153, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 6
  store i64 0, i64* %156, align 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 5
  store i64 0, i64* %159, align 8
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 4
  store i64 0, i64* %162, align 8
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to i64*
  %168 = load i32, i32* @ZM_MAX_OPPOSITE_COUNT, align 4
  %169 = sext i32 %168 to i64
  %170 = mul i64 4, %169
  %171 = trunc i64 %170 to i32
  %172 = call i32 @zfZeroMemory(i64* %167, i32 %171)
  %173 = load i32*, i32** %2, align 8
  %174 = call i32 @zmw_leave_critical_section(i32* %173)
  %175 = load i32*, i32** %2, align 8
  %176 = load i32, i32* @ZM_SCAN_MGR_SCAN_INTERNAL, align 4
  %177 = call i32 @zfScanMgrScanStop(i32* %175, i32 %176)
  %178 = load i32*, i32** %2, align 8
  %179 = load i32, i32* @ZM_SCAN_MGR_SCAN_EXTERNAL, align 4
  %180 = call i32 @zfScanMgrScanStop(i32* %178, i32 %179)
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %146
  %187 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %188 = load i32*, i32** %2, align 8
  %189 = call i32 @zfStaDisableSWEncryption(i32* %188)
  br label %190

190:                                              ; preds = %186, %146
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @ZM_MODE_PSEUDO, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %190
  %197 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  br label %200

200:                                              ; preds = %196, %190
  ret i32 0
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

declare dso_local i32 @zfSendMmFrame(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @zfChangeAdapterState(i32*, i32) #1

declare dso_local i32 @zfHpResetKeyCache(i32*) #1

declare dso_local i32 @zfHpDisableBeacon(i32*) #1

declare dso_local i32 @zfAgingDefragList(i32*, i32) #1

declare dso_local i32 @zfFlushVtxq(i32*) #1

declare dso_local i32 @zfStaRefreshBlockList(i32*, i32) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zfTimerCancel(i32*, i32) #1

declare dso_local i32 @zfHpDisableRifs(i32*) #1

declare dso_local i32 @zfZeroMemory(i64*, i32) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfScanMgrScanStop(i32*, i32) #1

declare dso_local i32 @zfStaDisableSWEncryption(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
