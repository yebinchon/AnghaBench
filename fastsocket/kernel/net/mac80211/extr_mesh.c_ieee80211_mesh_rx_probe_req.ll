; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_ieee80211_mesh_rx_probe_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_ieee80211_mesh_rx_probe_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_9__, %struct.TYPE_6__, %struct.ieee80211_local* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i64, i32, i32 }
%struct.ieee80211_local = type { i64 }
%struct.ieee80211_mgmt = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.sk_buff = type { i64 }
%struct.beacon_data = type { i64, i32, i64, i32 }
%struct.ieee802_11_elems = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i32 }

@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_PROBE_RESP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@IEEE80211_TX_INTFL_DONT_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64)* @ieee80211_mesh_rx_probe_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_mesh_rx_probe_req(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.ieee80211_if_mesh*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.beacon_data*, align 8
  %11 = alloca %struct.ieee80211_mgmt*, align 8
  %12 = alloca %struct.ieee802_11_elems, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 2
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  store %struct.ieee80211_local* %17, %struct.ieee80211_local** %7, align 8
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %20, %struct.ieee80211_if_mesh** %8, align 8
  %21 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %28 = bitcast %struct.ieee80211_mgmt* %27 to i32*
  %29 = ptrtoint i32* %26 to i64
  %30 = ptrtoint i32* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 4
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  br label %170

37:                                               ; preds = %3
  %38 = load i32*, i32** %14, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %13, align 8
  %41 = sub i64 %39, %40
  %42 = call i32 @ieee802_11_parse_elems(i32* %38, i64 %41, i32 0, %struct.ieee802_11_elems* %12)
  %43 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ether_addr_equal(i32 %45, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %37
  %53 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @is_broadcast_ether_addr(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52, %37
  %59 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %52
  br label %170

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %8, align 8
  %71 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %85, label %74

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %8, align 8
  %78 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %8, align 8
  %81 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @memcmp(i32 %76, i32 %79, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %74, %67
  br label %170

86:                                               ; preds = %74, %63
  %87 = call i32 (...) @rcu_read_lock()
  %88 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %8, align 8
  %89 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call %struct.beacon_data* @rcu_dereference(i32 %90)
  store %struct.beacon_data* %91, %struct.beacon_data** %10, align 8
  %92 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %93 = icmp ne %struct.beacon_data* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %86
  br label %168

95:                                               ; preds = %86
  %96 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %97 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %100 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %104 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = call %struct.sk_buff* @dev_alloc_skb(i64 %106)
  store %struct.sk_buff* %107, %struct.sk_buff** %9, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %109 = icmp ne %struct.sk_buff* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %95
  br label %168

111:                                              ; preds = %95
  %112 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %113 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %114 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @skb_reserve(%struct.sk_buff* %112, i64 %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %118 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %119 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @skb_put(%struct.sk_buff* %117, i64 %120)
  %122 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %123 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %126 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @memcpy(i32 %121, i32 %124, i64 %127)
  %129 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %130 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %131 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @skb_put(%struct.sk_buff* %129, i64 %132)
  %134 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %135 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %138 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @memcpy(i32 %133, i32 %136, i64 %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %144, %struct.ieee80211_mgmt** %11, align 8
  %145 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %146 = load i32, i32* @IEEE80211_STYPE_PROBE_RESP, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @cpu_to_le16(i32 %147)
  %149 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %150 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %152 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %155 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i64, i64* @ETH_ALEN, align 8
  %158 = call i32 @memcpy(i32 %153, i32 %156, i64 %157)
  %159 = load i32, i32* @IEEE80211_TX_INTFL_DONT_ENCRYPT, align 4
  %160 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %161 = call %struct.TYPE_10__* @IEEE80211_SKB_CB(%struct.sk_buff* %160)
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %159
  store i32 %164, i32* %162, align 4
  %165 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %167 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %165, %struct.sk_buff* %166)
  br label %168

168:                                              ; preds = %111, %110, %94
  %169 = call i32 (...) @rcu_read_unlock()
  br label %170

170:                                              ; preds = %168, %85, %62, %36
  ret void
}

declare dso_local i32 @ieee802_11_parse_elems(i32*, i64, i32, %struct.ieee802_11_elems*) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @is_broadcast_ether_addr(i32) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.beacon_data* @rcu_dereference(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.TYPE_10__* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
