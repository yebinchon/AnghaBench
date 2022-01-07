; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_reassembly.c_ipv6_frag_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_reassembly.c_ipv6_frag_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.frag_hdr = type { i32, i32 }
%struct.frag_queue = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.ipv6hdr = type { i64, i32, i32 }
%struct.net = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32* }

@IPSTATS_MIB_REASMREQDS = common dso_local global i32 0, align 4
@IPSTATS_MIB_REASMOKS = common dso_local global i32 0, align 4
@ip6_frags = common dso_local global i32 0, align 4
@IPSTATS_MIB_REASMFAILS = common dso_local global i32 0, align 4
@IPSTATS_MIB_INHDRERRORS = common dso_local global i32 0, align 4
@ICMPV6_HDR_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ipv6_frag_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_frag_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.frag_hdr*, align 8
  %5 = alloca %struct.frag_queue*, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %9)
  store %struct.ipv6hdr* %10, %struct.ipv6hdr** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call %struct.TYPE_9__* @skb_dst(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.net* @dev_net(i32 %14)
  store %struct.net* %15, %struct.net** %7, align 8
  %16 = load %struct.net*, %struct.net** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = call %struct.TYPE_9__* @skb_dst(%struct.sk_buff* %17)
  %19 = call i32 @ip6_dst_idev(%struct.TYPE_9__* %18)
  %20 = load i32, i32* @IPSTATS_MIB_REASMREQDS, align 4
  %21 = call i32 @IP6_INC_STATS_BH(%struct.net* %16, i32 %19, i32 %20)
  %22 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %23 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %132

27:                                               ; preds = %1
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = call i64 @skb_transport_offset(%struct.sk_buff* %29)
  %31 = add i64 %30, 8
  %32 = call i32 @pskb_may_pull(%struct.sk_buff* %28, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %132

35:                                               ; preds = %27
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %36)
  store %struct.ipv6hdr* %37, %struct.ipv6hdr** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = call i64 @skb_transport_header(%struct.sk_buff* %38)
  %40 = inttoptr i64 %39 to %struct.frag_hdr*
  store %struct.frag_hdr* %40, %struct.frag_hdr** %4, align 8
  %41 = load %struct.frag_hdr*, %struct.frag_hdr** %4, align 8
  %42 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @htons(i32 65529)
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %70, label %47

47:                                               ; preds = %35
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  %54 = load %struct.net*, %struct.net** %7, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %56 = call %struct.TYPE_9__* @skb_dst(%struct.sk_buff* %55)
  %57 = call i32 @ip6_dst_idev(%struct.TYPE_9__* %56)
  %58 = load i32, i32* @IPSTATS_MIB_REASMOKS, align 4
  %59 = call i32 @IP6_INC_STATS_BH(%struct.net* %54, i32 %57, i32 %58)
  %60 = load %struct.frag_hdr*, %struct.frag_hdr** %4, align 8
  %61 = bitcast %struct.frag_hdr* %60 to i32*
  %62 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %63 = call i32 @skb_network_header(%struct.sk_buff* %62)
  %64 = sext i32 %63 to i64
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %68 = call %struct.TYPE_11__* @IP6CB(%struct.sk_buff* %67)
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  store i32* %66, i32** %69, align 8
  store i32 1, i32* %2, align 4
  br label %144

70:                                               ; preds = %35
  %71 = load %struct.net*, %struct.net** %7, align 8
  %72 = getelementptr inbounds %struct.net, %struct.net* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = call i64 @atomic_read(i32* %74)
  %76 = load %struct.net*, %struct.net** %7, align 8
  %77 = getelementptr inbounds %struct.net, %struct.net* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %75, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %70
  %83 = load %struct.net*, %struct.net** %7, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %85 = call %struct.TYPE_9__* @skb_dst(%struct.sk_buff* %84)
  %86 = call i32 @ip6_dst_idev(%struct.TYPE_9__* %85)
  %87 = call i32 @ip6_evictor(%struct.net* %83, i32 %86)
  br label %88

88:                                               ; preds = %82, %70
  %89 = load %struct.net*, %struct.net** %7, align 8
  %90 = load %struct.frag_hdr*, %struct.frag_hdr** %4, align 8
  %91 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %94 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %93, i32 0, i32 2
  %95 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %96 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %95, i32 0, i32 1
  %97 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %98 = call %struct.TYPE_9__* @skb_dst(%struct.sk_buff* %97)
  %99 = call i32 @ip6_dst_idev(%struct.TYPE_9__* %98)
  %100 = call %struct.frag_queue* @fq_find(%struct.net* %89, i32 %92, i32* %94, i32* %96, i32 %99)
  store %struct.frag_queue* %100, %struct.frag_queue** %5, align 8
  %101 = icmp ne %struct.frag_queue* %100, null
  br i1 %101, label %102, label %123

102:                                              ; preds = %88
  %103 = load %struct.frag_queue*, %struct.frag_queue** %5, align 8
  %104 = getelementptr inbounds %struct.frag_queue, %struct.frag_queue* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = call i32 @spin_lock(i32* %105)
  %107 = load %struct.frag_queue*, %struct.frag_queue** %5, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %109 = load %struct.frag_hdr*, %struct.frag_hdr** %4, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %111 = call %struct.TYPE_11__* @IP6CB(%struct.sk_buff* %110)
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @ip6_frag_queue(%struct.frag_queue* %107, %struct.sk_buff* %108, %struct.frag_hdr* %109, i32* %113)
  store i32 %114, i32* %8, align 4
  %115 = load %struct.frag_queue*, %struct.frag_queue** %5, align 8
  %116 = getelementptr inbounds %struct.frag_queue, %struct.frag_queue* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock(i32* %117)
  %119 = load %struct.frag_queue*, %struct.frag_queue** %5, align 8
  %120 = getelementptr inbounds %struct.frag_queue, %struct.frag_queue* %119, i32 0, i32 0
  %121 = call i32 @inet_frag_put(%struct.TYPE_10__* %120, i32* @ip6_frags)
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %2, align 4
  br label %144

123:                                              ; preds = %88
  %124 = load %struct.net*, %struct.net** %7, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %126 = call %struct.TYPE_9__* @skb_dst(%struct.sk_buff* %125)
  %127 = call i32 @ip6_dst_idev(%struct.TYPE_9__* %126)
  %128 = load i32, i32* @IPSTATS_MIB_REASMFAILS, align 4
  %129 = call i32 @IP6_INC_STATS_BH(%struct.net* %124, i32 %127, i32 %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %131 = call i32 @kfree_skb(%struct.sk_buff* %130)
  store i32 -1, i32* %2, align 4
  br label %144

132:                                              ; preds = %34, %26
  %133 = load %struct.net*, %struct.net** %7, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %135 = call %struct.TYPE_9__* @skb_dst(%struct.sk_buff* %134)
  %136 = call i32 @ip6_dst_idev(%struct.TYPE_9__* %135)
  %137 = load i32, i32* @IPSTATS_MIB_INHDRERRORS, align 4
  %138 = call i32 @IP6_INC_STATS(%struct.net* %133, i32 %136, i32 %137)
  %139 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %140 = load i32, i32* @ICMPV6_HDR_FIELD, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %142 = call i32 @skb_network_header_len(%struct.sk_buff* %141)
  %143 = call i32 @icmpv6_param_prob(%struct.sk_buff* %139, i32 %140, i32 %142)
  store i32 -1, i32* %2, align 4
  br label %144

144:                                              ; preds = %132, %123, %102, %47
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.TYPE_9__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @IP6_INC_STATS_BH(%struct.net*, i32, i32) #1

declare dso_local i32 @ip6_dst_idev(%struct.TYPE_9__*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_11__* @IP6CB(%struct.sk_buff*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ip6_evictor(%struct.net*, i32) #1

declare dso_local %struct.frag_queue* @fq_find(%struct.net*, i32, i32*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ip6_frag_queue(%struct.frag_queue*, %struct.sk_buff*, %struct.frag_hdr*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @inet_frag_put(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @IP6_INC_STATS(%struct.net*, i32, i32) #1

declare dso_local i32 @icmpv6_param_prob(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
