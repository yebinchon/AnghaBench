; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_igmp6_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_igmp6_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.net_device = type { i32 }
%struct.net = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.inet6_dev = type { i32 }
%struct.sk_buff = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.mld_msg = type { i32, i32, i32 }
%struct.flowi = type { i32 }
%struct.dst_entry = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@IPV6_TLV_ROUTERALERT = common dso_local global i32 0, align 4
@IPV6_TLV_PADN = common dso_local global i32 0, align 4
@ICMPV6_MGM_REDUCTION = common dso_local global i32 0, align 4
@in6addr_linklocal_allrouters = common dso_local global %struct.in6_addr zeroinitializer, align 4
@IPSTATS_MIB_OUT = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTDISCARDS = common dso_local global i32 0, align 4
@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global %struct.in6_addr zeroinitializer, align 4
@NEXTHDR_HOP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@dst_output = common dso_local global i32 0, align 4
@ICMP6_MIB_OUTMSGS = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTMCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.in6_addr*, %struct.net_device*, i32)* @igmp6_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igmp6_send(%struct.in6_addr* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.inet6_dev*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.mld_msg*, align 8
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca %struct.in6_addr*, align 8
  %14 = alloca %struct.in6_addr, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [8 x i32], align 16
  %20 = alloca %struct.flowi, align 4
  %21 = alloca %struct.dst_entry*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call %struct.net* @dev_net(%struct.net_device* %22)
  store %struct.net* %23, %struct.net** %7, align 8
  %24 = load %struct.net*, %struct.net** %7, align 8
  %25 = getelementptr inbounds %struct.net, %struct.net* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.sock*, %struct.sock** %26, align 8
  store %struct.sock* %27, %struct.sock** %8, align 8
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0
  %29 = load i32, i32* @IPPROTO_ICMPV6, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* @IPV6_TLV_ROUTERALERT, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 2, i32* %33, align 4
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* @IPV6_TLV_PADN, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ICMPV6_MGM_REDUCTION, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  store %struct.in6_addr* @in6addr_linklocal_allrouters, %struct.in6_addr** %12, align 8
  br label %45

43:                                               ; preds = %3
  %44 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  store %struct.in6_addr* %44, %struct.in6_addr** %12, align 8
  br label %45

45:                                               ; preds = %43, %42
  store i32 8, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, 32
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 4, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %18, align 4
  %54 = call i32 (...) @rcu_read_lock()
  %55 = load %struct.net*, %struct.net** %7, align 8
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %56)
  %58 = load i32, i32* @IPSTATS_MIB_OUT, align 4
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @IP6_UPD_PO_STATS(%struct.net* %55, %struct.inet6_dev* %57, i32 %58, i32 %59)
  %61 = call i32 (...) @rcu_read_unlock()
  %62 = load %struct.sock*, %struct.sock** %8, align 8
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = call i64 @LL_ALLOCATED_SPACE(%struct.net_device* %63)
  %65 = load i32, i32* %18, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %62, i64 %67, i32 1, i32* %15)
  store %struct.sk_buff* %68, %struct.sk_buff** %10, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %70 = icmp eq %struct.sk_buff* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %45
  %72 = call i32 (...) @rcu_read_lock()
  %73 = load %struct.net*, %struct.net** %7, align 8
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %74)
  %76 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %77 = call i32 @IP6_INC_STATS(%struct.net* %73, %struct.inet6_dev* %75, i32 %76)
  %78 = call i32 (...) @rcu_read_unlock()
  br label %208

79:                                               ; preds = %45
  %80 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = call i32 @LL_RESERVED_SPACE(%struct.net_device* %81)
  %83 = call i32 @skb_reserve(%struct.sk_buff* %80, i32 %82)
  %84 = load %struct.net_device*, %struct.net_device** %5, align 8
  %85 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %86 = call i64 @ipv6_get_lladdr(%struct.net_device* %84, %struct.in6_addr* %14, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  store %struct.in6_addr* @in6addr_any, %struct.in6_addr** %13, align 8
  br label %90

89:                                               ; preds = %79
  store %struct.in6_addr* %14, %struct.in6_addr** %13, align 8
  br label %90

90:                                               ; preds = %89, %88
  %91 = load %struct.sock*, %struct.sock** %8, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %93 = load %struct.net_device*, %struct.net_device** %5, align 8
  %94 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %95 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %96 = load i32, i32* @NEXTHDR_HOP, align 4
  %97 = load i32, i32* %17, align 4
  %98 = call i32 @ip6_nd_hdr(%struct.sock* %91, %struct.sk_buff* %92, %struct.net_device* %93, %struct.in6_addr* %94, %struct.in6_addr* %95, i32 %96, i32 %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %100 = call i64 @skb_put(%struct.sk_buff* %99, i32 32)
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0
  %102 = call i32 @memcpy(i64 %100, i32* %101, i32 32)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %104 = call i64 @skb_put(%struct.sk_buff* %103, i32 12)
  %105 = inttoptr i64 %104 to %struct.mld_msg*
  store %struct.mld_msg* %105, %struct.mld_msg** %11, align 8
  %106 = load %struct.mld_msg*, %struct.mld_msg** %11, align 8
  %107 = call i32 @memset(%struct.mld_msg* %106, i32 0, i32 12)
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.mld_msg*, %struct.mld_msg** %11, align 8
  %110 = getelementptr inbounds %struct.mld_msg, %struct.mld_msg* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.mld_msg*, %struct.mld_msg** %11, align 8
  %112 = getelementptr inbounds %struct.mld_msg, %struct.mld_msg* %111, i32 0, i32 2
  %113 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %114 = call i32 @ipv6_addr_copy(i32* %112, %struct.in6_addr* %113)
  %115 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %116 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %119 = load %struct.mld_msg*, %struct.mld_msg** %11, align 8
  %120 = load i32, i32* %16, align 4
  %121 = call i32 @csum_partial(%struct.mld_msg* %119, i32 %120, i32 0)
  %122 = call i32 @csum_ipv6_magic(%struct.in6_addr* %115, %struct.in6_addr* %116, i32 %117, i32 %118, i32 %121)
  %123 = load %struct.mld_msg*, %struct.mld_msg** %11, align 8
  %124 = getelementptr inbounds %struct.mld_msg, %struct.mld_msg* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = call %struct.inet6_dev* @in6_dev_get(%struct.TYPE_8__* %127)
  store %struct.inet6_dev* %128, %struct.inet6_dev** %9, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 0
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %133 = call %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff* %132)
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = call %struct.dst_entry* @icmp6_dst_alloc(%struct.TYPE_8__* %131, i32* null, i32* %134)
  store %struct.dst_entry* %135, %struct.dst_entry** %21, align 8
  %136 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %137 = icmp ne %struct.dst_entry* %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %90
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %15, align 4
  br label %205

141:                                              ; preds = %90
  %142 = load %struct.sock*, %struct.sock** %8, align 8
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %145 = call %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff* %144)
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %148 = call %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff* %147)
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 0
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @icmpv6_flow_init(%struct.sock* %142, %struct.flowi* %20, i32 %143, i32* %146, i32* %149, i32 %154)
  %156 = load %struct.net*, %struct.net** %7, align 8
  %157 = call i32 @xfrm_lookup(%struct.net* %156, %struct.dst_entry** %21, %struct.flowi* %20, i32* null, i32 0)
  store i32 %157, i32* %15, align 4
  %158 = load i32, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %141
  br label %205

