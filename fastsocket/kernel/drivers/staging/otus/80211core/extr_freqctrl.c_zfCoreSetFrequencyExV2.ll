; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_freqctrl.c_zfCoreSetFrequencyExV2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_freqctrl.c_zfCoreSetFrequencyExV2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i32, i32 }

@ZM_LV_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Freq=\00", align 1
@wd = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"#6_1 20070917\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"It is happen!!! No error message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfCoreSetFrequencyExV2(i32* %0, i32 %1, i64 %2, i64 %3, i32 (i32*)* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32 (i32*)*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 (i32*)* %4, i32 (i32*)** %11, align 8
  store i64 %5, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @zmw_get_wlan_dev(i32* %15)
  %17 = call i32 (...) @zmw_declare_for_critical_section()
  %18 = load i32, i32* @ZM_LV_1, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @zm_msg1_scan(i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @zmw_enter_critical_section(i32* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %6
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %29
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load i64, i64* %12, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %140

53:                                               ; preds = %46, %43
  br label %54

54:                                               ; preds = %53, %36, %29, %6
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i32 (i32*)*, i32 (i32*)** %11, align 8
  %60 = call i32 @zfAddFreqChangeReq(i32* %55, i32 %56, i64 %57, i64 %58, i32 (i32*)* %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %94

66:                                               ; preds = %54
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73, %66
  store i64 1, i64* %14, align 8
  br label %81

81:                                               ; preds = %80, %73
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  store i32 %82, i32* %85, align 4
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i64 %86, i64* %89, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i64 %90, i64* %93, align 8
  store i64 1, i64* %13, align 8
  br label %94

94:                                               ; preds = %81, %54
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @zmw_leave_critical_section(i32* %100)
  %102 = load i64, i64* %13, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %139

104:                                              ; preds = %94
  %105 = load i64, i64* %12, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %109 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @zfHpSetFrequencyEx(i32* %110, i32 %111, i64 %112, i64 %113, i64 2)
  br label %122

115:                                              ; preds = %104
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* %10, align 8
  %120 = load i64, i64* %14, align 8
  %121 = call i32 @zfHpSetFrequencyEx(i32* %116, i32 %117, i64 %118, i64 %119, i64 %120)
  br label %122

122:                                              ; preds = %115, %107
  %123 = load i32*, i32** %7, align 8
  %124 = call i64 @zfStaIsConnected(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %122
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %127, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 @zfHpGetTransmitPower(i32* %133)
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 3
  store i32 %134, i32* %137, align 8
  br label %138

138:                                              ; preds = %132, %126, %122
  br label %139

139:                                              ; preds = %138, %94
  br label %152

140:                                              ; preds = %52
  %141 = load i32*, i32** %7, align 8
  %142 = call i32 @zmw_leave_critical_section(i32* %141)
  %143 = load i32 (i32*)*, i32 (i32*)** %11, align 8
  %144 = icmp ne i32 (i32*)* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load i32 (i32*)*, i32 (i32*)** %11, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 %146(i32* %147)
  br label %149

149:                                              ; preds = %145, %140
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 @zfPushVtxq(i32* %150)
  br label %152

152:                                              ; preds = %149, %139
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zm_msg1_scan(i32, i8*, i32) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zfAddFreqChangeReq(i32*, i32, i64, i64, i32 (i32*)*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zfHpSetFrequencyEx(i32*, i32, i64, i64, i64) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

declare dso_local i32 @zfHpGetTransmitPower(i32*) #1

declare dso_local i32 @zfPushVtxq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
