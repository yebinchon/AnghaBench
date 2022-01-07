; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_ieee80211_mesh_rx_queued_mgmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_ieee80211_mesh_rx_queued_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_rx_status = type { i32 }
%struct.ieee80211_mgmt = type { i32 }

@IEEE80211_FCTL_STYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_mesh_rx_queued_mgmt(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_rx_status*, align 8
  %6 = alloca %struct.ieee80211_mgmt*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %8)
  store %struct.ieee80211_rx_status* %9, %struct.ieee80211_rx_status** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %13, %struct.ieee80211_mgmt** %6, align 8
  %14 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  %18 = load i32, i32* @IEEE80211_FCTL_STYPE, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %45 [
    i32 128, label %21
    i32 130, label %21
    i32 129, label %30
    i32 131, label %37
  ]

21:                                               ; preds = %2, %2
  %22 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %29 = call i32 @ieee80211_mesh_rx_bcn_presp(%struct.ieee80211_sub_if_data* %22, i32 %23, %struct.ieee80211_mgmt* %24, i32 %27, %struct.ieee80211_rx_status* %28)
  br label %45

30:                                               ; preds = %2
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %32 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ieee80211_mesh_rx_probe_req(%struct.ieee80211_sub_if_data* %31, %struct.ieee80211_mgmt* %32, i32 %35)
  br label %45

37:                                               ; preds = %2
  %38 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %39 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %44 = call i32 @ieee80211_mesh_rx_mgmt_action(%struct.ieee80211_sub_if_data* %38, %struct.ieee80211_mgmt* %39, i32 %42, %struct.ieee80211_rx_status* %43)
  br label %45

45:                                               ; preds = %2, %37, %30, %21
  ret void
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ieee80211_mesh_rx_bcn_presp(%struct.ieee80211_sub_if_data*, i32, %struct.ieee80211_mgmt*, i32, %struct.ieee80211_rx_status*) #1

declare dso_local i32 @ieee80211_mesh_rx_probe_req(%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i32) #1

declare dso_local i32 @ieee80211_mesh_rx_mgmt_action(%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i32, %struct.ieee80211_rx_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
