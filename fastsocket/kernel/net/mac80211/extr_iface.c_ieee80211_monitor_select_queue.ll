; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_iface.c_ieee80211_monitor_select_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_iface.c_ieee80211_monitor_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_radiotap_header = type { i32 }

@IEEE80211_NUM_ACS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*)* @ieee80211_monitor_select_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_monitor_select_queue(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.ieee80211_radiotap_header*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %10)
  store %struct.ieee80211_sub_if_data* %11, %struct.ieee80211_sub_if_data** %6, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  store %struct.ieee80211_local* %14, %struct.ieee80211_local** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.ieee80211_radiotap_header*
  store %struct.ieee80211_radiotap_header* %19, %struct.ieee80211_radiotap_header** %9, align 8
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IEEE80211_NUM_ACS, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %9, align 8
  %37 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le16_to_cpu(i32 %38)
  %40 = add nsw i32 %39, 2
  %41 = icmp slt i32 %35, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32, %27
  store i32 0, i32* %3, align 4
  br label %60

43:                                               ; preds = %32
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %9, align 8
  %49 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  %54 = bitcast i32* %53 to i8*
  %55 = bitcast i8* %54 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %55, %struct.ieee80211_hdr** %8, align 8
  %56 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %59 = call i32 @ieee80211_select_queue_80211(%struct.ieee80211_sub_if_data* %56, %struct.sk_buff* %57, %struct.ieee80211_hdr* %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %43, %42, %26
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ieee80211_select_queue_80211(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, %struct.ieee80211_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
