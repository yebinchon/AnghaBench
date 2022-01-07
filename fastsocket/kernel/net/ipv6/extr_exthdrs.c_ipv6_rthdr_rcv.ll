; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_exthdrs.c_ipv6_rthdr_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_exthdrs.c_ipv6_rthdr_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i64, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.inet6_skb_parm = type { i32*, i64, i64, i32, i32 }
%struct.in6_addr = type { i32 }
%struct.inet6_dev = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.ipv6_rt_hdr = type { i32, i32, i32, i32 }
%struct.rt0_hdr = type { %struct.in6_addr* }
%struct.net = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_15__*, i64 }
%struct.TYPE_14__ = type { i32, %struct.in6_addr, i32 }

@IPSTATS_MIB_INHDRERRORS = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i64 0, align 8
@IPSTATS_MIB_INADDRERRORS = common dso_local global i32 0, align 4
@ICMPV6_HDR_FIELD = common dso_local global i32 0, align 4
@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8
@CHECKSUM_NONE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ICMPV6_EXC_HOPLIMIT = common dso_local global i32 0, align 4
@ICMPV6_TIME_EXCEED = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IPPROTO_ROUTING = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTDISCARDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ipv6_rthdr_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_rthdr_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.inet6_skb_parm*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.in6_addr, align 4
  %7 = alloca %struct.inet6_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipv6_rt_hdr*, align 8
  %11 = alloca %struct.rt0_hdr*, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff* %14)
  store %struct.inet6_skb_parm* %15, %struct.inet6_skb_parm** %4, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %19 = call %struct.net* @dev_net(%struct.TYPE_15__* %18)
  store %struct.net* %19, %struct.net** %12, align 8
  %20 = load %struct.net*, %struct.net** %12, align 8
  %21 = getelementptr inbounds %struct.net, %struct.net* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = call %struct.inet6_dev* @in6_dev_get(%struct.TYPE_15__* %28)
  store %struct.inet6_dev* %29, %struct.inet6_dev** %7, align 8
  %30 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %31 = icmp ne %struct.inet6_dev* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %1
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %35 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %33, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %41 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %39, %32
  %45 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %46 = call i32 @in6_dev_put(%struct.inet6_dev* %45)
  br label %47

