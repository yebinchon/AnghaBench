; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cscanmgr.c_zfScanMgrScanEventTimeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cscanmgr.c_zfScanMgrScanEventTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 (i32*, i32*)*, i64, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i64, i32, i64, i32, i32, i32, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i64* }
%struct.TYPE_5__ = type { i32 }

@wd = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"scan 1 type: \00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"scan channel count = \00", align 1
@ZM_EVENT_TIMEOUT_SCAN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"WOW!! scan is cancelled\0A\00", align 1
@ZM_SCAN_MGR_SCAN_NONE = common dso_local global i32 0, align 4
@zfScanMgrEventScanCompleteCb = common dso_local global i32 0, align 4
@ZM_RIFS_STATE_DETECTED = common dso_local global i64 0, align 8
@ZM_EVENT_IN_SCAN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"scan 2\00", align 1
@zfScanMgrEventSetFreqCompleteCb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfScanMgrScanEventTimeout(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @zmw_get_wlan_dev(i32* %9)
  %11 = call i32 (...) @zmw_declare_for_critical_section()
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @zmw_enter_critical_section(i32* %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @zmw_leave_critical_section(i32* %20)
  store i32 -1, i32* %2, align 4
  br label %239

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 9
  %31 = call i32 @zfChGetNextChannel(i32* %23, i32 %27, i32* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 65535
  br i1 %33, label %42, label %34

34:                                               ; preds = %22
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @zfChGetLastChannel(i32* %39, i32* %5)
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %221

42:                                               ; preds = %34, %22
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* @ZM_EVENT_TIMEOUT_SCAN, align 4
  %59 = call i32 @zfTimerCancel(i32* %57, i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @FALSE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %42
  %67 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @zmw_leave_critical_section(i32* %68)
  br label %199

70:                                               ; preds = %42
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  switch i32 %76, label %106 [
    i32 129, label %77
    i32 128, label %94
  ]

77:                                               ; preds = %70
  store i32 1, i32* %7, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 127
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %77
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 127
  store i64 0, i64* %92, align 8
  store i32 1, i32* %8, align 4
  br label %93

93:                                               ; preds = %86, %77
  br label %108

94:                                               ; preds = %70
  store i32 1, i32* %8, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 128
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = call i32 @zm_assert(i32 0)
  br label %105

105:                                              ; preds = %103, %94
  br label %108

106:                                              ; preds = %70
  %107 = call i32 @zm_assert(i32 0)
  br label %108

108:                                              ; preds = %106, %105, %93
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  store i64 0, i64* %117, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  store i32 100, i32* %121, align 4
  %122 = load i32, i32* @ZM_SCAN_MGR_SCAN_NONE, align 4
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store i32 %122, i32* %126, align 8
  %127 = load i32*, i32** %3, align 8
  %128 = call i32 @zmw_leave_critical_section(i32* %127)
  %129 = load i32*, i32** %3, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @zfScanMgrEventScanCompleteCb, align 4
  %140 = call i32 @zfCoreSetFrequencyEx(i32* %129, i32 %132, i32 %135, i32 %138, i32 %139)
  %141 = load i64, i64* @FALSE, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  store i64 %141, i64* %144, align 8
  %145 = load i32*, i32** %3, align 8
  %146 = call i64 @zfStaIsConnected(i32* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %188

148:                                              ; preds = %108
  %149 = load i32*, i32** %3, align 8
  %150 = call i32 @zfHpFinishSiteSurvey(i32* %149, i32 1)
  %151 = load i32*, i32** %3, align 8
  %152 = call i32 @zmw_enter_critical_section(i32* %151)
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  store i32 2, i32* %155, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  store i64 0, i64* %157, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 7
  store i64 0, i64* %160, align 8
  %161 = load i32*, i32** %3, align 8
  %162 = call i32 @zmw_leave_critical_section(i32* %161)
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @ZM_RIFS_STATE_DETECTED, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %187

169:                                              ; preds = %148
  %170 = load i32*, i32** %3, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = icmp slt i32 %174, 3000
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 1, i32 0
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @zfHpEnableRifs(i32* %170, i32 %177, i32 %181, i32 %185)
  br label %187

187:                                              ; preds = %169, %148
  br label %198

188:                                              ; preds = %108
  %189 = load i32*, i32** %3, align 8
  %190 = call i32 @zfHpFinishSiteSurvey(i32* %189, i32 0)
  %191 = load i32*, i32** %3, align 8
  %192 = call i32 @zmw_enter_critical_section(i32* %191)
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 2
  store i32 0, i32* %195, align 8
  %196 = load i32*, i32** %3, align 8
  %197 = call i32 @zmw_leave_critical_section(i32* %196)
  br label %198

198:                                              ; preds = %188, %187
  br label %199

199:                                              ; preds = %198, %66
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %214

202:                                              ; preds = %199
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  %205 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %204, align 8
  %206 = icmp ne i32 (i32*, i32*)* %205, null
  br i1 %206, label %207, label %213

207:                                              ; preds = %202
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  %210 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %209, align 8
  %211 = load i32*, i32** %3, align 8
  %212 = call i32 %210(i32* %211, i32* null)
  br label %213

213:                                              ; preds = %207, %202
  br label %214

214:                                              ; preds = %213, %199
  %215 = load i32, i32* %8, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32*, i32** %3, align 8
  %219 = call i32 @zfStaReconnect(i32* %218)
  br label %220

220:                                              ; preds = %217, %214
  store i32 0, i32* %2, align 4
  br label %239

221:                                              ; preds = %34
  %222 = load i32, i32* %4, align 4
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  store i32 %222, i32* %225, align 8
  %226 = load i32*, i32** %3, align 8
  %227 = load i32, i32* @ZM_EVENT_IN_SCAN, align 4
  %228 = call i32 @zfTimerCancel(i32* %226, i32 %227)
  %229 = load i32*, i32** %3, align 8
  %230 = call i32 @zmw_leave_critical_section(i32* %229)
  %231 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %232 = load i32*, i32** %3, align 8
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @zfScanMgrEventSetFreqCompleteCb, align 4
  %238 = call i32 @zfCoreSetFrequencyV2(i32* %232, i32 %236, i32 %237)
  store i32 1, i32* %2, align 4
  br label %239

239:                                              ; preds = %221, %220, %19
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfChGetNextChannel(i32*, i32, i32*) #1

declare dso_local i32 @zfChGetLastChannel(i32*, i32*) #1

declare dso_local i32 @zm_debug_msg1(i8*, i32) #1

declare dso_local i32 @zfTimerCancel(i32*, i32) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zm_assert(i32) #1

declare dso_local i32 @zfCoreSetFrequencyEx(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

declare dso_local i32 @zfHpFinishSiteSurvey(i32*, i32) #1

declare dso_local i32 @zfHpEnableRifs(i32*, i32, i32, i32) #1

declare dso_local i32 @zfStaReconnect(i32*) #1

declare dso_local i32 @zfCoreSetFrequencyV2(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
