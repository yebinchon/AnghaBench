; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfChangeAdapterState.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfChangeAdapterState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8* }

@TRUE = common dso_local global i32 0, align 4
@ZM_DEFAULT_SUPPORT_RATE_DISCONNECT = common dso_local global i32 0, align 4
@ZM_SCAN_MGR_SCAN_INTERNAL = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"change adapter state = \00", align 1
@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfChangeAdapterState(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @TRUE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @zmw_get_wlan_dev(i32* %7)
  %9 = call i32 (...) @zmw_declare_for_critical_section()
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %23 [
    i32 128, label %11
    i32 129, label %18
    i32 130, label %22
  ]

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @ZM_DEFAULT_SUPPORT_RATE_DISCONNECT, align 4
  %14 = call i32 @zfResetSupportRate(i32* %12, i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @ZM_SCAN_MGR_SCAN_INTERNAL, align 4
  %17 = call i32 @zfScanMgrScanStop(i32* %15, i32 %16)
  br label %24

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @ZM_SCAN_MGR_SCAN_INTERNAL, align 4
  %21 = call i32 @zfScanMgrScanStop(i32* %19, i32 %20)
  br label %24

22:                                               ; preds = %2
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %22, %18, %11
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @zmw_enter_critical_section(i32* %25)
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @zmw_leave_critical_section(i32* %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zfResetSupportRate(i32*, i32) #1

declare dso_local i32 @zfScanMgrScanStop(i32*, i32) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zm_debug_msg1(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