161:                                              ; preds = %141
  %162 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %163 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %164 = call i32 @skb_dst_set(%struct.sk_buff* %162, %struct.dst_entry* %163)
  %165 = load i32, i32* @PF_INET6, align 4
  %166 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %167 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %168 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %169 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %168, i32 0, i32 0
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = load i32, i32* @dst_output, align 4
  %172 = call i32 @NF_HOOK(i32 %165, i32 %166, %struct.sk_buff* %167, i32* null, %struct.TYPE_8__* %170, i32 %171)
  store i32 %172, i32* %15, align 4
  br label %173

173:                                              ; preds = %205, %161
  %174 = load i32, i32* %15, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %190, label %176

176:                                              ; preds = %173
  %177 = load %struct.net*, %struct.net** %7, align 8
  %178 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @ICMP6MSGOUT_INC_STATS(%struct.net* %177, %struct.inet6_dev* %178, i32 %179)
  %181 = load %struct.net*, %struct.net** %7, align 8
  %182 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %183 = load i32, i32* @ICMP6_MIB_OUTMSGS, align 4
  %184 = call i32 @ICMP6_INC_STATS(%struct.net* %181, %struct.inet6_dev* %182, i32 %183)
  %185 = load %struct.net*, %struct.net** %7, align 8
  %186 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %187 = load i32, i32* @IPSTATS_MIB_OUTMCAST, align 4
  %188 = load i32, i32* %18, align 4
  %189 = call i32 @IP6_UPD_PO_STATS(%struct.net* %185, %struct.inet6_dev* %186, i32 %187, i32 %188)
  br label %195

190:                                              ; preds = %173
  %191 = load %struct.net*, %struct.net** %7, align 8
  %192 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %193 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %194 = call i32 @IP6_INC_STATS(%struct.net* %191, %struct.inet6_dev* %192, i32 %193)
  br label %195

195:                                              ; preds = %190, %176
  %196 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %197 = icmp ne %struct.inet6_dev* %196, null
  %198 = zext i1 %197 to i32
  %199 = call i64 @likely(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %195
  %202 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %203 = call i32 @in6_dev_put(%struct.inet6_dev* %202)
  br label %204

204:                                              ; preds = %201, %195
  br label %208

205:                                              ; preds = %160, %138
  %206 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %207 = call i32 @kfree_skb(%struct.sk_buff* %206)
  br label %173

208:                                              ; preds = %204, %71
  ret void
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @IP6_UPD_PO_STATS(%struct.net*, %struct.inet6_dev*, i32, i32) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i64, i32, i32*) #1

declare dso_local i64 @LL_ALLOCATED_SPACE(%struct.net_device*) #1

declare dso_local i32 @IP6_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local i64 @ipv6_get_lladdr(%struct.net_device*, %struct.in6_addr*, i32) #1

declare dso_local i32 @ip6_nd_hdr(%struct.sock*, %struct.sk_buff*, %struct.net_device*, %struct.in6_addr*, %struct.in6_addr*, i32, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.mld_msg*, i32, i32) #1

declare dso_local i32 @ipv6_addr_copy(i32*, %struct.in6_addr*) #1

declare dso_local i32 @csum_ipv6_magic(%struct.in6_addr*, %struct.in6_addr*, i32, i32, i32) #1

declare dso_local i32 @csum_partial(%struct.mld_msg*, i32, i32) #1

declare dso_local %struct.inet6_dev* @in6_dev_get(%struct.TYPE_8__*) #1

declare dso_local %struct.dst_entry* @icmp6_dst_alloc(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @icmpv6_flow_init(%struct.sock*, %struct.flowi*, i32, i32*, i32*, i32) #1

declare dso_local i32 @xfrm_lookup(%struct.net*, %struct.dst_entry**, %struct.flowi*, i32*, i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.sk_buff*, i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @ICMP6MSGOUT_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @ICMP6_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
