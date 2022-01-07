; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_mesh_add_ht_oper_ie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_mesh_add_ht_oper_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_10__, %struct.ieee80211_local* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.ieee80211_local = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_ht_cap = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_add_ht_oper_ie(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_supported_band*, align 8
  %11 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %12 = alloca i32*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %13, i32 0, i32 1
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %14, align 8
  store %struct.ieee80211_local* %15, %struct.ieee80211_local** %6, align 8
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = call i32 @cfg80211_get_chandef_type(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %25)
  store %struct.ieee80211_chanctx_conf* %26, %struct.ieee80211_chanctx_conf** %7, align 8
  %27 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %7, align 8
  %28 = icmp ne %struct.ieee80211_chanctx_conf* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = call i32 (...) @rcu_read_unlock()
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %88

37:                                               ; preds = %2
  %38 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %40, align 8
  store %struct.ieee80211_channel* %41, %struct.ieee80211_channel** %8, align 8
  %42 = call i32 (...) @rcu_read_unlock()
  %43 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %44 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %47, align 8
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %50 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %48, i64 %51
  %53 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %52, align 8
  store %struct.ieee80211_supported_band* %53, %struct.ieee80211_supported_band** %10, align 8
  %54 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %55 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %54, i32 0, i32 0
  store %struct.ieee80211_sta_ht_cap* %55, %struct.ieee80211_sta_ht_cap** %11, align 8
  %56 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %11, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %37
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %37
  store i32 0, i32* %3, align 4
  br label %88

65:                                               ; preds = %60
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = call i32 @skb_tailroom(%struct.sk_buff* %66)
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %68, 6
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %88

73:                                               ; preds = %65
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = call i32* @skb_put(%struct.sk_buff* %74, i32 6)
  store i32* %75, i32** %12, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %11, align 8
  %78 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %79 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %83 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ieee80211_ie_build_ht_oper(i32* %76, %struct.ieee80211_sta_ht_cap* %77, i32* %81, i32 %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %73, %70, %64, %33
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @cfg80211_get_chandef_type(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_ie_build_ht_oper(i32*, %struct.ieee80211_sta_ht_cap*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
