; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c___pop_vlan_tci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c___pop_vlan_tci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i64, i32 }
%struct.vlan_hdr = type { i32 }

@VLAN_ETH_HLEN = common dso_local global i32 0, align 4
@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32*)* @__pop_vlan_tci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pop_vlan_tci(%struct.sk_buff* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vlan_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = load i32, i32* @VLAN_ETH_HLEN, align 4
  %10 = call i32 @make_writable(%struct.sk_buff* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %75

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @ETH_ALEN, align 4
  %30 = mul nsw i32 2, %29
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = load i64, i64* @VLAN_HLEN, align 8
  %34 = call i32 @csum_partial(i64 %32, i64 %33, i32 0)
  %35 = call i32 @csum_sub(i32 %25, i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %22, %16
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ETH_HLEN, align 8
  %43 = add nsw i64 %41, %42
  %44 = inttoptr i64 %43 to %struct.vlan_hdr*
  store %struct.vlan_hdr* %44, %struct.vlan_hdr** %6, align 8
  %45 = load %struct.vlan_hdr*, %struct.vlan_hdr** %6, align 8
  %46 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VLAN_HLEN, align 8
  %53 = add nsw i64 %51, %52
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @ETH_ALEN, align 4
  %58 = mul nsw i32 2, %57
  %59 = call i32 @memmove(i64 %53, i64 %56, i32 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = load i64, i64* @VLAN_HLEN, align 8
  %62 = call i32 @__skb_pull(%struct.sk_buff* %60, i64 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = load %struct.vlan_hdr*, %struct.vlan_hdr** %6, align 8
  %65 = call i32 @vlan_set_encap_proto(%struct.sk_buff* %63, %struct.vlan_hdr* %64)
  %66 = load i64, i64* @VLAN_HLEN, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %66
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call i32 @skb_reset_mac_len(%struct.sk_buff* %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %38, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @make_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @csum_sub(i32, i32) #1

declare dso_local i32 @csum_partial(i64, i64, i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @vlan_set_encap_proto(%struct.sk_buff*, %struct.vlan_hdr*) #1

declare dso_local i32 @skb_reset_mac_len(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
