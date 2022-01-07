; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_process_sa_query_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_process_sa_query_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.ieee80211_local* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.ieee80211_mgmt = type { %struct.TYPE_16__, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_ACTION = common dso_local global i32 0, align 4
@WLAN_CATEGORY_SA_QUERY = common dso_local global i32 0, align 4
@WLAN_ACTION_SA_QUERY_RESPONSE = common dso_local global i32 0, align 4
@WLAN_SA_QUERY_TR_ID_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64)* @ieee80211_process_sa_query_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_process_sa_query_req(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ieee80211_mgmt*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 2
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  store %struct.ieee80211_local* %12, %struct.ieee80211_local** %7, align 8
  %13 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ether_addr_equal(i32 %15, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %138

23:                                               ; preds = %3
  %24 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ether_addr_equal(i32 %26, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %23
  %35 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ether_addr_equal(i32 %37, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %34, %23
  br label %138

46:                                               ; preds = %34
  %47 = load i64, i64* %6, align 8
  %48 = icmp ult i64 %47, 33
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %138

50:                                               ; preds = %46
  %51 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 28, %54
  %56 = call %struct.sk_buff* @dev_alloc_skb(i64 %55)
  store %struct.sk_buff* %56, %struct.sk_buff** %8, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = icmp eq %struct.sk_buff* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %138

60:                                               ; preds = %50
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %63 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @skb_reserve(%struct.sk_buff* %61, i64 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = call i64 @skb_put(%struct.sk_buff* %67, i32 24)
  %69 = inttoptr i64 %68 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %69, %struct.ieee80211_mgmt** %9, align 8
  %70 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %71 = call i32 @memset(%struct.ieee80211_mgmt* %70, i32 0, i32 24)
  %72 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %73 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %76 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ETH_ALEN, align 4
  %79 = call i32 @memcpy(i32 %74, i32 %77, i32 %78)
  %80 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %81 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %84 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ETH_ALEN, align 4
  %88 = call i32 @memcpy(i32 %82, i32 %86, i32 %87)
  %89 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %90 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %93 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ETH_ALEN, align 4
  %98 = call i32 @memcpy(i32 %91, i32 %96, i32 %97)
  %99 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %100 = load i32, i32* @IEEE80211_STYPE_ACTION, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @cpu_to_le16(i32 %101)
  %103 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %104 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %106 = call i64 @skb_put(%struct.sk_buff* %105, i32 9)
  %107 = load i32, i32* @WLAN_CATEGORY_SA_QUERY, align 4
  %108 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %109 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  store i32 %107, i32* %111, align 4
  %112 = load i32, i32* @WLAN_ACTION_SA_QUERY_RESPONSE, align 4
  %113 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %114 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  store i32 %112, i32* %118, align 4
  %119 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %9, align 8
  %120 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %127 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @WLAN_SA_QUERY_TR_ID_LEN, align 4
  %134 = call i32 @memcpy(i32 %125, i32 %132, i32 %133)
  %135 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %137 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %135, %struct.sk_buff* %136)
  br label %138

138:                                              ; preds = %60, %59, %49, %45, %22
  ret void
}

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.ieee80211_mgmt*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
