; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cfunc.c_zfProcessEvent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cfunc.c_zfProcessEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__, i32, i32 (i32*, i32, i32)* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ZM_EVENT_CM_TIMER\00", align 1
@wd = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"ZM_EVENT_CM_DISCONNECT\00", align 1
@ZM_STA_STATE_DISCONNECT = common dso_local global i32 0, align 4
@ZM_TICK_CM_BLOCK_TIMEOUT = common dso_local global i32 0, align 4
@ZM_TICK_CM_BLOCK_TIMEOUT_OFFSET = common dso_local global i32 0, align 4
@ZM_STATUS_MEDIA_DISCONNECT_MIC_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"ZM_EVENT_CM_BLOCK_TIMER\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"ZM_EVENT_CM_BLOCK_TIMER:bAutoReconnect!=0\00", align 1
@ZM_SCAN_MGR_SCAN_INTERNAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Countermeasure : Enable MIC Check \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfProcessEvent(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [32 x i32], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %9, align 8
  store i64 0, i64* %11, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @zmw_get_wlan_dev(i32* %14)
  %16 = call i32 (...) @zmw_declare_for_critical_section()
  %17 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %18 = bitcast i32* %17 to i64*
  %19 = call i32 @zfZeroMemory(i64* %18, i32 64)
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %182, %3
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %185

24:                                               ; preds = %20
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %41, %24
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %32, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i64, i64* @TRUE, align 8
  store i64 %39, i64* %9, align 8
  br label %44

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %8, align 8
  br label %25

44:                                               ; preds = %38, %25
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %182

48:                                               ; preds = %44
  %49 = load i32*, i32** %5, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %180 [
    i32 132, label %53
    i32 128, label %62
    i32 134, label %80
    i32 133, label %83
    i32 135, label %86
    i32 136, label %92
    i32 137, label %128
    i32 130, label %149
    i32 131, label %176
  ]

53:                                               ; preds = %48
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @zfScanMgrScanEventStart(i32* %54)
  %56 = load i64, i64* %11, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %11, align 8
  %58 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %56
  store i32 133, i32* %58, align 4
  %59 = load i64, i64* %11, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %11, align 8
  %61 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %59
  store i32 128, i32* %61, align 4
  br label %181

62:                                               ; preds = %48
  %63 = load i32*, i32** %4, align 8
  %64 = call i64 @zfScanMgrScanEventTimeout(i32* %63)
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %11, align 8
  %70 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %68
  store i32 128, i32* %70, align 4
  br label %79

71:                                               ; preds = %62
  %72 = load i64, i64* %12, align 8
  %73 = icmp eq i64 %72, 1
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %11, align 8
  %77 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %75
  store i32 133, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %71
  br label %79

79:                                               ; preds = %78, %67
  br label %181

80:                                               ; preds = %48
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @zfStaIbssMonitoring(i32* %81, i32 0)
  br label %181

83:                                               ; preds = %48
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @zfScanMgrScanEventRetry(i32* %84)
  br label %181

86:                                               ; preds = %48
  %87 = load i32, i32* @ZM_LV_0, align 4
  %88 = call i32 @zm_msg0_mm(i32 %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  store i32 0, i32* %91, align 4
  br label %181

92:                                               ; preds = %48
  %93 = load i32, i32* @ZM_LV_0, align 4
  %94 = call i32 @zm_msg0_mm(i32 %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* @ZM_STA_STATE_DISCONNECT, align 4
  %97 = call i32 @zfChangeAdapterState(i32* %95, i32 %96)
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @zmw_enter_critical_section(i32* %98)
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* @ZM_TICK_CM_BLOCK_TIMEOUT, align 4
  %102 = load i32, i32* @ZM_TICK_CM_BLOCK_TIMEOUT_OFFSET, align 4
  %103 = sub nsw i32 %101, %102
  %104 = call i32 @zfTimerSchedule(i32* %100, i32 137, i32 %103)
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @zmw_leave_critical_section(i32* %105)
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  store i32 0, i32* %109, align 4
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @zfHpResetKeyCache(i32* %110)
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  %114 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %113, align 8
  %115 = icmp ne i32 (i32*, i32, i32)* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %92
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 4
  %119 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %118, align 8
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* @ZM_STATUS_MEDIA_DISCONNECT_MIC_FAIL, align 4
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 %119(i32* %120, i32 %121, i32 %125)
  br label %127

127:                                              ; preds = %116, %92
  br label %181

128:                                              ; preds = %48
  %129 = load i32, i32* @ZM_LV_0, align 4
  %130 = call i32 @zm_msg0_mm(i32 %129, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  store i32 0, i32* %133, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %128
  %140 = load i32, i32* @ZM_LV_0, align 4
  %141 = call i32 @zm_msg0_mm(i32 %140, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %142 = load i32*, i32** %4, align 8
  %143 = load i32, i32* @ZM_SCAN_MGR_SCAN_INTERNAL, align 4
  %144 = call i32 @zfScanMgrScanStop(i32* %142, i32 %143)
  %145 = load i32*, i32** %4, align 8
  %146 = load i32, i32* @ZM_SCAN_MGR_SCAN_INTERNAL, align 4
  %147 = call i32 @zfScanMgrScanStart(i32* %145, i32 %146)
  br label %148

148:                                              ; preds = %139, %128
  br label %181

149:                                              ; preds = %48
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %172, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %157, 5
  br i1 %158, label %159, label %172

159:                                              ; preds = %154
  %160 = load i32*, i32** %4, align 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @zfAggSendAddbaRequest(i32* %160, i32 %164, i32 0, i32 0)
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 8
  %170 = load i32*, i32** %4, align 8
  %171 = call i32 @zfTimerSchedule(i32* %170, i32 130, i32 100)
  br label %175

172:                                              ; preds = %154, %149
  %173 = load i32*, i32** %4, align 8
  %174 = call i32 @zfTimerCancel(i32* %173, i32 130)
  br label %175

175:                                              ; preds = %172, %159
  br label %181

176:                                              ; preds = %48
  %177 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  store i32 0, i32* %179, align 4
  br label %181

180:                                              ; preds = %48
  br label %181

181:                                              ; preds = %180, %176, %175, %148, %127, %86, %83, %80, %79, %53
  br label %182

182:                                              ; preds = %181, %47
  %183 = load i64, i64* %7, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %7, align 8
  br label %20

185:                                              ; preds = %20
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zfZeroMemory(i64*, i32) #1

declare dso_local i32 @zfScanMgrScanEventStart(i32*) #1

declare dso_local i64 @zfScanMgrScanEventTimeout(i32*) #1

declare dso_local i32 @zfStaIbssMonitoring(i32*, i32) #1

declare dso_local i32 @zfScanMgrScanEventRetry(i32*) #1

declare dso_local i32 @zm_msg0_mm(i32, i8*) #1

declare dso_local i32 @zfChangeAdapterState(i32*, i32) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zfTimerSchedule(i32*, i32, i32) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfHpResetKeyCache(i32*) #1

declare dso_local i32 @zfScanMgrScanStop(i32*, i32) #1

declare dso_local i32 @zfScanMgrScanStart(i32*, i32) #1

declare dso_local i32 @zfAggSendAddbaRequest(i32*, i32, i32, i32) #1

declare dso_local i32 @zfTimerCancel(i32*, i32) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
