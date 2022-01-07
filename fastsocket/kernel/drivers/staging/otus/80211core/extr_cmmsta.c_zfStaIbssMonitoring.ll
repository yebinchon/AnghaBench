; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaIbssMonitoring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaIbssMonitoring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32*, i32, %struct.zsPartnerNotifyEvent*)*, %struct.TYPE_5__ }
%struct.zsPartnerNotifyEvent = type { i32, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i64* }

@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_MAX_OPPOSITE_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Setting alive to \00", align 1
@ZM_IBSS_PEER_ALIVE_COUNTER = common dso_local global i64 0, align 8
@ZM_WLAN_FRAME_TYPE_PROBEREQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"zfStaIbssMonitoring remove the peer station\00", align 1
@ZM_EVENT_IBSS_MONITOR = common dso_local global i32 0, align 4
@ZM_TICK_IBSS_MONITOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfStaIbssMonitoring(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.zsPartnerNotifyEvent, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @zmw_get_wlan_dev(i32* %8)
  %10 = call i32 (...) @zmw_declare_for_critical_section()
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @zmw_enter_critical_section(i32* %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %172

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %172

26:                                               ; preds = %19
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %31

31:                                               ; preds = %168, %26
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @ZM_MAX_OPPOSITE_COUNT, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %171

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %171

39:                                               ; preds = %35
  %40 = load i64, i64* %4, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %42, %39
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %168

61:                                               ; preds = %50
  %62 = load i64, i64* %6, align 8
  %63 = add nsw i64 %62, -1
  store i64 %63, i64* %6, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %119

73:                                               ; preds = %61
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %81)
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @zmw_leave_critical_section(i32* %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i64, i64* %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ZM_IBSS_PEER_ALIVE_COUNTER, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %73
  %96 = load i32*, i32** %3, align 8
  %97 = load i32, i32* @ZM_WLAN_FRAME_TYPE_PROBEREQ, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i64, i64* %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load i64*, i64** %104, align 8
  %106 = call i32 @zfSendMmFrame(i32* %96, i32 %97, i64* %105, i32 1, i32 0, i32 0)
  br label %107

107:                                              ; preds = %95, %73
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @zmw_enter_critical_section(i32* %108)
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i64, i64* %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, -1
  store i64 %118, i64* %116, align 8
  br label %167

119:                                              ; preds = %61
  %120 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %121 = getelementptr inbounds %struct.zsPartnerNotifyEvent, %struct.zsPartnerNotifyEvent* %7, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to i64*
  %128 = call i32 @zfMemoryCopy(i32 %122, i64* %127, i32 6)
  %129 = getelementptr inbounds %struct.zsPartnerNotifyEvent, %struct.zsPartnerNotifyEvent* %7, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i64, i64* %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  %138 = load i64*, i64** %137, align 8
  %139 = call i32 @zfMemoryCopy(i32 %130, i64* %138, i32 6)
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load i64, i64* %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store i64 0, i64* %146, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, -1
  store i64 %151, i64* %149, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32 (i32*, i32, %struct.zsPartnerNotifyEvent*)*, i32 (i32*, i32, %struct.zsPartnerNotifyEvent*)** %153, align 8
  %155 = icmp ne i32 (i32*, i32, %struct.zsPartnerNotifyEvent*)* %154, null
  br i1 %155, label %156, label %166

156:                                              ; preds = %119
  %157 = load i32*, i32** %3, align 8
  %158 = call i32 @zmw_leave_critical_section(i32* %157)
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32 (i32*, i32, %struct.zsPartnerNotifyEvent*)*, i32 (i32*, i32, %struct.zsPartnerNotifyEvent*)** %160, align 8
  %162 = load i32*, i32** %3, align 8
  %163 = call i32 %161(i32* %162, i32 0, %struct.zsPartnerNotifyEvent* %7)
  %164 = load i32*, i32** %3, align 8
  %165 = call i32 @zmw_enter_critical_section(i32* %164)
  br label %166

166:                                              ; preds = %156, %119
  br label %167

167:                                              ; preds = %166, %107
  br label %168

168:                                              ; preds = %167, %60
  %169 = load i64, i64* %5, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %5, align 8
  br label %31

171:                                              ; preds = %38, %31
  br label %172

172:                                              ; preds = %171, %25, %18
  %173 = load i64, i64* %4, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  %176 = load i32*, i32** %3, align 8
  %177 = load i32, i32* @ZM_EVENT_IBSS_MONITOR, align 4
  %178 = load i32, i32* @ZM_TICK_IBSS_MONITOR, align 4
  %179 = call i32 @zfTimerSchedule(i32* %176, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %175, %172
  %181 = load i32*, i32** %3, align 8
  %182 = call i32 @zmw_leave_critical_section(i32* %181)
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zm_debug_msg1(i8*, i64) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfSendMmFrame(i32*, i32, i64*, i32, i32, i32) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zfMemoryCopy(i32, i64*, i32) #1

declare dso_local i32 @zfTimerSchedule(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
