; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_wiphy_update_new_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_wiphy_update_new_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32 }
%struct.reg_beacon = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.reg_beacon*)* @wiphy_update_new_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiphy_update_new_beacon(%struct.wiphy* %0, %struct.reg_beacon* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.reg_beacon*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.reg_beacon* %1, %struct.reg_beacon** %4, align 8
  %7 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %8 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %7, i32 0, i32 0
  %9 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %8, align 8
  %10 = load %struct.reg_beacon*, %struct.reg_beacon** %4, align 8
  %11 = getelementptr inbounds %struct.reg_beacon, %struct.reg_beacon* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, i64 %13
  %15 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %16 = icmp ne %struct.ieee80211_supported_band* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %20 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %19, i32 0, i32 0
  %21 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %20, align 8
  %22 = load %struct.reg_beacon*, %struct.reg_beacon** %4, align 8
  %23 = getelementptr inbounds %struct.reg_beacon, %struct.reg_beacon* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %21, i64 %25
  %27 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %26, align 8
  store %struct.ieee80211_supported_band* %27, %struct.ieee80211_supported_band** %6, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %39, %18
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %31 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.reg_beacon*, %struct.reg_beacon** %4, align 8
  %38 = call i32 @handle_reg_beacon(%struct.wiphy* %35, i32 %36, %struct.reg_beacon* %37)
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %28

42:                                               ; preds = %17, %28
  ret void
}

declare dso_local i32 @handle_reg_beacon(%struct.wiphy*, i32, %struct.reg_beacon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
