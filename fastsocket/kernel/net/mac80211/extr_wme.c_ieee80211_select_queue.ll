; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wme.c_ieee80211_select_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wme.c_ieee80211_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_12__, %struct.TYPE_8__, %struct.ieee80211_local* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.sk_buff = type { i32, i64, i32* }
%struct.sta_info = type { i32 }

@IEEE80211_NUM_ACS = common dso_local global i64 0, align 8
@WLAN_STA_WME = common dso_local global i32 0, align 4
@IEEE80211_AC_BE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_select_queue(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 2
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  store %struct.ieee80211_local* %12, %struct.ieee80211_local** %6, align 8
  store %struct.sta_info* null, %struct.sta_info** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IEEE80211_NUM_ACS, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, 6
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  store i32 0, i32* %3, align 4
  br label %105

27:                                               ; preds = %19
  %28 = call i32 (...) @rcu_read_lock()
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %67 [
    i32 131, label %33
    i32 132, label %47
    i32 128, label %51
    i32 129, label %57
    i32 133, label %63
  ]

33:                                               ; preds = %27
  %34 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.sta_info* @rcu_dereference(i32 %38)
  store %struct.sta_info* %39, %struct.sta_info** %7, align 8
  %40 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %41 = icmp ne %struct.sta_info* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %44 = load i32, i32* @WLAN_STA_WME, align 4
  %45 = call i32 @test_sta_flag(%struct.sta_info* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  br label %68

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %27, %46
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %8, align 8
  br label %68

51:                                               ; preds = %27
  %52 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %53 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %8, align 8
  br label %68

57:                                               ; preds = %27
  %58 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %8, align 8
  br label %68

63:                                               ; preds = %27
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %8, align 8
  br label %68

67:                                               ; preds = %27
  br label %68

68:                                               ; preds = %67, %63, %57, %51, %47, %42
  %69 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %70 = icmp ne %struct.sta_info* %69, null
  br i1 %70, label %89, label %71

71:                                               ; preds = %68
  %72 = load i32*, i32** %8, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @is_multicast_ether_addr(i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %74
  %79 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %79, i32* %80)
  store %struct.sta_info* %81, %struct.sta_info** %7, align 8
  %82 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %83 = icmp ne %struct.sta_info* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %86 = load i32, i32* @WLAN_STA_WME, align 4
  %87 = call i32 @test_sta_flag(%struct.sta_info* %85, i32 %86)
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %84, %78
  br label %89

89:                                               ; preds = %88, %74, %71, %68
  %90 = call i32 (...) @rcu_read_unlock()
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* @IEEE80211_AC_BE, align 4
  store i32 %96, i32* %3, align 4
  br label %105

97:                                               ; preds = %89
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = call i64 @cfg80211_classify8021d(%struct.sk_buff* %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = call i32 @ieee80211_downgrade_queue(%struct.ieee80211_sub_if_data* %102, %struct.sk_buff* %103)
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %97, %93, %24
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sta_info* @rcu_dereference(i32) #1

declare dso_local i32 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @is_multicast_ether_addr(i32*) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @cfg80211_classify8021d(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_downgrade_queue(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
