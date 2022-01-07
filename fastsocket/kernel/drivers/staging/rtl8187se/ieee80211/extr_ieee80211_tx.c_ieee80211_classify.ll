; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_tx.c_ieee80211_classify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_tx.c_ieee80211_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_network = type { i32 }
%struct.ether_header = type { i64 }
%struct.iphdr = type { i32 }
%struct.ethhdr = type { i32 }

@ETHERTYPE_IP = common dso_local global i32 0, align 4
@ETH_P_PAE = common dso_local global i64 0, align 8
@VLAN_PRI_MASK = common dso_local global i32 0, align 4
@VLAN_PRI_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ieee80211_network*)* @ieee80211_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_classify(%struct.sk_buff* %0, %struct.ieee80211_network* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_network*, align 8
  %6 = alloca %struct.ether_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iphdr*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ieee80211_network* %1, %struct.ieee80211_network** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ether_header*
  store %struct.ether_header* %13, %struct.ether_header** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.ieee80211_network*, %struct.ieee80211_network** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %68

22:                                               ; preds = %2
  %23 = load %struct.ether_header*, %struct.ether_header** %6, align 8
  %24 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @ETHERTYPE_IP, align 4
  %27 = call i64 @__constant_htons(i32 %26)
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 8
  %34 = inttoptr i64 %33 to %struct.iphdr*
  store %struct.iphdr* %34, %struct.iphdr** %8, align 8
  %35 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %36 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 5
  %39 = and i32 %38, 7
  store i32 %39, i32* %7, align 4
  br label %63

40:                                               ; preds = %22
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i64 @vlan_tx_tag_present(%struct.sk_buff* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = call i32 @vlan_tx_tag_get(%struct.sk_buff* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = lshr i32 %47, 13
  %49 = and i32 %48, 7
  store i32 %49, i32* %7, align 4
  br label %62

50:                                               ; preds = %40
  %51 = load i64, i64* @ETH_P_PAE, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.ethhdr*
  %56 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @ntohs(i32 %57)
  %59 = icmp eq i64 %51, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32 7, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %50
  br label %62

62:                                               ; preds = %61, %44
  br label %63

63:                                               ; preds = %62, %29
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %63, %18
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @__constant_htons(i32) #1

declare dso_local i64 @vlan_tx_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @vlan_tx_tag_get(%struct.sk_buff*) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
