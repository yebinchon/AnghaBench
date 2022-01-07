; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ledmgr.c_zfLedCtrlType2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ledmgr.c_zfLedCtrlType2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32*, i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@TRUE = common dso_local global i64 0, align 8
@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_WLAN_STATE_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfLedCtrlType2(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @zmw_get_wlan_dev(i32* %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @zfStaIsConnected(i32* %10)
  %12 = load i64, i64* @TRUE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = srem i32 %18, 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %137

22:                                               ; preds = %14
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ZM_WLAN_STATE_DISABLED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %28, %22
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ZM_WLAN_STATE_DISABLED, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40, %28
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @zfLedCtrlType2_scan(i32* %47)
  br label %54

49:                                               ; preds = %40, %34
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @zfHpLedCtrl(i32* %50, i64 0, i32 0)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @zfHpLedCtrl(i32* %52, i64 1, i32 0)
  br label %54

54:                                               ; preds = %49, %46
  br label %137

55:                                               ; preds = %1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = srem i32 %65, 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %137

69:                                               ; preds = %61
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @zfLedCtrlType2_scan(i32* %70)
  br label %137

72:                                               ; preds = %55
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %75, 3000
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  store i64 0, i64* %7, align 8
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @zfHpLedCtrl(i32* %78, i64 1, i32 0)
  br label %83

80:                                               ; preds = %72
  store i64 1, i64* %7, align 8
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @zfHpLedCtrl(i32* %81, i64 0, i32 0)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32*, i32** %2, align 8
  %85 = call i64 @zfPowerSavingMgrIsSleeping(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %87
  %98 = load i32*, i32** %2, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @zfHpLedCtrl(i32* %98, i64 %99, i32 0)
  br label %136

101:                                              ; preds = %87, %83
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load i32*, i32** %2, align 8
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @zfHpLedCtrl(i32* %109, i64 %110, i32 1)
  br label %135

112:                                              ; preds = %101
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %118, %112
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 2
  store i64 0, i64* %130, align 8
  %131 = load i32*, i32** %2, align 8
  %132 = load i64, i64* %7, align 8
  %133 = call i32 @zfHpLedCtrl(i32* %131, i64 %132, i32 0)
  br label %134

134:                                              ; preds = %124, %118
  br label %135

135:                                              ; preds = %134, %108
  br label %136

136:                                              ; preds = %135, %97
  br label %137

137:                                              ; preds = %21, %68, %69, %136, %54
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

declare dso_local i32 @zfLedCtrlType2_scan(i32*) #1

declare dso_local i32 @zfHpLedCtrl(i32*, i64, i32) #1

declare dso_local i64 @zfPowerSavingMgrIsSleeping(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
