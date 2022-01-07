; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_input.c_ip6_input_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_input.c_ip6_input_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.inet6_protocol = type { i32, i32 (%struct.sk_buff*)* }
%struct.inet6_dev = type { i32 }
%struct.net = type { i32 }
%struct.ipv6hdr = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@MAX_INET_PROTOS = common dso_local global i32 0, align 4
@inet6_protos = common dso_local global i32* null, align 8
@INET6_PROTO_FINAL = common dso_local global i32 0, align 4
@INET6_PROTO_NOPOLICY = common dso_local global i32 0, align 4
@XFRM_POLICY_IN = common dso_local global i32 0, align 4
@IPSTATS_MIB_INDELIVERS = common dso_local global i32 0, align 4
@IPSTATS_MIB_INUNKNOWNPROTOS = common dso_local global i32 0, align 4
@ICMPV6_PARAMPROB = common dso_local global i32 0, align 4
@ICMPV6_UNK_NEXTHDR = common dso_local global i32 0, align 4
@IPSTATS_MIB_INDISCARDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ip6_input_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_input_finish(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.inet6_protocol*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.inet6_dev*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ipv6hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call %struct.TYPE_4__* @skb_dst(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net* @dev_net(i32 %16)
  store %struct.net* %17, %struct.net** %10, align 8
  %18 = call i32 (...) @rcu_read_lock()
  br label %19

19:                                               ; preds = %114, %1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call %struct.TYPE_4__* @skb_dst(%struct.sk_buff* %20)
  %22 = call %struct.inet6_dev* @ip6_dst_idev(%struct.TYPE_4__* %21)
  store %struct.inet6_dev* %22, %struct.inet6_dev** %9, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = call i32 @skb_transport_offset(%struct.sk_buff* %24)
  %26 = call i32 @pskb_pull(%struct.sk_buff* %23, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  br label %157

29:                                               ; preds = %19
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = call %struct.TYPE_5__* @IP6CB(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = call i32* @skb_network_header(%struct.sk_buff* %34)
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @raw6_local_deliver(%struct.sk_buff* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MAX_INET_PROTOS, align 4
  %45 = sub nsw i32 %44, 1
  %46 = and i32 %43, %45
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %8, align 8
  %48 = load i32*, i32** @inet6_protos, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.inet6_protocol* @rcu_dereference(i32 %51)
  store %struct.inet6_protocol* %52, %struct.inet6_protocol** %4, align 8
  %53 = icmp ne %struct.inet6_protocol* %52, null
  br i1 %53, label %54, label %125

54:                                               ; preds = %29
  %55 = load %struct.inet6_protocol*, %struct.inet6_protocol** %4, align 8
  %56 = getelementptr inbounds %struct.inet6_protocol, %struct.inet6_protocol* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @INET6_PROTO_FINAL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %93

61:                                               ; preds = %54
  %62 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %63 = call i32 @nf_reset(%struct.sk_buff* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %66 = call i32* @skb_network_header(%struct.sk_buff* %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %68 = call i32 @skb_network_header_len(%struct.sk_buff* %67)
  %69 = call i32 @skb_postpull_rcsum(%struct.sk_buff* %64, i32* %66, i32 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %71 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %70)
  store %struct.ipv6hdr* %71, %struct.ipv6hdr** %12, align 8
  %72 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %73 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %72, i32 0, i32 1
  %74 = call i64 @ipv6_addr_is_multicast(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %61
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %81 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %80, i32 0, i32 1
  %82 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %83 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %82, i32 0, i32 0
  %84 = call i32 @ipv6_chk_mcast_addr(i32 %79, i32* %81, i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %76
  %87 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @ipv6_is_mld(%struct.sk_buff* %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  br label %157

92:                                               ; preds = %86, %76, %61
  br label %93

93:                                               ; preds = %92, %54
  %94 = load %struct.inet6_protocol*, %struct.inet6_protocol** %4, align 8
  %95 = getelementptr inbounds %struct.inet6_protocol, %struct.inet6_protocol* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @INET6_PROTO_NOPOLICY, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %93
  %101 = load i32, i32* @XFRM_POLICY_IN, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %103 = call i64 @xfrm6_policy_check(i32* null, i32 %101, %struct.sk_buff* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  br label %157

106:                                              ; preds = %100, %93
  %107 = load %struct.inet6_protocol*, %struct.inet6_protocol** %4, align 8
  %108 = getelementptr inbounds %struct.inet6_protocol, %struct.inet6_protocol* %107, i32 0, i32 1
  %109 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %108, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %111 = call i32 %109(%struct.sk_buff* %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %19

115:                                              ; preds = %106
  %116 = load i32, i32* %11, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load %struct.net*, %struct.net** %10, align 8
  %120 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %121 = load i32, i32* @IPSTATS_MIB_INDELIVERS, align 4
  %122 = call i32 @IP6_INC_STATS_BH(%struct.net* %119, %struct.inet6_dev* %120, i32 %121)
  br label %123

123:                                              ; preds = %118, %115
  br label %124

124:                                              ; preds = %123
  br label %155

125:                                              ; preds = %29
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %147, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* @XFRM_POLICY_IN, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %131 = call i64 @xfrm6_policy_check(i32* null, i32 %129, %struct.sk_buff* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %128
  %134 = load %struct.net*, %struct.net** %10, align 8
  %135 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %136 = load i32, i32* @IPSTATS_MIB_INUNKNOWNPROTOS, align 4
  %137 = call i32 @IP6_INC_STATS_BH(%struct.net* %134, %struct.inet6_dev* %135, i32 %136)
  %138 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %139 = load i32, i32* @ICMPV6_PARAMPROB, align 4
  %140 = load i32, i32* @ICMPV6_UNK_NEXTHDR, align 4
  %141 = load i32, i32* %5, align 4
  %142 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @icmpv6_send(%struct.sk_buff* %138, i32 %139, i32 %140, i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %133, %128
  br label %152

147:                                              ; preds = %125
  %148 = load %struct.net*, %struct.net** %10, align 8
  %149 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %150 = load i32, i32* @IPSTATS_MIB_INDELIVERS, align 4
  %151 = call i32 @IP6_INC_STATS_BH(%struct.net* %148, %struct.inet6_dev* %149, i32 %150)
  br label %152

152:                                              ; preds = %147, %146
  %153 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %154 = call i32 @kfree_skb(%struct.sk_buff* %153)
  br label %155

155:                                              ; preds = %152, %124
  %156 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %2, align 4
  br label %165

157:                                              ; preds = %105, %91, %28
  %158 = load %struct.net*, %struct.net** %10, align 8
  %159 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %160 = load i32, i32* @IPSTATS_MIB_INDISCARDS, align 4
  %161 = call i32 @IP6_INC_STATS_BH(%struct.net* %158, %struct.inet6_dev* %159, i32 %160)
  %162 = call i32 (...) @rcu_read_unlock()
  %163 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %164 = call i32 @kfree_skb(%struct.sk_buff* %163)
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %157, %155
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.TYPE_4__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.inet6_dev* @ip6_dst_idev(%struct.TYPE_4__*) #1

declare dso_local i32 @pskb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @IP6CB(%struct.sk_buff*) #1

declare dso_local i32* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @raw6_local_deliver(%struct.sk_buff*, i32) #1

declare dso_local %struct.inet6_protocol* @rcu_dereference(i32) #1

declare dso_local i32 @nf_reset(%struct.sk_buff*) #1

declare dso_local i32 @skb_postpull_rcsum(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ipv6_addr_is_multicast(i32*) #1

declare dso_local i32 @ipv6_chk_mcast_addr(i32, i32*, i32*) #1

declare dso_local i32 @ipv6_is_mld(%struct.sk_buff*, i32) #1

declare dso_local i64 @xfrm6_policy_check(i32*, i32, %struct.sk_buff*) #1

declare dso_local i32 @IP6_INC_STATS_BH(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @icmpv6_send(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
