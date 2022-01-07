; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_netif_skb_features.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_netif_skb_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.vlan_ethhdr = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@NETIF_F_GSO_MASK = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_TX = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NETIF_F_FRAGLIST = common dso_local global i32 0, align 4
@NETIF_F_GEN_CSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netif_skb_features(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlan_ethhdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = call %struct.TYPE_5__* @netdev_extended(%struct.TYPE_6__* %21)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %18, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load i32, i32* @NETIF_F_GSO_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %26, %1
  %32 = load i64, i64* %4, align 8
  %33 = load i32, i32* @ETH_P_8021Q, align 4
  %34 = call i64 @htons(i32 %33)
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %40, %struct.vlan_ethhdr** %6, align 8
  %41 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %6, align 8
  %42 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %4, align 8
  br label %54

44:                                               ; preds = %31
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = call i32 @vlan_tx_tag_present(%struct.sk_buff* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @harmonize_features(%struct.sk_buff* %49, i64 %50, i32 %51)
  store i32 %52, i32* %2, align 4
  br label %89

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %36
  %55 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NETIF_F_HW_VLAN_TX, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load i64, i64* %4, align 8
  %65 = load i32, i32* @ETH_P_8021Q, align 4
  %66 = call i64 @htons(i32 %65)
  %67 = icmp ne i64 %64, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %54
  %69 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %70 = load i64, i64* %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @harmonize_features(%struct.sk_buff* %69, i64 %70, i32 %71)
  store i32 %72, i32* %2, align 4
  br label %89

73:                                               ; preds = %54
  %74 = load i32, i32* @NETIF_F_SG, align 4
  %75 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @NETIF_F_FRAGLIST, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @NETIF_F_GEN_CSUM, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @NETIF_F_HW_VLAN_TX, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %86 = load i64, i64* %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @harmonize_features(%struct.sk_buff* %85, i64 %86, i32 %87)
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %73, %68, %48
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @netdev_extended(%struct.TYPE_6__*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @vlan_tx_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @harmonize_features(%struct.sk_buff*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
