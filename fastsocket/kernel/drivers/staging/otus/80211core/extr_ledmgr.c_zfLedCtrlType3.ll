; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ledmgr.c_zfLedCtrlType3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ledmgr.c_zfLedCtrlType3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32*, i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@TRUE = common dso_local global i64 0, align 8
@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_WLAN_STATE_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfLedCtrlType3(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @zmw_get_wlan_dev(i32* %3)
  %5 = load i32*, i32** %2, align 8
  %6 = call i64 @zfStaIsConnected(i32* %5)
  %7 = load i64, i64* @TRUE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %50

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = srem i32 %13, 2
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %123

17:                                               ; preds = %9
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ZM_WLAN_STATE_DISABLED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %23, %17
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ZM_WLAN_STATE_DISABLED, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %23
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @zfLedCtrlType3_scan(i32* %42, i32 0)
  br label %49

44:                                               ; preds = %35, %29
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @zfHpLedCtrl(i32* %45, i32 0, i32 0)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @zfHpLedCtrl(i32* %47, i32 1, i32 0)
  br label %49

49:                                               ; preds = %44, %41
  br label %123

50:                                               ; preds = %1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = srem i32 %60, 2
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %123

64:                                               ; preds = %56
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @zfLedCtrlType3_scan(i32* %65, i32 1)
  br label %123

67:                                               ; preds = %50
  %68 = load i32*, i32** %2, align 8
  %69 = call i64 @zfPowerSavingMgrIsSleeping(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %67
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @zfHpLedCtrl(i32* %81, i32 0, i32 0)
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @zfHpLedCtrl(i32* %83, i32 1, i32 0)
  br label %122

85:                                               ; preds = %71, %67
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load i32*, i32** %2, align 8
  %94 = call i32 @zfHpLedCtrl(i32* %93, i32 0, i32 1)
  %95 = load i32*, i32** %2, align 8
  %96 = call i32 @zfHpLedCtrl(i32* %95, i32 1, i32 1)
  br label %121

97:                                               ; preds = %85
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %103, %97
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  store i64 0, i64* %112, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  store i64 0, i64* %115, align 8
  %116 = load i32*, i32** %2, align 8
  %117 = call i32 @zfHpLedCtrl(i32* %116, i32 0, i32 0)
  %118 = load i32*, i32** %2, align 8
  %119 = call i32 @zfHpLedCtrl(i32* %118, i32 1, i32 0)
  br label %120

120:                                              ; preds = %109, %103
  br label %121

121:                                              ; preds = %120, %92
  br label %122

122:                                              ; preds = %121, %80
  br label %123

123:                                              ; preds = %16, %63, %64, %122, %49
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

declare dso_local i32 @zfLedCtrlType3_scan(i32*, i32) #1

declare dso_local i32 @zfHpLedCtrl(i32*, i32, i32) #1

declare dso_local i64 @zfPowerSavingMgrIsSleeping(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
