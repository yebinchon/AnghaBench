; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cpsmgr.c_zfPowerSavingMgrOnHandleT1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cpsmgr.c_zfPowerSavingMgrOnHandleT1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"VtxQ is empty now...Check if HAL TXQ is empty\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"HAL TXQ is empty now...Could go to sleep...\0A\00", align 1
@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_STA_PS_LIGHT = common dso_local global i64 0, align 8
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@ZM_PS_MSG_STATE_T2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"zfPowerSavingMgrOnHandleT1 send Null data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @zfPowerSavingMgrOnHandleT1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfPowerSavingMgrOnHandleT1(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @zmw_get_wlan_dev(i32* %3)
  %5 = call i32 (...) @zmw_declare_for_critical_section()
  %6 = load i32*, i32** %2, align 8
  %7 = call i64 @zfIsVtxqEmpty(i32* %6)
  %8 = load i64, i64* @FALSE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %81

11:                                               ; preds = %1
  %12 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @zfHpGetFreeTxdCount(i32* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @zfHpGetMaxTxdCount(i32* %15)
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %81

19:                                               ; preds = %11
  %20 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @zmw_enter_critical_section(i32* %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ZM_STA_PS_LIGHT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %19
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 200
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @zmw_leave_critical_section(i32* %36)
  br label %81

38:                                               ; preds = %29
  %39 = load i32*, i32** %2, align 8
  %40 = call i64 @zfStaIsConnected(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %38
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %42
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, -1
  store i64 %61, i64* %59, align 8
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @zmw_leave_critical_section(i32* %62)
  br label %81

64:                                               ; preds = %48
  br label %65

65:                                               ; preds = %64, %42, %38
  br label %66

66:                                               ; preds = %65, %19
  %67 = load i32, i32* @ZM_PS_MSG_STATE_T2, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 8
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 @zmw_leave_critical_section(i32* %72)
  %74 = load i32*, i32** %2, align 8
  %75 = call i64 @zfStaIsConnected(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %66
  %78 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @zfPowerSavingMgrNotifyPSToAP(i32* %79)
  br label %81

81:                                               ; preds = %10, %18, %35, %55, %77, %66
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i64 @zfIsVtxqEmpty(i32*) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i64 @zfHpGetFreeTxdCount(i32*) #1

declare dso_local i64 @zfHpGetMaxTxdCount(i32*) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

declare dso_local i32 @zfPowerSavingMgrNotifyPSToAP(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