47:                                               ; preds = %44, %1
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = call i64 @skb_transport_offset(%struct.sk_buff* %49)
  %51 = add nsw i64 %50, 8
  %52 = call i32 @pskb_may_pull(%struct.sk_buff* %48, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %47
  %55 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = call i64 @skb_transport_offset(%struct.sk_buff* %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = call i32* @skb_transport_header(%struct.sk_buff* %58)
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  %63 = shl i32 %62, 3
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %57, %64
  %66 = call i32 @pskb_may_pull(%struct.sk_buff* %55, i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %54, %47
  %69 = load %struct.net*, %struct.net** %12, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %71 = call %struct.TYPE_13__* @skb_dst(%struct.sk_buff* %70)
  %72 = call i32 @ip6_dst_idev(%struct.TYPE_13__* %71)
  %73 = load i32, i32* @IPSTATS_MIB_INHDRERRORS, align 4
  %74 = call i32 @IP6_INC_STATS_BH(%struct.net* %69, i32 %72, i32 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %76 = call i32 @kfree_skb(%struct.sk_buff* %75)
  store i32 -1, i32* %2, align 4
  br label %166

77:                                               ; preds = %54
  %78 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %79 = call i32* @skb_transport_header(%struct.sk_buff* %78)
  %80 = bitcast i32* %79 to %struct.ipv6_rt_hdr*
  store %struct.ipv6_rt_hdr* %80, %struct.ipv6_rt_hdr** %10, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %82 = call %struct.TYPE_14__* @ipv6_hdr(%struct.sk_buff* %81)
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = call i64 @ipv6_addr_is_multicast(%struct.in6_addr* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %77
  %87 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PACKET_HOST, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %86, %77
  %93 = load %struct.net*, %struct.net** %12, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %95 = call %struct.TYPE_13__* @skb_dst(%struct.sk_buff* %94)
  %96 = call i32 @ip6_dst_idev(%struct.TYPE_13__* %95)
  %97 = load i32, i32* @IPSTATS_MIB_INADDRERRORS, align 4
  %98 = call i32 @IP6_INC_STATS_BH(%struct.net* %93, i32 %96, i32 %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %100 = call i32 @kfree_skb(%struct.sk_buff* %99)
  store i32 -1, i32* %2, align 4
  br label %166

101:                                              ; preds = %86
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.ipv6_rt_hdr*, %struct.ipv6_rt_hdr** %10, align 8
  %104 = getelementptr inbounds %struct.ipv6_rt_hdr, %struct.ipv6_rt_hdr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %144

107:                                              ; preds = %102
  %108 = load %struct.ipv6_rt_hdr*, %struct.ipv6_rt_hdr** %10, align 8
  %109 = getelementptr inbounds %struct.ipv6_rt_hdr, %struct.ipv6_rt_hdr* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  switch i32 %110, label %111 [
  ]

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %114 = call i32 @skb_network_header_len(%struct.sk_buff* %113)
  %115 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %4, align 8
  %116 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  %117 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %4, align 8
  %118 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %117, i32 0, i32 4
  store i32 %114, i32* %118, align 4
  %119 = load %struct.ipv6_rt_hdr*, %struct.ipv6_rt_hdr** %10, align 8
  %120 = getelementptr inbounds %struct.ipv6_rt_hdr, %struct.ipv6_rt_hdr* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  %123 = shl i32 %122, 3
  %124 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %4, align 8
  %129 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %4, align 8
  %132 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  %133 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %4, align 8
  %134 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %133, i32 0, i32 1
  store i64 0, i64* %134, align 8
  %135 = load %struct.ipv6_rt_hdr*, %struct.ipv6_rt_hdr** %10, align 8
  %136 = getelementptr inbounds %struct.ipv6_rt_hdr, %struct.ipv6_rt_hdr* %135, i32 0, i32 3
  %137 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %138 = call i32 @skb_network_header(%struct.sk_buff* %137)
  %139 = sext i32 %138 to i64
  %140 = sub i64 0, %139
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  %142 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %4, align 8
  %143 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %142, i32 0, i32 0
  store i32* %141, i32** %143, align 8
  store i32 1, i32* %2, align 4
  br label %166

144:                                              ; preds = %102
  %145 = load %struct.ipv6_rt_hdr*, %struct.ipv6_rt_hdr** %10, align 8
  %146 = getelementptr inbounds %struct.ipv6_rt_hdr, %struct.ipv6_rt_hdr* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  switch i32 %147, label %148 [
  ]

148:                                              ; preds = %144
  br label %149

149:                                              ; preds = %148
  %150 = load %struct.net*, %struct.net** %12, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %152 = call %struct.TYPE_13__* @skb_dst(%struct.sk_buff* %151)
  %153 = call i32 @ip6_dst_idev(%struct.TYPE_13__* %152)
  %154 = load i32, i32* @IPSTATS_MIB_INHDRERRORS, align 4
  %155 = call i32 @IP6_INC_STATS_BH(%struct.net* %150, i32 %153, i32 %154)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %157 = load i32, i32* @ICMPV6_HDR_FIELD, align 4
  %158 = load %struct.ipv6_rt_hdr*, %struct.ipv6_rt_hdr** %10, align 8
  %159 = getelementptr inbounds %struct.ipv6_rt_hdr, %struct.ipv6_rt_hdr* %158, i32 0, i32 1
  %160 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %161 = call i32 @skb_network_header(%struct.sk_buff* %160)
  %162 = sext i32 %161 to i64
  %163 = sub i64 0, %162
  %164 = getelementptr inbounds i32, i32* %159, i64 %163
  %165 = call i32 @icmpv6_param_prob(%struct.sk_buff* %156, i32 %157, i32* %164)
  store i32 -1, i32* %2, align 4
  br label %166

166:                                              ; preds = %149, %112, %92, %68
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(%struct.TYPE_15__*) #1

declare dso_local %struct.inet6_dev* @in6_dev_get(%struct.TYPE_15__*) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32* @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @IP6_INC_STATS_BH(%struct.net*, i32, i32) #1

declare dso_local i32 @ip6_dst_idev(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @ipv6_addr_is_multicast(%struct.in6_addr*) #1

declare dso_local %struct.TYPE_14__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @icmpv6_param_prob(%struct.sk_buff*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
