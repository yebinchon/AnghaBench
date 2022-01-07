; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_send_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_send_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcp_md5sig_key = type { i32 }
%struct.tcphdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.flowi = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@TCPOLEN_TSTAMP_ALIGNED = common dso_local global i64 0, align 8
@MAX_HEADER = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@TCPOPT_NOP = common dso_local global i32 0, align 4
@TCPOPT_TIMESTAMP = common dso_local global i32 0, align 4
@TCPOLEN_TIMESTAMP = common dso_local global i32 0, align 4
@tcp_time_stamp = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_MIB_OUTSEGS = common dso_local global i32 0, align 4
@TCP_MIB_OUTRSTS = common dso_local global i32 0, align 4
@TCPOLEN_MD5SIG = common dso_local global i32 0, align 4
@TCPOLEN_MD5SIG_ALIGNED = common dso_local global i64 0, align 8
@TCPOPT_MD5SIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, i32, i32, i32, %struct.tcp_md5sig_key*, i32)* @tcp_v6_send_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_v6_send_response(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.tcp_md5sig_key* %5, i32 %6) #0 {
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tcp_md5sig_key*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.tcphdr*, align 8
  %16 = alloca %struct.tcphdr*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca %struct.flowi, align 8
  %19 = alloca %struct.net*, align 8
  %20 = alloca %struct.sock*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.dst_entry*, align 8
  %23 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.tcp_md5sig_key* %5, %struct.tcp_md5sig_key** %13, align 8
  store i32 %6, i32* %14, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %24)
  store %struct.tcphdr* %25, %struct.tcphdr** %15, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = call %struct.TYPE_5__* @skb_dst(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.net* @dev_net(i32 %29)
  store %struct.net* %30, %struct.net** %19, align 8
  %31 = load %struct.net*, %struct.net** %19, align 8
  %32 = getelementptr inbounds %struct.net, %struct.net* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.sock*, %struct.sock** %33, align 8
  store %struct.sock* %34, %struct.sock** %20, align 8
  store i32 72, i32* %21, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %7
  %38 = load i64, i64* @TCPOLEN_TSTAMP_ALIGNED, align 8
  %39 = load i32, i32* %21, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %21, align 4
  br label %43

43:                                               ; preds = %37, %7
  %44 = load i64, i64* @MAX_HEADER, align 8
  %45 = add i64 %44, 4
  %46 = load i32, i32* %21, align 4
  %47 = zext i32 %46 to i64
  %48 = add i64 %45, %47
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call %struct.sk_buff* @alloc_skb(i64 %48, i32 %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %17, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %52 = icmp eq %struct.sk_buff* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %217

54:                                               ; preds = %43
  %55 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %56 = load i64, i64* @MAX_HEADER, align 8
  %57 = add i64 %56, 4
  %58 = load i32, i32* %21, align 4
  %59 = zext i32 %58 to i64
  %60 = add i64 %57, %59
  %61 = call i32 @skb_reserve(%struct.sk_buff* %55, i64 %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %63 = load i32, i32* %21, align 4
  %64 = call i64 @skb_push(%struct.sk_buff* %62, i32 %63)
  %65 = inttoptr i64 %64 to %struct.tcphdr*
  store %struct.tcphdr* %65, %struct.tcphdr** %16, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %67 = call i32 @skb_reset_transport_header(%struct.sk_buff* %66)
  %68 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %69 = call i32 @memset(%struct.tcphdr* %68, i32 0, i32 72)
  %70 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %71 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %74 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %76 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %79 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %21, align 4
  %81 = udiv i32 %80, 4
  %82 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %83 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i8* @htonl(i32 %84)
  %86 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %87 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %86, i32 0, i32 14
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i8* @htonl(i32 %88)
  %90 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %91 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %90, i32 0, i32 13
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %54
  %95 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %96 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  br label %100

100:                                              ; preds = %94, %54
  %101 = phi i1 [ true, %54 ], [ %99, %94 ]
  %102 = zext i1 %101 to i32
  %103 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %104 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %107 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @htons(i32 %108)
  %110 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %111 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %110, i32 0, i32 12
  store i32 %109, i32* %111, align 8
  %112 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %113 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %112, i64 1
  %114 = bitcast %struct.tcphdr* %113 to i32*
  store i32* %114, i32** %23, align 8
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %142

117:                                              ; preds = %100
  %118 = load i32, i32* @TCPOPT_NOP, align 4
  %119 = shl i32 %118, 24
  %120 = load i32, i32* @TCPOPT_NOP, align 4
  %121 = shl i32 %120, 16
  %122 = or i32 %119, %121
  %123 = load i32, i32* @TCPOPT_TIMESTAMP, align 4
  %124 = shl i32 %123, 8
  %125 = or i32 %122, %124
  %126 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %127 = or i32 %125, %126
  %128 = call i8* @htonl(i32 %127)
  %129 = ptrtoint i8* %128 to i32
  %130 = load i32*, i32** %23, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %23, align 8
  store i32 %129, i32* %130, align 4
  %132 = load i32, i32* @tcp_time_stamp, align 4
  %133 = call i8* @htonl(i32 %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = load i32*, i32** %23, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %23, align 8
  store i32 %134, i32* %135, align 4
  %137 = load i32, i32* %12, align 4
  %138 = call i8* @htonl(i32 %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = load i32*, i32** %23, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %23, align 8
  store i32 %139, i32* %140, align 4
  br label %142

142:                                              ; preds = %117, %100
  %143 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %144 = load i32, i32* %21, align 4
  %145 = call i32 @csum_partial(%struct.tcphdr* %143, i32 %144, i32 0)
  %146 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %147 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  %148 = bitcast %struct.flowi* %18 to %struct.tcphdr*
  %149 = call i32 @memset(%struct.tcphdr* %148, i32 0, i32 72)
  %150 = getelementptr inbounds %struct.flowi, %struct.flowi* %18, i32 0, i32 9
  %151 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %152 = call %struct.TYPE_6__* @ipv6_hdr(%struct.sk_buff* %151)
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = call i32 @ipv6_addr_copy(i32* %150, i32* %153)
  %155 = getelementptr inbounds %struct.flowi, %struct.flowi* %18, i32 0, i32 10
  %156 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %157 = call %struct.TYPE_6__* @ipv6_hdr(%struct.sk_buff* %156)
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = call i32 @ipv6_addr_copy(i32* %155, i32* %158)
  %160 = getelementptr inbounds %struct.flowi, %struct.flowi* %18, i32 0, i32 10
  %161 = getelementptr inbounds %struct.flowi, %struct.flowi* %18, i32 0, i32 9
  %162 = load i32, i32* %21, align 4
  %163 = load i32, i32* @IPPROTO_TCP, align 4
  %164 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %165 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @csum_ipv6_magic(i32* %160, i32* %161, i32 %162, i32 %163, i32 %166)
  %168 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %169 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %168, i32 0, i32 11
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* @IPPROTO_TCP, align 4
  %171 = getelementptr inbounds %struct.flowi, %struct.flowi* %18, i32 0, i32 8
  store i32 %170, i32* %171, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %173 = call i32 @inet6_iif(%struct.sk_buff* %172)
  %174 = getelementptr inbounds %struct.flowi, %struct.flowi* %18, i32 0, i32 7
  store i32 %173, i32* %174, align 4
  %175 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %176 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.flowi, %struct.flowi* %18, i32 0, i32 6
  store i32 %177, i32* %178, align 8
  %179 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %180 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds %struct.flowi, %struct.flowi* %18, i32 0, i32 4
  store i32 %181, i32* %182, align 8
  %183 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %184 = bitcast %struct.flowi* %18 to %struct.tcphdr*
  %185 = call i32 @security_skb_classify_flow(%struct.sk_buff* %183, %struct.tcphdr* %184)
  %186 = load %struct.sock*, %struct.sock** %20, align 8
  %187 = bitcast %struct.flowi* %18 to %struct.tcphdr*
  %188 = call i32 @ip6_dst_lookup(%struct.sock* %186, %struct.dst_entry** %22, %struct.tcphdr* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %214, label %190

190:                                              ; preds = %142
  %191 = load %struct.net*, %struct.net** %19, align 8
  %192 = bitcast %struct.flowi* %18 to %struct.tcphdr*
  %193 = call i64 @xfrm_lookup(%struct.net* %191, %struct.dst_entry** %22, %struct.tcphdr* %192, i32* null, i32 0)
  %194 = icmp sge i64 %193, 0
  br i1 %194, label %195, label %213

195:                                              ; preds = %190
  %196 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %197 = load %struct.dst_entry*, %struct.dst_entry** %22, align 8
  %198 = call i32 @skb_dst_set(%struct.sk_buff* %196, %struct.dst_entry* %197)
  %199 = load %struct.sock*, %struct.sock** %20, align 8
  %200 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %201 = bitcast %struct.flowi* %18 to %struct.tcphdr*
  %202 = call i32 @ip6_xmit(%struct.sock* %199, %struct.sk_buff* %200, %struct.tcphdr* %201, i32* null, i32 0)
  %203 = load %struct.net*, %struct.net** %19, align 8
  %204 = load i32, i32* @TCP_MIB_OUTSEGS, align 4
  %205 = call i32 @TCP_INC_STATS_BH(%struct.net* %203, i32 %204)
  %206 = load i32, i32* %14, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %195
  %209 = load %struct.net*, %struct.net** %19, align 8
  %210 = load i32, i32* @TCP_MIB_OUTRSTS, align 4
  %211 = call i32 @TCP_INC_STATS_BH(%struct.net* %209, i32 %210)
  br label %212

212:                                              ; preds = %208, %195
  br label %217

213:                                              ; preds = %190
  br label %214

214:                                              ; preds = %213, %142
  %215 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %216 = call i32 @kfree_skb(%struct.sk_buff* %215)
  br label %217

217:                                              ; preds = %214, %212, %53
  ret void
}

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.TYPE_5__* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.tcphdr*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @csum_partial(%struct.tcphdr*, i32, i32) #1

declare dso_local i32 @ipv6_addr_copy(i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @csum_ipv6_magic(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @inet6_iif(%struct.sk_buff*) #1

declare dso_local i32 @security_skb_classify_flow(%struct.sk_buff*, %struct.tcphdr*) #1

declare dso_local i32 @ip6_dst_lookup(%struct.sock*, %struct.dst_entry**, %struct.tcphdr*) #1

declare dso_local i64 @xfrm_lookup(%struct.net*, %struct.dst_entry**, %struct.tcphdr*, i32*, i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @ip6_xmit(%struct.sock*, %struct.sk_buff*, %struct.tcphdr*, i32*, i32) #1

declare dso_local i32 @TCP_INC_STATS_BH(%struct.net*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
