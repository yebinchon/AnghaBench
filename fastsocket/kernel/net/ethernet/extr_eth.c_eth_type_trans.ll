; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ethernet/extr_eth.c_eth_type_trans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ethernet/extr_eth.c_eth_type_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i32, %struct.net_device* }
%struct.net_device = type { i32, i32 }
%struct.ethhdr = type { i32, i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@PACKET_BROADCAST = common dso_local global i32 0, align 4
@PACKET_MULTICAST = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@ETH_P_DSA = common dso_local global i32 0, align 4
@ETH_P_TRAILER = common dso_local global i32 0, align 4
@ETH_P_802_3 = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eth_type_trans(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethhdr*, align 8
  %7 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 2
  store %struct.net_device* %8, %struct.net_device** %10, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @skb_reset_mac_header(%struct.sk_buff* %11)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load i32, i32* @ETH_HLEN, align 4
  %15 = call i32 @skb_pull(%struct.sk_buff* %13, i32 %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %16)
  store %struct.ethhdr* %17, %struct.ethhdr** %6, align 8
  %18 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %19 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @is_multicast_ether_addr(i32 %20)
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %2
  %25 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %26 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @compare_ether_addr_64bits(i32 %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @PACKET_BROADCAST, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  br label %41

37:                                               ; preds = %24
  %38 = load i32, i32* @PACKET_MULTICAST, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %33
  br label %57

42:                                               ; preds = %2
  %43 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %44 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @compare_ether_addr_64bits(i32 %45, i32 %48)
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load i32, i32* @PACKET_OTHERHOST, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %52, %42
  br label %57

57:                                               ; preds = %56, %41
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = call i64 @netdev_uses_dsa_tags(%struct.net_device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @ETH_P_DSA, align 4
  %63 = call i32 @htons(i32 %62)
  store i32 %63, i32* %3, align 4
  br label %96

64:                                               ; preds = %57
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = call i64 @netdev_uses_trailer_tags(%struct.net_device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @ETH_P_TRAILER, align 4
  %70 = call i32 @htons(i32 %69)
  store i32 %70, i32* %3, align 4
  br label %96

71:                                               ; preds = %64
  %72 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %73 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ntohs(i32 %74)
  %76 = icmp sge i32 %75, 1536
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %79 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %3, align 4
  br label %96

81:                                               ; preds = %71
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %7, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = bitcast i8* %85 to i16*
  %87 = load i16, i16* %86, align 2
  %88 = zext i16 %87 to i32
  %89 = icmp eq i32 %88, 65535
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load i32, i32* @ETH_P_802_3, align 4
  %92 = call i32 @htons(i32 %91)
  store i32 %92, i32* %3, align 4
  br label %96

93:                                               ; preds = %81
  %94 = load i32, i32* @ETH_P_802_2, align 4
  %95 = call i32 @htons(i32 %94)
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %93, %90, %77, %68, %61
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @compare_ether_addr_64bits(i32, i32) #1

declare dso_local i64 @netdev_uses_dsa_tags(%struct.net_device*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @netdev_uses_trailer_tags(%struct.net_device*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
