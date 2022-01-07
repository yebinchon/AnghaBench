; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cscanmgr.c_zfScanMgrScanStart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cscanmgr.c_zfScanMgrScanStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { i32*, i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"scanType = \00", align 1
@ZM_SCAN_MGR_SCAN_INTERNAL = common dso_local global i64 0, align 8
@ZM_SCAN_MGR_SCAN_EXTERNAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"unknown scanType\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"reject scan request due to connecting\00", align 1
@wd = common dso_local global %struct.TYPE_6__* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"scan rescheduled\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"scan scheduled: \00", align 1
@ZM_SCAN_MGR_SCAN_NONE = common dso_local global i64 0, align 8
@ZM_EVENT_SCAN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@ZM_EVENT_TIMEOUT_SCAN = common dso_local global i32 0, align 4
@ZM_EVENT_IN_SCAN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Scan is busy...waiting later to start\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfScanMgrScanStart(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @zmw_get_wlan_dev(i32* %7)
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = call i32 (...) @zmw_declare_for_critical_section()
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @ZM_SCAN_MGR_SCAN_INTERNAL, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @ZM_SCAN_MGR_SCAN_EXTERNAL, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i64 1, i64* %3, align 8
  br label %137

21:                                               ; preds = %15, %2
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @zfStaIsConnecting(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i64 1, i64* %3, align 8
  br label %137

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %5, align 8
  %30 = sub nsw i64 %29, 1
  store i64 %30, i64* %6, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @zmw_enter_critical_section(i32* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %43)
  br label %99

45:                                               ; preds = %28
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 1, i32* %52, align 4
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ZM_SCAN_MGR_SCAN_NONE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  br label %102

63:                                               ; preds = %45
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ZM_SCAN_MGR_SCAN_INTERNAL, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %63
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* @ZM_SCAN_MGR_SCAN_EXTERNAL, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %71
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* @ZM_EVENT_SCAN, align 4
  %78 = call i32 @zfTimerCancel(i32* %76, i32 %77)
  %79 = load i8*, i8** @FALSE, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i8* %79, i8** %82, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* @ZM_EVENT_TIMEOUT_SCAN, align 4
  %85 = call i32 @zfTimerCancel(i32* %83, i32 %84)
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* @ZM_EVENT_IN_SCAN, align 4
  %88 = call i32 @zfTimerCancel(i32* %86, i32 %87)
  %89 = load i8*, i8** @FALSE, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  store i8* %89, i8** %92, align 8
  br label %102

93:                                               ; preds = %71, %63
  %94 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %95
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @zmw_leave_critical_section(i32* %97)
  store i64 0, i64* %3, align 8
  br label %137

99:                                               ; preds = %42
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @zmw_leave_critical_section(i32* %100)
  store i64 1, i64* %3, align 8
  br label %137

102:                                              ; preds = %75, %62
  %103 = load i8*, i8** @TRUE, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  store i8* %103, i8** %106, align 8
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* @ZM_EVENT_SCAN, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @zfTimerSchedule(i32* %107, i32 %108, i32 %113)
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  store i32 3, i32* %118, align 8
  %119 = load i64, i64* %5, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  store i64 %119, i64* %123, align 8
  %124 = load i32*, i32** %4, align 8
  %125 = call i32 @zmw_leave_critical_section(i32* %124)
  %126 = load i32*, i32** %4, align 8
  %127 = call i64 @zfStaIsConnected(i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %102
  %130 = load i32*, i32** %4, align 8
  %131 = call i32 @zfPowerSavingMgrIsSleeping(i32* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %129
  %134 = load i32*, i32** %4, align 8
  %135 = call i32 @zfSendNullData(i32* %134, i32 1)
  br label %136

136:                                              ; preds = %133, %129, %102
  store i64 0, i64* %3, align 8
  br label %137

137:                                              ; preds = %136, %99, %96, %25, %19
  %138 = load i64, i64* %3, align 8
  ret i64 %138
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zm_debug_msg1(i8*, i64) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i64 @zfStaIsConnecting(i32*) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zfTimerCancel(i32*, i32) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfTimerSchedule(i32*, i32, i32) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

declare dso_local i32 @zfPowerSavingMgrIsSleeping(i32*) #1

declare dso_local i32 @zfSendNullData(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
