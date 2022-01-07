; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_coid.c_zfiDebugCmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_coid.c_zfiDebugCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_LV_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"wd->enableProtectionMode=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfiDebugCmd(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @zmw_get_wlan_dev(i32* %9)
  %11 = call i32 (...) @zmw_declare_for_critical_section()
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @zmw_enter_critical_section(i32* %12)
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 16
  %19 = and i32 %18, 65535
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 65535
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @zfTimerSchedule(i32* %22, i32 %23, i32 %24)
  br label %140

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 65535
  store i32 %31, i32* %7, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @zfTimerCancel(i32* %32, i32 %33)
  br label %139

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @zfTimerClear(i32* %39)
  br label %138

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @zfTimerSchedule(i32* %45, i32 1, i32 500)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @zfTimerSchedule(i32* %47, i32 2, i32 1000)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @zfTimerSchedule(i32* %49, i32 3, i32 1000)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @zfTimerSchedule(i32* %51, i32 4, i32 1000)
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @zfTimerSchedule(i32* %53, i32 5, i32 1500)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @zfTimerSchedule(i32* %55, i32 6, i32 2000)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @zfTimerSchedule(i32* %57, i32 7, i32 2200)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @zfTimerSchedule(i32* %59, i32 6, i32 2500)
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @zfTimerSchedule(i32* %61, i32 8, i32 2800)
  br label %137

63:                                               ; preds = %41
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %66, label %91

66:                                               ; preds = %63
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @zfTimerSchedule(i32* %67, i32 1, i32 500)
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @zfTimerSchedule(i32* %69, i32 2, i32 1000)
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @zfTimerSchedule(i32* %71, i32 3, i32 1000)
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @zfTimerSchedule(i32* %73, i32 4, i32 1000)
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @zfTimerSchedule(i32* %75, i32 5, i32 1500)
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @zfTimerSchedule(i32* %77, i32 6, i32 2000)
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @zfTimerSchedule(i32* %79, i32 7, i32 2200)
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @zfTimerSchedule(i32* %81, i32 6, i32 2500)
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @zfTimerSchedule(i32* %83, i32 8, i32 2800)
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @zfTimerCancel(i32* %85, i32 1)
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @zfTimerCancel(i32* %87, i32 3)
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @zfTimerCancel(i32* %89, i32 6)
  br label %136

91:                                               ; preds = %63
  %92 = load i32, i32* %5, align 4
  %93 = icmp eq i32 %92, 5
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i64 %96, i64* %99, align 8
  br label %135

100:                                              ; preds = %91
  %101 = load i32, i32* %5, align 4
  %102 = icmp eq i32 %101, 6
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  br label %134

107:                                              ; preds = %100
  %108 = load i32, i32* %5, align 4
  %109 = icmp eq i32 %108, 7
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @ZM_LV_1, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @zm_msg1_mm(i32 %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %117)
  br label %133

119:                                              ; preds = %107
  %120 = load i32, i32* %5, align 4
  %121 = icmp eq i32 %120, 8
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  store i32 1, i32* %127, align 8
  br label %131

128:                                              ; preds = %122
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  store i32 0, i32* %130, align 8
  br label %131

131:                                              ; preds = %128, %125
  br label %132

132:                                              ; preds = %131, %119
  br label %133

133:                                              ; preds = %132, %110
  br label %134

134:                                              ; preds = %133, %103
  br label %135

135:                                              ; preds = %134, %94
  br label %136

136:                                              ; preds = %135, %66
  br label %137

137:                                              ; preds = %136, %44
  br label %138

138:                                              ; preds = %137, %38
  br label %139

139:                                              ; preds = %138, %29
  br label %140

140:                                              ; preds = %139, %16
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @zmw_leave_critical_section(i32* %141)
  ret i32 0
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zfTimerSchedule(i32*, i32, i32) #1

declare dso_local i32 @zfTimerCancel(i32*, i32) #1

declare dso_local i32 @zfTimerClear(i32*) #1

declare dso_local i32 @zm_msg1_mm(i32, i8*, i32) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
