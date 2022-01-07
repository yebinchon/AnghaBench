; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaReconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaReconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64*, i64 }
%struct.TYPE_4__ = type { i64 }

@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@ZM_MODE_IBSS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"zfStaReconnect: NOT Support!! Set SSID to any BSS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfStaReconnect(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @zmw_get_wlan_dev(i32* %3)
  %5 = call i32 (...) @zmw_declare_for_critical_section()
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ZM_MODE_IBSS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %67

18:                                               ; preds = %11, %1
  %19 = load i32*, i32** %2, align 8
  %20 = call i64 @zfStaIsConnected(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** %2, align 8
  %24 = call i64 @zfStaIsConnecting(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18
  br label %67

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %67

34:                                               ; preds = %27
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %34
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @zmw_enter_critical_section(i32* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @zmw_leave_critical_section(i32* %58)
  br label %60

60:                                               ; preds = %46, %40, %34
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @zfFlushVtxq(i32* %61)
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @zfWlanEnable(i32* %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @zfScanMgrScanAck(i32* %65)
  br label %67

67:                                               ; preds = %60, %33, %26, %17
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

declare dso_local i64 @zfStaIsConnecting(i32*) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfFlushVtxq(i32*) #1

declare dso_local i32 @zfWlanEnable(i32*) #1

declare dso_local i32 @zfScanMgrScanAck(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
