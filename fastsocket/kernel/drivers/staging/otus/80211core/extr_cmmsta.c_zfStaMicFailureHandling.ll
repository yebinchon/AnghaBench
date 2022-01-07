; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaMicFailureHandling.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaMicFailureHandling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 (i32*, i32, i32)* }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_STA_WPA_STATE_PK_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"get the first MIC failure\00", align 1
@ZM_EVENT_CM_TIMER = common dso_local global i32 0, align 4
@ZM_TICK_CM_TIMEOUT = common dso_local global i64 0, align 8
@ZM_TICK_CM_TIMEOUT_OFFSET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"get the second MIC failure\00", align 1
@ZM_EVENT_CM_DISCONNECT = common dso_local global i32 0, align 4
@ZM_TICK_CM_DISCONNECT = common dso_local global i64 0, align 8
@ZM_TICK_CM_DISCONNECT_OFFSET = common dso_local global i64 0, align 8
@ZM_WLAN_HEADER_A1_OFFSET = common dso_local global i32 0, align 4
@ZM_MIC_GROUP_ERROR = common dso_local global i32 0, align 4
@ZM_MIC_PAIRWISE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfStaMicFailureHandling(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 1, i32* %6, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @zmw_get_wlan_dev(i32* %7)
  %9 = call i32 (...) @zmw_declare_for_critical_section()
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ZM_STA_WPA_STATE_PK_OK, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %125

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @zmw_enter_critical_section(i32* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %38

30:                                               ; preds = %17
  %31 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @ZM_EVENT_CM_TIMER, align 4
  %34 = load i64, i64* @ZM_TICK_CM_TIMEOUT, align 8
  %35 = load i64, i64* @ZM_TICK_CM_TIMEOUT_OFFSET, align 8
  %36 = sub nsw i64 %34, %35
  %37 = call i32 @zfTimerSchedule(i32* %32, i32 %33, i64 %36)
  br label %77

38:                                               ; preds = %17
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %75

44:                                               ; preds = %38
  %45 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 6
  store i32 %49, i32* %52, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @zfMemoryCopy(i32 %56, i32 %60, i32 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* @ZM_EVENT_CM_TIMER, align 4
  %68 = call i32 @zfTimerCancel(i32* %66, i32 %67)
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* @ZM_EVENT_CM_DISCONNECT, align 4
  %71 = load i64, i64* @ZM_TICK_CM_DISCONNECT, align 8
  %72 = load i64, i64* @ZM_TICK_CM_DISCONNECT_OFFSET, align 8
  %73 = sub nsw i64 %71, %72
  %74 = call i32 @zfTimerSchedule(i32* %69, i32 %70, i64 %73)
  br label %76

75:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %44
  br label %77

77:                                               ; preds = %76, %30
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @zmw_leave_critical_section(i32* %78)
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %125

82:                                               ; preds = %77
  %83 = load i32*, i32** %3, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* @ZM_WLAN_HEADER_A1_OFFSET, align 4
  %86 = call i32 @zmw_rx_buf_readb(i32* %83, i32* %84, i32 %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %82
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %92, align 8
  %94 = icmp ne i32 (i32*, i32, i32)* %93, null
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %97, align 8
  %99 = load i32*, i32** %3, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ZM_MIC_GROUP_ERROR, align 4
  %105 = call i32 %98(i32* %99, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %95, %90
  br label %124

107:                                              ; preds = %82
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %109, align 8
  %111 = icmp ne i32 (i32*, i32, i32)* %110, null
  br i1 %111, label %112, label %123

112:                                              ; preds = %107
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %114, align 8
  %116 = load i32*, i32** %3, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @ZM_MIC_PAIRWISE_ERROR, align 4
  %122 = call i32 %115(i32* %116, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %112, %107
  br label %124

124:                                              ; preds = %123, %106
  br label %125

125:                                              ; preds = %16, %124, %77
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zfTimerSchedule(i32*, i32, i64) #1

declare dso_local i32 @zfMemoryCopy(i32, i32, i32) #1

declare dso_local i32 @zfTimerCancel(i32*, i32) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
