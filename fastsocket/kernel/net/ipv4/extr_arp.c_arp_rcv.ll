; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_arp.c_arp_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_arp.c_arp_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i64, i32 }
%struct.arphdr = type { i64, i32 }

@IFF_NOARP = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i64 0, align 8
@PACKET_LOOPBACK = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NFPROTO_ARP = common dso_local global i32 0, align 4
@NF_ARP_IN = common dso_local global i32 0, align 4
@arp_process = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @arp_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.arphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = call i32 @arp_hdr_len(%struct.net_device* %12)
  %14 = call i32 @pskb_may_pull(%struct.sk_buff* %11, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %68

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call %struct.arphdr* @arp_hdr(%struct.sk_buff* %18)
  store %struct.arphdr* %19, %struct.arphdr** %10, align 8
  %20 = load %struct.arphdr*, %struct.arphdr** %10, align 8
  %21 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %51, label %27

27:                                               ; preds = %17
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IFF_NOARP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PACKET_OTHERHOST, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %51, label %40

40:                                               ; preds = %34
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PACKET_LOOPBACK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load %struct.arphdr*, %struct.arphdr** %10, align 8
  %48 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 4
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %40, %34, %27, %17
  br label %68

52:                                               ; preds = %46
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  %55 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %53, i32 %54)
  store %struct.sk_buff* %55, %struct.sk_buff** %6, align 8
  %56 = icmp eq %struct.sk_buff* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %71

58:                                               ; preds = %52
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call i32 @NEIGH_CB(%struct.sk_buff* %59)
  %61 = call i32 @memset(i32 %60, i32 0, i32 4)
  %62 = load i32, i32* @NFPROTO_ARP, align 4
  %63 = load i32, i32* @NF_ARP_IN, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = load %struct.net_device*, %struct.net_device** %7, align 8
  %66 = load i32, i32* @arp_process, align 4
  %67 = call i32 @NF_HOOK(i32 %62, i32 %63, %struct.sk_buff* %64, %struct.net_device* %65, i32* null, i32 %66)
  store i32 %67, i32* %5, align 4
  br label %72

68:                                               ; preds = %51, %16
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call i32 @kfree_skb(%struct.sk_buff* %69)
  br label %71

71:                                               ; preds = %68, %57
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %58
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @arp_hdr_len(%struct.net_device*) #1

declare dso_local %struct.arphdr* @arp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @NEIGH_CB(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.sk_buff*, %struct.net_device*, i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
