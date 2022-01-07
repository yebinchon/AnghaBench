; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_ap_probereq_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_ap_probereq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.cfg80211_bss* }
%struct.TYPE_8__ = type { %struct.cfg80211_bss* }
%struct.TYPE_7__ = type { %struct.cfg80211_bss* }
%struct.cfg80211_bss = type { i32, i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@WLAN_EID_SSID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @ieee80211_ap_probereq_get(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.ieee80211_if_managed*, align 8
  %8 = alloca %struct.cfg80211_bss*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %13 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %12)
  store %struct.ieee80211_sub_if_data* %13, %struct.ieee80211_sub_if_data** %6, align 8
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.ieee80211_if_managed* %16, %struct.ieee80211_if_managed** %7, align 8
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %92

27:                                               ; preds = %2
  %28 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %29 = call i32 @ASSERT_MGD_MTX(%struct.ieee80211_if_managed* %28)
  %30 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %30, i32 0, i32 2
  %32 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %31, align 8
  %33 = icmp ne %struct.cfg80211_bss* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %36 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %35, i32 0, i32 2
  %37 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %36, align 8
  store %struct.cfg80211_bss* %37, %struct.cfg80211_bss** %8, align 8
  br label %63

38:                                               ; preds = %27
  %39 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %40 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = icmp ne %struct.TYPE_7__* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %45 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %47, align 8
  store %struct.cfg80211_bss* %48, %struct.cfg80211_bss** %8, align 8
  br label %62

49:                                               ; preds = %38
  %50 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %51 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = icmp ne %struct.TYPE_8__* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %58, align 8
  store %struct.cfg80211_bss* %59, %struct.cfg80211_bss** %8, align 8
  br label %61

60:                                               ; preds = %49
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %92

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %43
  br label %63

63:                                               ; preds = %62, %34
  %64 = call i32 (...) @rcu_read_lock()
  %65 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %8, align 8
  %66 = load i32, i32* @WLAN_EID_SSID, align 4
  %67 = call i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss* %65, i32 %66)
  store i32* %67, i32** %10, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = icmp eq i32* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i64 @WARN_ON_ONCE(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  store i32 0, i32* %11, align 4
  br label %78

74:                                               ; preds = %63
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %74, %73
  %79 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %80 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %8, align 8
  %81 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %8, align 8
  %84 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %11, align 4
  %89 = call %struct.sk_buff* @ieee80211_build_probe_req(%struct.ieee80211_sub_if_data* %79, i32 %82, i32 -1, i32 %85, i32* %87, i32 %88, i32* null, i32 0, i32 1)
  store %struct.sk_buff* %89, %struct.sk_buff** %9, align 8
  %90 = call i32 (...) @rcu_read_unlock()
  %91 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %91, %struct.sk_buff** %3, align 8
  br label %92

92:                                               ; preds = %78, %60, %26
  %93 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %93
}

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ASSERT_MGD_MTX(%struct.ieee80211_if_managed*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.sk_buff* @ieee80211_build_probe_req(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
