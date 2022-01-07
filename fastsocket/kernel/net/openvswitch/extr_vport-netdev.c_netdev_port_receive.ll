; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-netdev.c_netdev_port_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport-netdev.c_netdev_port_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32 }
%struct.sk_buff = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vport*, %struct.sk_buff*)* @netdev_port_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdev_port_receive(%struct.vport* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.vport*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.vport* %0, %struct.vport** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.vport*, %struct.vport** %3, align 8
  %6 = icmp ne %struct.vport* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @skb_warn_if_lro(%struct.sk_buff* %13)
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %42

18:                                               ; preds = %12
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %4, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %45

29:                                               ; preds = %18
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* @ETH_HLEN, align 4
  %32 = call i32 @skb_push(%struct.sk_buff* %30, i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ETH_HLEN, align 4
  %38 = call i32 @ovs_skb_postpush_rcsum(%struct.sk_buff* %33, i32 %36, i32 %37)
  %39 = load %struct.vport*, %struct.vport** %3, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i32 @ovs_vport_receive(%struct.vport* %39, %struct.sk_buff* %40, i32* null)
  br label %45

42:                                               ; preds = %17, %11
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32 @kfree_skb(%struct.sk_buff* %43)
  br label %45

45:                                               ; preds = %42, %29, %28
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_warn_if_lro(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @ovs_skb_postpush_rcsum(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ovs_vport_receive(%struct.vport*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
