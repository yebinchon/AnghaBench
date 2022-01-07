; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_output.c_ip_mc_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_output.c_ip_mc_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device*, i32, i32, %struct.sock* }
%struct.net_device = type { i32 }
%struct.sock = type { i32 }
%struct.rtable = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.net_device* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@IPSTATS_MIB_OUT = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@RTCF_MULTICAST = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@NF_INET_POST_ROUTING = common dso_local global i32 0, align 4
@ip_dev_loopback_xmit = common dso_local global i32 0, align 4
@RTCF_BROADCAST = common dso_local global i32 0, align 4
@ip_finish_output = common dso_local global i32 0, align 4
@IPSKB_REROUTED = common dso_local global i32 0, align 4
@IPSKB_FORWARDED = common dso_local global i32 0, align 4
@RTCF_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_mc_output(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.rtable*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 3
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %12)
  store %struct.rtable* %13, %struct.rtable** %5, align 8
  %14 = load %struct.rtable*, %struct.rtable** %5, align 8
  %15 = getelementptr inbounds %struct.rtable, %struct.rtable* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %6, align 8
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = call i32 @dev_net(%struct.net_device* %19)
  %21 = load i32, i32* @IPSTATS_MIB_OUT, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @IP_UPD_PO_STATS(i32 %20, i32 %21, i32 %24)
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  store %struct.net_device* %26, %struct.net_device** %28, align 8
  %29 = load i32, i32* @ETH_P_IP, align 4
  %30 = call i32 @htons(i32 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.rtable*, %struct.rtable** %5, align 8
  %34 = getelementptr inbounds %struct.rtable, %struct.rtable* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RTCF_MULTICAST, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %1
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = icmp ne %struct.sock* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = call %struct.TYPE_9__* @inet_sk(%struct.sock* %43)
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %42, %39
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %49, i32 %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %7, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load i32, i32* @PF_INET, align 4
  %56 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load %struct.net_device*, %struct.net_device** %59, align 8
  %61 = load i32, i32* @ip_dev_loopback_xmit, align 4
  %62 = call i32 @NF_HOOK(i32 %55, i32 %56, %struct.sk_buff* %57, i32* null, %struct.net_device* %60, i32 %61)
  br label %63

63:                                               ; preds = %54, %48
  br label %64

64:                                               ; preds = %63, %42
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %66 = call %struct.TYPE_8__* @ip_hdr(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %72 = call i32 @kfree_skb(%struct.sk_buff* %71)
  store i32 0, i32* %2, align 4
  br label %115

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %1
  %75 = load %struct.rtable*, %struct.rtable** %5, align 8
  %76 = getelementptr inbounds %struct.rtable, %struct.rtable* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @RTCF_BROADCAST, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %74
  %82 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %83 = load i32, i32* @GFP_ATOMIC, align 4
  %84 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %82, i32 %83)
  store %struct.sk_buff* %84, %struct.sk_buff** %8, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %86 = icmp ne %struct.sk_buff* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load i32, i32* @PF_INET, align 4
  %89 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load %struct.net_device*, %struct.net_device** %92, align 8
  %94 = load i32, i32* @ip_dev_loopback_xmit, align 4
  %95 = call i32 @NF_HOOK(i32 %88, i32 %89, %struct.sk_buff* %90, i32* null, %struct.net_device* %93, i32 %94)
  br label %96

96:                                               ; preds = %87, %81
  br label %97

97:                                               ; preds = %96, %74
  %98 = load i32, i32* @PF_INET, align 4
  %99 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 0
  %103 = load %struct.net_device*, %struct.net_device** %102, align 8
  %104 = load i32, i32* @ip_finish_output, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %106 = call %struct.TYPE_10__* @IPCB(%struct.sk_buff* %105)
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @IPSKB_REROUTED, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i32 @NF_HOOK_COND(i32 %98, i32 %99, %struct.sk_buff* %100, i32* null, %struct.net_device* %103, i32 %104, i32 %113)
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %97, %70
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i32 @IP_UPD_PO_STATS(i32, i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.TYPE_9__* @inet_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.sk_buff*, i32*, %struct.net_device*, i32) #1

declare dso_local %struct.TYPE_8__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK_COND(i32, i32, %struct.sk_buff*, i32*, %struct.net_device*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @IPCB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
