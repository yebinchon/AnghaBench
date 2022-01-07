; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_gre.c_ipgre_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_gre.c_ipgre_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ip_tunnel = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, %struct.iphdr }
%struct.iphdr = type { i32 }

@TUNNEL_CSUM = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ipgre_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipgre_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ip_tunnel*, align 8
  %7 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %8)
  store %struct.ip_tunnel* %9, %struct.ip_tunnel** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %12 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TUNNEL_CSUM, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call %struct.sk_buff* @gre_handle_offloads(%struct.sk_buff* %10, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %4, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i64 @IS_ERR(%struct.sk_buff* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %79

26:                                               ; preds = %2
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %37 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 4
  %40 = sub i64 %35, %39
  %41 = call i64 @skb_cow_head(%struct.sk_buff* %32, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %76

44:                                               ; preds = %31
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.iphdr*
  store %struct.iphdr* %48, %struct.iphdr** %7, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %51 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 4
  %54 = call i32 @skb_pull(%struct.sk_buff* %49, i64 %53)
  br label %67

55:                                               ; preds = %26
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @skb_cow_head(%struct.sk_buff* %56, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %76

63:                                               ; preds = %55
  %64 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %65 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store %struct.iphdr* %66, %struct.iphdr** %7, align 8
  br label %67

67:                                               ; preds = %63, %44
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @__gre_xmit(%struct.sk_buff* %68, %struct.net_device* %69, %struct.iphdr* %70, i32 %73)
  %75 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %75, i32* %3, align 4
  br label %86

76:                                               ; preds = %62, %43
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = call i32 @dev_kfree_skb(%struct.sk_buff* %77)
  br label %79

79:                                               ; preds = %76, %25
  %80 = load %struct.net_device*, %struct.net_device** %5, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %79, %67
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @gre_handle_offloads(%struct.sk_buff*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @__gre_xmit(%struct.sk_buff*, %struct.net_device*, %struct.iphdr*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
