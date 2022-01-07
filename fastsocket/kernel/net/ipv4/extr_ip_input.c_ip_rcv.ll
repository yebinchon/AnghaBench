; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_input.c_ip_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_input.c_ip_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i32 }
%struct.iphdr = type { i32, i32, i32 }

@PACKET_OTHERHOST = common dso_local global i64 0, align 8
@IPSTATS_MIB_IN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IPSTATS_MIB_INDISCARDS = common dso_local global i32 0, align 4
@IPSTATS_MIB_INTRUNCATEDPKTS = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@ip_rcv_finish = common dso_local global i32 0, align 4
@IPSTATS_MIB_INHDRERRORS = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PACKET_OTHERHOST, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %125

18:                                               ; preds = %4
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = call i32 @dev_net(%struct.net_device* %19)
  %21 = load i32, i32* @IPSTATS_MIB_IN, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @IP_UPD_PO_STATS_BH(i32 %20, i32 %21, i32 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %6, align 8
  %29 = icmp eq %struct.sk_buff* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %18
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = call i32 @dev_net(%struct.net_device* %31)
  %33 = load i32, i32* @IPSTATS_MIB_INDISCARDS, align 4
  %34 = call i32 @IP_INC_STATS_BH(i32 %32, i32 %33)
  br label %128

35:                                               ; preds = %18
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i32 @pskb_may_pull(%struct.sk_buff* %36, i32 12)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %120

40:                                               ; preds = %35
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %41)
  store %struct.iphdr* %42, %struct.iphdr** %10, align 8
  %43 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 5
  br i1 %46, label %52, label %47

47:                                               ; preds = %40
  %48 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %49 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 4
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %40
  br label %120

53:                                               ; preds = %47
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %56 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 4
  %59 = call i32 @pskb_may_pull(%struct.sk_buff* %54, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  br label %120

62:                                               ; preds = %53
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %63)
  store %struct.iphdr* %64, %struct.iphdr** %10, align 8
  %65 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %66 = bitcast %struct.iphdr* %65 to i32*
  %67 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %68 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ip_fast_csum(i32* %66, i32 %69)
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %120

74:                                               ; preds = %62
  %75 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %76 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ntohs(i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %74
  %85 = load %struct.net_device*, %struct.net_device** %7, align 8
  %86 = call i32 @dev_net(%struct.net_device* %85)
  %87 = load i32, i32* @IPSTATS_MIB_INTRUNCATEDPKTS, align 4
  %88 = call i32 @IP_INC_STATS_BH(i32 %86, i32 %87)
  br label %125

89:                                               ; preds = %74
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %92 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %93, 4
  %95 = icmp slt i32 %90, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %120

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i64 @pskb_trim_rcsum(%struct.sk_buff* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.net_device*, %struct.net_device** %7, align 8
  %105 = call i32 @dev_net(%struct.net_device* %104)
  %106 = load i32, i32* @IPSTATS_MIB_INDISCARDS, align 4
  %107 = call i32 @IP_INC_STATS_BH(i32 %105, i32 %106)
  br label %125

108:                                              ; preds = %98
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = call i32 @IPCB(%struct.sk_buff* %109)
  %111 = call i32 @memset(i32 %110, i32 0, i32 4)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %113 = call i32 @skb_orphan(%struct.sk_buff* %112)
  %114 = load i32, i32* @PF_INET, align 4
  %115 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %117 = load %struct.net_device*, %struct.net_device** %7, align 8
  %118 = load i32, i32* @ip_rcv_finish, align 4
  %119 = call i32 @NF_HOOK(i32 %114, i32 %115, %struct.sk_buff* %116, %struct.net_device* %117, i32* null, i32 %118)
  store i32 %119, i32* %5, align 4
  br label %130

120:                                              ; preds = %96, %73, %61, %52, %39
  %121 = load %struct.net_device*, %struct.net_device** %7, align 8
  %122 = call i32 @dev_net(%struct.net_device* %121)
  %123 = load i32, i32* @IPSTATS_MIB_INHDRERRORS, align 4
  %124 = call i32 @IP_INC_STATS_BH(i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %120, %103, %84, %17
  %126 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %127 = call i32 @kfree_skb(%struct.sk_buff* %126)
  br label %128

128:                                              ; preds = %125, %30
  %129 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %128, %108
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @IP_UPD_PO_STATS_BH(i32, i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @IP_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_fast_csum(i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @pskb_trim_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.sk_buff*, %struct.net_device*, i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
