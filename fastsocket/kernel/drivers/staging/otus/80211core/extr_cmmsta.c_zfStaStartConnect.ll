; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaStartConnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaStartConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i64, i32, i64 }

@ZM_STA_CONN_STATE_AUTH_SHARE_1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"ZM_STA_CONN_STATE_AUTH_SHARE_1\00", align 1
@ZM_AUTH_ALGO_SHARED_KEY = common dso_local global i32 0, align 4
@ZM_STA_CONN_STATE_AUTH_OPEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"ZM_STA_CONN_STATE_AUTH_OPEN\00", align 1
@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_AUTH_ALGO_LEAP = common dso_local global i32 0, align 4
@ZM_AUTH_ALGO_OPEN_SYSTEM = common dso_local global i32 0, align 4
@ZM_WLAN_FRAME_TYPE_AUTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfStaStartConnect(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @zmw_get_wlan_dev(i32* %8)
  %10 = call i32 (...) @zmw_declare_for_critical_section()
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i64, i64* @ZM_STA_CONN_STATE_AUTH_SHARE_1, align 8
  store i64 %14, i64* %7, align 8
  %15 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ZM_AUTH_ALGO_SHARED_KEY, align 4
  store i32 %16, i32* %5, align 4
  br label %30

17:                                               ; preds = %2
  %18 = load i64, i64* @ZM_STA_CONN_STATE_AUTH_OPEN, align 8
  store i64 %18, i64* %7, align 8
  %19 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @ZM_AUTH_ALGO_LEAP, align 4
  store i32 %26, i32* %5, align 4
  br label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @ZM_AUTH_ALGO_OPEN_SYSTEM, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %25
  br label %30

30:                                               ; preds = %29, %13
  store i32 0, i32* %6, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @zmw_enter_critical_section(i32* %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i64 %39, i64* %42, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @zmw_leave_critical_section(i32* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @ZM_WLAN_FRAME_TYPE_AUTH, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @zfSendMmFrame(i32* %45, i32 %46, i32 %50, i32 %51, i32 %52, i32 0)
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfSendMmFrame(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
