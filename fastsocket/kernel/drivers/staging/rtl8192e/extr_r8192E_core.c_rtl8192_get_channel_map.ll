; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_get_channel_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_get_channel_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@channels = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No channels, aborting\00", align 1
@COMP_INIT = common dso_local global i32 0, align 4
@COUNTRY_CODE_GLOBAL_DOMAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.net_device*)* @rtl8192_get_channel_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @rtl8192_get_channel_map(%struct.net_device* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.r8192_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %7)
  store %struct.r8192_priv* %8, %struct.r8192_priv** %4, align 8
  %9 = load i32, i32* @channels, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @DMESG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i16 -1, i16* %2, align 2
  br label %38

13:                                               ; preds = %1
  %14 = load i32, i32* @channels, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  store i32 1, i32* %6, align 4
  br label %17

17:                                               ; preds = %34, %13
  %18 = load i32, i32* %6, align 4
  %19 = icmp sle i32 %18, 14
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %25 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 %23, i64* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %20
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %17

37:                                               ; preds = %17
  store i16 0, i16* %2, align 2
  br label %38

38:                                               ; preds = %37, %11
  %39 = load i16, i16* %2, align 2
  ret i16 %39
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @DMESG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
