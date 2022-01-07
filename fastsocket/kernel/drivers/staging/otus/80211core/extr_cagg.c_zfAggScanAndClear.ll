; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggScanAndClear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggScanAndClear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32, i64, i64, i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_WLAN_STATE_ENABLED = common dso_local global i64 0, align 8
@ZM_AGG_POOL_SIZE = common dso_local global i64 0, align 8
@ZM_AGG_CLEAR_TIME = common dso_local global i64 0, align 8
@ZM_AGG_DELETE_TIME = common dso_local global i64 0, align 8
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"delete queue, idle for n sec. n = \00", align 1
@ZM_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfAggScanAndClear(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @zmw_get_wlan_dev(i32* %12)
  %14 = call i32 (...) @zmw_declare_for_critical_section()
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ZM_WLAN_STATE_ENABLED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %132

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @zfAggTxScheduler(i32* %22, i32 1)
  %24 = call i64 (...) @zm_agg_GetTime()
  store i64 %24, i64* %9, align 8
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %124, %21
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @ZM_AGG_POOL_SIZE, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %127

29:                                               ; preds = %25
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %32, i64 %33
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = icmp ne %struct.TYPE_5__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  store i64 0, i64* %3, align 8
  br label %132

38:                                               ; preds = %29
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %41, i64 %42
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 1, %46
  br i1 %47, label %48, label %123

48:                                               ; preds = %38
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %51, i64 %52
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %11, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @zmw_enter_critical_section(i32* %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %7, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %8, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 6
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = sub nsw i64 %72, %73
  %75 = load i64, i64* @ZM_AGG_CLEAR_TIME, align 8
  %76 = icmp sle i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %48
  br label %94

78:                                               ; preds = %48
  %79 = load i32*, i32** %4, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @zm_agg_qlen(i32* %79, i64 %82, i64 %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 8
  %89 = icmp sgt i32 %86, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %78
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  store i32 1, i32* %92, align 8
  br label %93

93:                                               ; preds = %90, %78
  br label %94

94:                                               ; preds = %93, %77
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %94
  %100 = load i64, i64* %9, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %100, %103
  %105 = load i64, i64* @ZM_AGG_DELETE_TIME, align 8
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %99
  %108 = load i32, i32* @ZM_LV_0, align 4
  %109 = load i64, i64* @ZM_AGG_DELETE_TIME, align 8
  %110 = sdiv i64 %109, 10
  %111 = call i32 @zm_msg1_agg(i32 %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %110)
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @zmw_leave_critical_section(i32* %112)
  %114 = load i32*, i32** %4, align 8
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @zfAggTxDeleteQueue(i32* %114, i64 %115)
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @zmw_enter_critical_section(i32* %117)
  br label %119

119:                                              ; preds = %107, %99
  br label %120

120:                                              ; preds = %119, %94
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @zmw_leave_critical_section(i32* %121)
  br label %123

123:                                              ; preds = %120, %38
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* %6, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %6, align 8
  br label %25

127:                                              ; preds = %25
  %128 = load i32*, i32** %4, align 8
  %129 = load i64, i64* %5, align 8
  %130 = call i32 @zfAggRxClear(i32* %128, i64 %129)
  %131 = load i64, i64* @ZM_SUCCESS, align 8
  store i64 %131, i64* %3, align 8
  br label %132

132:                                              ; preds = %127, %37, %20
  %133 = load i64, i64* %3, align 8
  ret i64 %133
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zfAggTxScheduler(i32*, i32) #1

declare dso_local i64 @zm_agg_GetTime(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zm_agg_qlen(i32*, i64, i64) #1

declare dso_local i32 @zm_msg1_agg(i32, i8*, i64) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfAggTxDeleteQueue(i32*, i64) #1

declare dso_local i32 @zfAggRxClear(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
