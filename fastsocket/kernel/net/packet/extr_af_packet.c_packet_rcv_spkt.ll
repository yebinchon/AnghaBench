; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_rcv_spkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_rcv_spkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i64 }
%struct.packet_type = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.sockaddr_pkt = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sockaddr_pkt }

@PACKET_LOOPBACK = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @packet_rcv_spkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_rcv_spkt(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sockaddr_pkt*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %12 = load %struct.packet_type*, %struct.packet_type** %8, align 8
  %13 = getelementptr inbounds %struct.packet_type, %struct.packet_type* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %10, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PACKET_LOOPBACK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %75

21:                                               ; preds = %4
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = call i64 @dev_net(%struct.net_device* %22)
  %24 = load %struct.sock*, %struct.sock** %10, align 8
  %25 = call i64 @sock_net(%struct.sock* %24)
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %75

28:                                               ; preds = %21
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %29, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %6, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = icmp eq %struct.sk_buff* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %78

35:                                               ; preds = %28
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i32 @skb_dst_drop(%struct.sk_buff* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @nf_reset(%struct.sk_buff* %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call %struct.TYPE_4__* @PACKET_SKB_CB(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store %struct.sockaddr_pkt* %43, %struct.sockaddr_pkt** %11, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i64 @skb_mac_header(%struct.sk_buff* %48)
  %50 = sub nsw i64 %47, %49
  %51 = call i32 @skb_push(%struct.sk_buff* %44, i64 %50)
  %52 = load %struct.net_device*, %struct.net_device** %7, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sockaddr_pkt*, %struct.sockaddr_pkt** %11, align 8
  %56 = getelementptr inbounds %struct.sockaddr_pkt, %struct.sockaddr_pkt* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.sockaddr_pkt*, %struct.sockaddr_pkt** %11, align 8
  %58 = getelementptr inbounds %struct.sockaddr_pkt, %struct.sockaddr_pkt* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.net_device*, %struct.net_device** %7, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @strlcpy(i32 %59, i32 %62, i32 4)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.sockaddr_pkt*, %struct.sockaddr_pkt** %11, align 8
  %68 = getelementptr inbounds %struct.sockaddr_pkt, %struct.sockaddr_pkt* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.sock*, %struct.sock** %10, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = call i64 @sock_queue_rcv_skb(%struct.sock* %69, %struct.sk_buff* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %79

74:                                               ; preds = %35
  br label %75

75:                                               ; preds = %74, %27, %20
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = call i32 @kfree_skb(%struct.sk_buff* %76)
  br label %78

78:                                               ; preds = %75, %34
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %73
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i64 @dev_net(%struct.net_device*) #1

declare dso_local i64 @sock_net(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @nf_reset(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @PACKET_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
