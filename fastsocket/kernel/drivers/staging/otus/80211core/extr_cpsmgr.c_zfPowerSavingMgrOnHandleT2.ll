; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cpsmgr.c_zfPowerSavingMgrOnHandleT2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cpsmgr.c_zfPowerSavingMgrOnHandleT2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@ZM_PS_MSG_STATE_SLEEP = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"zfPowerSavingMgrOnHandleT2 zzzz....\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @zfPowerSavingMgrOnHandleT2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfPowerSavingMgrOnHandleT2(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @zmw_get_wlan_dev(i32* %3)
  %5 = call i32 (...) @zmw_declare_for_critical_section()
  %6 = load i32*, i32** %2, align 8
  %7 = call i64 @zfHpGetFreeTxdCount(i32* %6)
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @zfHpGetMaxTxdCount(i32* %8)
  %10 = icmp ne i64 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %53

12:                                               ; preds = %1
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @zmw_enter_critical_section(i32* %13)
  %15 = load i32, i32* @ZM_PS_MSG_STATE_SLEEP, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 4
  store i32 %15, i32* %19, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  store i32 %23, i32* %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i32 %31, i32* %35, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 %39, i32* %43, align 8
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @zmw_leave_critical_section(i32* %44)
  %46 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @zfHpPowerSaveSetState(i32* %47, i32 1)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i64 @zfHpGetFreeTxdCount(i32*) #1

declare dso_local i64 @zfHpGetMaxTxdCount(i32*) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zfHpPowerSaveSetState(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
