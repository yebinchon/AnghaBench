; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_handle_band_custom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_handle_band_custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.ieee80211_supported_band = type { i32, i32* }
%struct.ieee80211_regdomain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.ieee80211_supported_band*, %struct.ieee80211_regdomain*)* @handle_band_custom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_band_custom(%struct.wiphy* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_regdomain* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.ieee80211_regdomain*, align 8
  %7 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %5, align 8
  store %struct.ieee80211_regdomain* %2, %struct.ieee80211_regdomain** %6, align 8
  %8 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %9 = icmp ne %struct.ieee80211_supported_band* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %31

11:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %28, %11
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %20 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %27 = call i32 @handle_channel_custom(%struct.wiphy* %19, i32* %25, %struct.ieee80211_regdomain* %26)
  br label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %12

31:                                               ; preds = %10, %12
  ret void
}

declare dso_local i32 @handle_channel_custom(%struct.wiphy*, i32*, %struct.ieee80211_regdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
