; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cscanmgr.c_zfScanMgrScanEventStart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cscanmgr.c_zfScanMgrScanEventStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_SCAN_MGR_SCAN_NONE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@ZM_EVENT_IN_SCAN = common dso_local global i32 0, align 4
@ZM_EVENT_TIMEOUT_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"scan 0\00", align 1
@zfScanMgrEventSetFreqCompleteCb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfScanMgrScanEventStart(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @zmw_get_wlan_dev(i32* %3)
  %5 = call i32 (...) @zmw_declare_for_critical_section()
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %87

12:                                               ; preds = %1
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @zfPowerSavingMgrWakeup(i32* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @zmw_enter_critical_section(i32* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ZM_SCAN_MGR_SCAN_NONE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  br label %84

25:                                               ; preds = %12
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @zfBssInfoRefresh(i32* %26, i32 0)
  %28 = load i64, i64* @TRUE, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 4
  store i64 %28, i64* %31, align 8
  %32 = load i32, i32* @FALSE, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* @ZM_EVENT_IN_SCAN, align 4
  %38 = call i32 @zfTimerCancel(i32* %36, i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* @ZM_EVENT_TIMEOUT_SCAN, align 4
  %41 = call i32 @zfTimerCancel(i32* %39, i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = call i32 @zfChGetFirstChannel(i32* %42, i32* %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @zmw_leave_critical_section(i32* %50)
  %52 = load i32*, i32** %2, align 8
  %53 = call i64 @zfStaIsConnected(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %25
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @zfHpBeginSiteSurvey(i32* %56, i32 1)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @zmw_enter_critical_section(i32* %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @zmw_leave_critical_section(i32* %63)
  br label %75

65:                                               ; preds = %25
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @zfHpBeginSiteSurvey(i32* %66, i32 0)
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @zmw_enter_critical_section(i32* %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @zmw_leave_critical_section(i32* %73)
  br label %75

75:                                               ; preds = %65, %55
  %76 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %77 = load i32*, i32** %2, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @zfScanMgrEventSetFreqCompleteCb, align 4
  %83 = call i32 @zfCoreSetFrequencyV2(i32* %77, i32 %81, i32 %82)
  br label %87

84:                                               ; preds = %24
  %85 = load i32*, i32** %2, align 8
  %86 = call i32 @zmw_leave_critical_section(i32* %85)
  br label %87

87:                                               ; preds = %84, %75, %11
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zfPowerSavingMgrWakeup(i32*) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zfBssInfoRefresh(i32*, i32) #1

declare dso_local i32 @zfTimerCancel(i32*, i32) #1

declare dso_local i32 @zfChGetFirstChannel(i32*, i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

declare dso_local i32 @zfHpBeginSiteSurvey(i32*, i32) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zfCoreSetFrequencyV2(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
