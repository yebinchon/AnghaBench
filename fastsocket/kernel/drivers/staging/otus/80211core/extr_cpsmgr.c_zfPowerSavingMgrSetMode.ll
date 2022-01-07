; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cpsmgr.c_zfPowerSavingMgrSetMode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cpsmgr.c_zfPowerSavingMgrSetMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"mode = \00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"return - wrong power save mode\00", align 1
@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_PS_MAX_SLEEP_PERIODS = common dso_local global i32 0, align 4
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@ZM_PS_MSG_STATE_T1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfPowerSavingMgrSetMode(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @zmw_get_wlan_dev(i32* %7)
  %9 = call i32 (...) @zmw_declare_for_critical_section()
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 130
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %92

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @zmw_enter_critical_section(i32* %17)
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %38 [
    i32 128, label %20
    i32 131, label %23
    i32 130, label %23
    i32 129, label %30
  ]

20:                                               ; preds = %16
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @zfPowerSavingMgrHandlePsNone(i32* %21, i32* %6)
  store i32 %22, i32* %5, align 4
  br label %38

23:                                               ; preds = %16, %16
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @zfPowerSavingMgrHandlePs(i32* %28)
  br label %38

30:                                               ; preds = %16
  %31 = load i32, i32* @ZM_PS_MAX_SLEEP_PERIODS, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @zfPowerSavingMgrHandlePs(i32* %36)
  br label %38

38:                                               ; preds = %16, %30, %23, %20
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @zmw_leave_critical_section(i32* %43)
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @zfHpPowerSaveSetState(i32* %48, i32 0)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %47, %38
  %55 = load i32*, i32** %3, align 8
  %56 = call i64 @zfStaIsConnected(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %54
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %58
  %65 = load i32, i32* %4, align 4
  switch i32 %65, label %78 [
    i32 128, label %66
    i32 131, label %72
    i32 129, label %72
    i32 130, label %72
  ]

66:                                               ; preds = %64
  %67 = load i32*, i32** %3, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @zfHpPowerSaveSetMode(i32* %67, i32 0, i32 0, i32 %70)
  br label %84

72:                                               ; preds = %64, %64, %64
  %73 = load i32*, i32** %3, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @zfHpPowerSaveSetMode(i32* %73, i32 0, i32 1, i32 %76)
  br label %84

78:                                               ; preds = %64
  %79 = load i32*, i32** %3, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @zfHpPowerSaveSetMode(i32* %79, i32 0, i32 0, i32 %82)
  br label %84

84:                                               ; preds = %78, %72, %66
  br label %85

85:                                               ; preds = %84, %58, %54
  %86 = load i32, i32* %5, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @zfSendNullData(i32* %89, i32 0)
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %14
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zm_debug_msg1(i8*, i32) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zfPowerSavingMgrHandlePsNone(i32*, i32*) #1

declare dso_local i32 @zfPowerSavingMgrHandlePs(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfHpPowerSaveSetState(i32*, i32) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

declare dso_local i32 @zfHpPowerSaveSetMode(i32*, i32, i32, i32) #1

declare dso_local i32 @zfSendNullData(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
