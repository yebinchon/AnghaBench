; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_forward.c_ip_forward.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_forward.c_ip_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i32, i32, i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.rtable = type { i64, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.ip_options = type { i32, i64, i64 }
%struct.TYPE_8__ = type { %struct.ip_options }
%struct.TYPE_6__ = type { i32 }

@XFRM_POLICY_FWD = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i64 0, align 8
@IP_DF = common dso_local global i32 0, align 4
@IPSTATS_MIB_FRAGFAILS = common dso_local global i32 0, align 4
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@RTCF_DOREDIRECT = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@NF_INET_FORWARD = common dso_local global i32 0, align 4
@ip_forward_finish = common dso_local global i32 0, align 4
@ICMP_SR_FAILED = common dso_local global i32 0, align 4
@IPSTATS_MIB_INHDRERRORS = common dso_local global i32 0, align 4
@ICMP_TIME_EXCEEDED = common dso_local global i32 0, align 4
@ICMP_EXC_TTL = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_forward(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.iphdr*, align 8
  %5 = alloca %struct.rtable*, align 8
  %6 = alloca %struct.ip_options*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call %struct.TYPE_8__* @IPCB(%struct.sk_buff* %7)
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store %struct.ip_options* %9, %struct.ip_options** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = call i64 @skb_warn_if_lro(%struct.sk_buff* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %197

14:                                               ; preds = %1
  %15 = load i32, i32* @XFRM_POLICY_FWD, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i32 @xfrm4_policy_check(i32* null, i32 %15, %struct.sk_buff* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %197

20:                                               ; preds = %14
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = call %struct.TYPE_8__* @IPCB(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call i64 @ip_call_ra_chain(%struct.sk_buff* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %32, i32* %2, align 4
  br label %201

33:                                               ; preds = %27, %20
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PACKET_HOST, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %197

40:                                               ; preds = %33
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = call i32 @skb_forward_csum(%struct.sk_buff* %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %43)
  %45 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %185

49:                                               ; preds = %40
  %50 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %51 = call i32 @xfrm4_route_forward(%struct.sk_buff* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  br label %197

54:                                               ; preds = %49
  %55 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %56 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %55)
  store %struct.rtable* %56, %struct.rtable** %5, align 8
  %57 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %58 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load %struct.rtable*, %struct.rtable** %5, align 8
  %63 = getelementptr inbounds %struct.rtable, %struct.rtable* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.rtable*, %struct.rtable** %5, align 8
  %66 = getelementptr inbounds %struct.rtable, %struct.rtable* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %180

70:                                               ; preds = %61, %54
  %71 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.rtable*, %struct.rtable** %5, align 8
  %75 = getelementptr inbounds %struct.rtable, %struct.rtable* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = call i64 @dst_mtu(%struct.TYPE_7__* %76)
  %78 = icmp sgt i64 %73, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %70
  %80 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %81 = call i32 @skb_is_gso(%struct.sk_buff* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %79
  %84 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %85 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %84)
  %86 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IP_DF, align 4
  %89 = call i32 @htons(i32 %88)
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br label %92

92:                                               ; preds = %83, %79, %70
  %93 = phi i1 [ false, %79 ], [ false, %70 ], [ %91, %83 ]
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %92
  %98 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %120, label %102

102:                                              ; preds = %97
  %103 = load %struct.rtable*, %struct.rtable** %5, align 8
  %104 = getelementptr inbounds %struct.rtable, %struct.rtable* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @dev_net(i32 %107)
  %109 = load i32, i32* @IPSTATS_MIB_FRAGFAILS, align 4
  %110 = call i32 @IP_INC_STATS(i32 %108, i32 %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %112 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %113 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %114 = load %struct.rtable*, %struct.rtable** %5, align 8
  %115 = getelementptr inbounds %struct.rtable, %struct.rtable* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = call i64 @dst_mtu(%struct.TYPE_7__* %116)
  %118 = call i32 @htonl(i64 %117)
  %119 = call i32 @icmp_send(%struct.sk_buff* %111, i32 %112, i32 %113, i32 %118)
  br label %197

120:                                              ; preds = %97, %92
  %121 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %122 = load %struct.rtable*, %struct.rtable** %5, align 8
  %123 = getelementptr inbounds %struct.rtable, %struct.rtable* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @LL_RESERVED_SPACE(i32 %126)
  %128 = load %struct.rtable*, %struct.rtable** %5, align 8
  %129 = getelementptr inbounds %struct.rtable, %struct.rtable* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %127, %132
  %134 = call i64 @skb_cow(%struct.sk_buff* %121, i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %120
  br label %197

137:                                              ; preds = %120
  %138 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %139 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %138)
  store %struct.iphdr* %139, %struct.iphdr** %4, align 8
  %140 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %141 = call i32 @ip_decrease_ttl(%struct.iphdr* %140)
  %142 = load %struct.rtable*, %struct.rtable** %5, align 8
  %143 = getelementptr inbounds %struct.rtable, %struct.rtable* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @RTCF_DOREDIRECT, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %137
  %149 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %150 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %148
  %154 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %155 = call i32 @skb_sec_path(%struct.sk_buff* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  %158 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %159 = call i32 @ip_rt_send_redirect(%struct.sk_buff* %158)
  br label %160

160:                                              ; preds = %157, %153, %148, %137
  %161 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %162 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @rt_tos2priority(i32 %163)
  %165 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* @PF_INET, align 4
  %168 = load i32, i32* @NF_INET_FORWARD, align 4
  %169 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.rtable*, %struct.rtable** %5, align 8
  %174 = getelementptr inbounds %struct.rtable, %struct.rtable* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @ip_forward_finish, align 4
  %179 = call i32 @NF_HOOK(i32 %167, i32 %168, %struct.sk_buff* %169, i32 %172, i32 %177, i32 %178)
  store i32 %179, i32* %2, align 4
  br label %201

180:                                              ; preds = %69
  %181 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %182 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %183 = load i32, i32* @ICMP_SR_FAILED, align 4
  %184 = call i32 @icmp_send(%struct.sk_buff* %181, i32 %182, i32 %183, i32 0)
  br label %197

185:                                              ; preds = %48
  %186 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %187 = call %struct.TYPE_6__* @skb_dst(%struct.sk_buff* %186)
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @dev_net(i32 %189)
  %191 = load i32, i32* @IPSTATS_MIB_INHDRERRORS, align 4
  %192 = call i32 @IP_INC_STATS_BH(i32 %190, i32 %191)
  %193 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %194 = load i32, i32* @ICMP_TIME_EXCEEDED, align 4
  %195 = load i32, i32* @ICMP_EXC_TTL, align 4
  %196 = call i32 @icmp_send(%struct.sk_buff* %193, i32 %194, i32 %195, i32 0)
  br label %197

197:                                              ; preds = %185, %180, %136, %102, %53, %39, %19, %13
  %198 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %199 = call i32 @kfree_skb(%struct.sk_buff* %198)
  %200 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %197, %160, %31
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local %struct.TYPE_8__* @IPCB(%struct.sk_buff*) #1

declare dso_local i64 @skb_warn_if_lro(%struct.sk_buff*) #1

declare dso_local i32 @xfrm4_policy_check(i32*, i32, %struct.sk_buff*) #1

declare dso_local i64 @ip_call_ra_chain(%struct.sk_buff*) #1

declare dso_local i32 @skb_forward_csum(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @xfrm4_route_forward(%struct.sk_buff*) #1

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @dst_mtu(%struct.TYPE_7__*) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @IP_INC_STATS(i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i64 @skb_cow(%struct.sk_buff*, i64) #1

declare dso_local i64 @LL_RESERVED_SPACE(i32) #1

declare dso_local i32 @ip_decrease_ttl(%struct.iphdr*) #1

declare dso_local i32 @skb_sec_path(%struct.sk_buff*) #1

declare dso_local i32 @ip_rt_send_redirect(%struct.sk_buff*) #1

declare dso_local i32 @rt_tos2priority(i32) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @IP_INC_STATS_BH(i32, i32) #1

declare dso_local %struct.TYPE_6__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
