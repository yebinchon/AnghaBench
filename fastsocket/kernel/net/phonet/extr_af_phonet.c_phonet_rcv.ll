; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_af_phonet.c_phonet_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_af_phonet.c_phonet_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i32 }
%struct.net = type { i32 }
%struct.phonethdr = type { i32 }
%struct.sockaddr_pn = type { i32 }
%struct.sock = type { i32 }

@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @phonet_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phonet_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.phonethdr*, align 8
  %12 = alloca %struct.sockaddr_pn, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = call %struct.net* @dev_net(%struct.net_device* %15)
  store %struct.net* %16, %struct.net** %10, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i32 @pskb_pull(%struct.sk_buff* %17, i32 4)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %73

21:                                               ; preds = %4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call %struct.phonethdr* @pn_hdr(%struct.sk_buff* %22)
  store %struct.phonethdr* %23, %struct.phonethdr** %11, align 8
  %24 = load %struct.phonethdr*, %struct.phonethdr** %11, align 8
  %25 = getelementptr inbounds %struct.phonethdr, %struct.phonethdr* %24, i32 0, i32 0
  %26 = call i32 @get_unaligned_be16(i32* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %73

30:                                               ; preds = %21
  %31 = load i32, i32* %13, align 4
  %32 = sub nsw i32 %31, 2
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %30
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i64 @pskb_trim(%struct.sk_buff* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %30
  br label %73

44:                                               ; preds = %38
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call i32 @skb_reset_transport_header(%struct.sk_buff* %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call i32 @pn_skb_get_dst_sockaddr(%struct.sk_buff* %47, %struct.sockaddr_pn* %12)
  %49 = load %struct.net*, %struct.net** %10, align 8
  %50 = call i32 @pn_sockaddr_get_addr(%struct.sockaddr_pn* %12)
  %51 = call i64 @phonet_address_lookup(%struct.net* %49, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %44
  %54 = load %struct.net*, %struct.net** %10, align 8
  %55 = call %struct.sock* @pn_find_sock_by_sa(%struct.net* %54, %struct.sockaddr_pn* %12)
  store %struct.sock* %55, %struct.sock** %14, align 8
  %56 = load %struct.sock*, %struct.sock** %14, align 8
  %57 = icmp ne %struct.sock* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.sock*, %struct.sock** %14, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = call i32 @sk_receive_skb(%struct.sock* %59, %struct.sk_buff* %60, i32 0)
  store i32 %61, i32* %5, align 4
  br label %77

62:                                               ; preds = %53
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = call i64 @can_respond(%struct.sk_buff* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = call i32 @send_obj_unreachable(%struct.sk_buff* %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call i32 @send_reset_indications(%struct.sk_buff* %69)
  br label %71

71:                                               ; preds = %66, %62
  br label %72

72:                                               ; preds = %71, %44
  br label %73

73:                                               ; preds = %72, %43, %29, %20
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = call i32 @kfree_skb(%struct.sk_buff* %74)
  %76 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %73, %58
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @pskb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.phonethdr* @pn_hdr(%struct.sk_buff*) #1

declare dso_local i32 @get_unaligned_be16(i32*) #1

declare dso_local i64 @pskb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @pn_skb_get_dst_sockaddr(%struct.sk_buff*, %struct.sockaddr_pn*) #1

declare dso_local i64 @phonet_address_lookup(%struct.net*, i32) #1

declare dso_local i32 @pn_sockaddr_get_addr(%struct.sockaddr_pn*) #1

declare dso_local %struct.sock* @pn_find_sock_by_sa(%struct.net*, %struct.sockaddr_pn*) #1

declare dso_local i32 @sk_receive_skb(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i64 @can_respond(%struct.sk_buff*) #1

declare dso_local i32 @send_obj_unreachable(%struct.sk_buff*) #1

declare dso_local i32 @send_reset_indications(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
