; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_snat.c_ebt_snat_tg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_snat.c_ebt_snat_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_target_param = type { %struct.ebt_nat_info* }
%struct.ebt_nat_info = type { i32, i32 }
%struct.arphdr = type { i64 }
%struct.TYPE_2__ = type { i64, i32 }

@EBT_DROP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@NAT_ARP_BIT = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@EBT_VERDICT_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_target_param*)* @ebt_snat_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_snat_tg(%struct.sk_buff* %0, %struct.xt_target_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_target_param*, align 8
  %6 = alloca %struct.ebt_nat_info*, align 8
  %7 = alloca %struct.arphdr*, align 8
  %8 = alloca %struct.arphdr, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_target_param* %1, %struct.xt_target_param** %5, align 8
  %9 = load %struct.xt_target_param*, %struct.xt_target_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %9, i32 0, i32 0
  %11 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %10, align 8
  store %struct.ebt_nat_info* %11, %struct.ebt_nat_info** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @skb_make_writable(%struct.sk_buff* %12, i32 0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EBT_DROP, align 4
  store i32 %16, i32* %3, align 4
  br label %74

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %6, align 8
  %23 = getelementptr inbounds %struct.ebt_nat_info, %struct.ebt_nat_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* @ETH_ALEN, align 8
  %26 = call i32 @memcpy(i32 %21, i32 %24, i64 %25)
  %27 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %6, align 8
  %28 = getelementptr inbounds %struct.ebt_nat_info, %struct.ebt_nat_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @NAT_ARP_BIT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %66, label %33

33:                                               ; preds = %17
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @ETH_P_ARP, align 4
  %39 = call i64 @htons(i32 %38)
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %33
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call %struct.arphdr* @skb_header_pointer(%struct.sk_buff* %42, i32 0, i32 8, %struct.arphdr* %8)
  store %struct.arphdr* %43, %struct.arphdr** %7, align 8
  %44 = load %struct.arphdr*, %struct.arphdr** %7, align 8
  %45 = icmp eq %struct.arphdr* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @EBT_DROP, align 4
  store i32 %47, i32* %3, align 4
  br label %74

48:                                               ; preds = %41
  %49 = load %struct.arphdr*, %struct.arphdr** %7, align 8
  %50 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ETH_ALEN, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %67

55:                                               ; preds = %48
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %6, align 8
  %58 = getelementptr inbounds %struct.ebt_nat_info, %struct.ebt_nat_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* @ETH_ALEN, align 8
  %61 = call i64 @skb_store_bits(%struct.sk_buff* %56, i32 8, i32 %59, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @EBT_DROP, align 4
  store i32 %64, i32* %3, align 4
  br label %74

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %33, %17
  br label %67

67:                                               ; preds = %66, %54
  %68 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %6, align 8
  %69 = getelementptr inbounds %struct.ebt_nat_info, %struct.ebt_nat_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @EBT_VERDICT_BITS, align 4
  %72 = xor i32 %71, -1
  %73 = or i32 %70, %72
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %67, %63, %46, %15
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @skb_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local %struct.TYPE_2__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.arphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.arphdr*) #1

declare dso_local i64 @skb_store_bits(%struct.sk_buff*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
