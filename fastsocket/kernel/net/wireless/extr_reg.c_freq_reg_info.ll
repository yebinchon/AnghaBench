; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_freq_reg_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_freq_reg_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_reg_rule = type { i32 }
%struct.wiphy = type { i64 }
%struct.ieee80211_regdomain = type { i32 }
%struct.regulatory_request = type { i64 }

@NL80211_REGDOM_SET_BY_COUNTRY_IE = common dso_local global i64 0, align 8
@NL80211_REGDOM_SET_BY_USER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_reg_rule* @freq_reg_info(%struct.wiphy* %0, i32 %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_regdomain*, align 8
  %6 = alloca %struct.regulatory_request*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call %struct.regulatory_request* (...) @get_last_request()
  store %struct.regulatory_request* %7, %struct.regulatory_request** %6, align 8
  %8 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %9 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NL80211_REGDOM_SET_BY_COUNTRY_IE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %15 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NL80211_REGDOM_SET_BY_USER, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %21 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %26 = call %struct.ieee80211_regdomain* @get_wiphy_regdom(%struct.wiphy* %25)
  store %struct.ieee80211_regdomain* %26, %struct.ieee80211_regdomain** %5, align 8
  br label %29

27:                                               ; preds = %19, %13, %2
  %28 = call %struct.ieee80211_regdomain* (...) @get_cfg80211_regdom()
  store %struct.ieee80211_regdomain* %28, %struct.ieee80211_regdomain** %5, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %33 = call %struct.ieee80211_reg_rule* @freq_reg_info_regd(%struct.wiphy* %30, i32 %31, %struct.ieee80211_regdomain* %32)
  ret %struct.ieee80211_reg_rule* %33
}

declare dso_local %struct.regulatory_request* @get_last_request(...) #1

declare dso_local %struct.ieee80211_regdomain* @get_wiphy_regdom(%struct.wiphy*) #1

declare dso_local %struct.ieee80211_regdomain* @get_cfg80211_regdom(...) #1

declare dso_local %struct.ieee80211_reg_rule* @freq_reg_info_regd(%struct.wiphy*, i32, %struct.ieee80211_regdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
