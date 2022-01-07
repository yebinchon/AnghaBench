; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_set_station_tdls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_set_station_tdls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i64* }
%struct.station_parameters = type { i8*, i8* }

@NL80211_ATTR_HT_CAPABILITY = common dso_local global i64 0, align 8
@NL80211_ATTR_VHT_CAPABILITY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.station_parameters*)* @nl80211_set_station_tdls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_station_tdls(%struct.genl_info* %0, %struct.station_parameters* %1) #0 {
  %3 = alloca %struct.genl_info*, align 8
  %4 = alloca %struct.station_parameters*, align 8
  store %struct.genl_info* %0, %struct.genl_info** %3, align 8
  store %struct.station_parameters* %1, %struct.station_parameters** %4, align 8
  %5 = load %struct.genl_info*, %struct.genl_info** %3, align 8
  %6 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.genl_info*, %struct.genl_info** %3, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @NL80211_ATTR_HT_CAPABILITY, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = call i8* @nla_data(i64 %18)
  %20 = load %struct.station_parameters*, %struct.station_parameters** %4, align 8
  %21 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  br label %22

22:                                               ; preds = %12, %2
  %23 = load %struct.genl_info*, %struct.genl_info** %3, align 8
  %24 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* @NL80211_ATTR_VHT_CAPABILITY, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = load %struct.genl_info*, %struct.genl_info** %3, align 8
  %32 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @NL80211_ATTR_VHT_CAPABILITY, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i8* @nla_data(i64 %36)
  %38 = load %struct.station_parameters*, %struct.station_parameters** %4, align 8
  %39 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %30, %22
  %41 = load %struct.genl_info*, %struct.genl_info** %3, align 8
  %42 = load %struct.station_parameters*, %struct.station_parameters** %4, align 8
  %43 = call i32 @nl80211_parse_sta_wme(%struct.genl_info* %41, %struct.station_parameters* %42)
  ret i32 %43
}

declare dso_local i8* @nla_data(i64) #1

declare dso_local i32 @nl80211_parse_sta_wme(%struct.genl_info*, %struct.station_parameters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
