; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_set_eth_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_set_eth_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ovs_key_ethernet = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ovs_key_ethernet*)* @set_eth_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_eth_addr(%struct.sk_buff* %0, %struct.ovs_key_ethernet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ovs_key_ethernet*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ovs_key_ethernet* %1, %struct.ovs_key_ethernet** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = load i32, i32* @ETH_HLEN, align 4
  %9 = call i32 @make_writable(%struct.sk_buff* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %17)
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = mul nsw i32 %19, 2
  %21 = call i32 @skb_postpull_rcsum(%struct.sk_buff* %16, %struct.TYPE_4__* %18, i32 %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ovs_key_ethernet*, %struct.ovs_key_ethernet** %5, align 8
  %27 = getelementptr inbounds %struct.ovs_key_ethernet, %struct.ovs_key_ethernet* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ETH_ALEN, align 4
  %30 = call i32 @memcpy(i32 %25, i32 %28, i32 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ovs_key_ethernet*, %struct.ovs_key_ethernet** %5, align 8
  %36 = getelementptr inbounds %struct.ovs_key_ethernet, %struct.ovs_key_ethernet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = call i32 @memcpy(i32 %34, i32 %37, i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %41)
  %43 = load i32, i32* @ETH_ALEN, align 4
  %44 = mul nsw i32 %43, 2
  %45 = call i32 @ovs_skb_postpush_rcsum(%struct.sk_buff* %40, %struct.TYPE_4__* %42, i32 %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %15, %13
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @make_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_postpull_rcsum(%struct.sk_buff*, %struct.TYPE_4__*, i32) #1

declare dso_local %struct.TYPE_4__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ovs_skb_postpush_rcsum(%struct.sk_buff*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
