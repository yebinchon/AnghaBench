; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cpsmgr.c_zfPowerSavingMgrHandlePsNone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cpsmgr.c_zfPowerSavingMgrHandlePsNone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@wd = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"zfPowerSavingMgrHandlePsNone: Wake up now\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"zfPowerSavingMgrOnHandleT1 send Null data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @zfPowerSavingMgrHandlePsNone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfPowerSavingMgrHandlePsNone(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @zmw_get_wlan_dev(i32* %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %16 [
    i32 131, label %13
    i32 129, label %15
    i32 128, label %15
    i32 130, label %15
  ]

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  store i32 0, i32* %14, align 4
  br label %29

15:                                               ; preds = %2, %2, %2
  br label %16

16:                                               ; preds = %2, %15
  %17 = load i32*, i32** %4, align 8
  store i32 1, i32* %17, align 4
  %18 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @zfStaIsConnected(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %24

24:                                               ; preds = %22, %16
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 131, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %13
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zfStaIsConnected(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
