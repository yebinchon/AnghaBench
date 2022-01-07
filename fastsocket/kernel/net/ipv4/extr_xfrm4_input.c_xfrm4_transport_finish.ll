; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_input.c_xfrm4_transport_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_input.c_xfrm4_transport_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i64 }
%struct.iphdr = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@xfrm4_rcv_encap_finish = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm4_transport_finish(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %7)
  store %struct.iphdr* %8, %struct.iphdr** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.TYPE_2__* @XFRM_MODE_SKB_CB(%struct.sk_buff* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %14 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %19 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %47

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i64 @skb_network_header(%struct.sk_buff* %27)
  %29 = sub nsw i64 %26, %28
  %30 = call i32 @__skb_push(%struct.sk_buff* %23, i64 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @htons(i32 %33)
  %35 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %36 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %38 = call i32 @ip_send_check(%struct.iphdr* %37)
  %39 = load i32, i32* @PF_INET, align 4
  %40 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @xfrm4_rcv_encap_finish, align 4
  %46 = call i32 @NF_HOOK(i32 %39, i32 %40, %struct.sk_buff* %41, i32 %44, i32* null, i32 %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %22, %17
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @XFRM_MODE_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ip_send_check(%struct.iphdr*) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.sk_buff*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
