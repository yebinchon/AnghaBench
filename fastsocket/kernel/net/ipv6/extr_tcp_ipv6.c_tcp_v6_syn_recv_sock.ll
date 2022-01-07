; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_syn_recv_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_syn_recv_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.request_sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.inet6_request_sock = type { i32*, i32, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.ipv6_pinfo = type { %struct.ipv6_txoptions*, %struct.in6_addr, i32, i8*, i32*, %struct.TYPE_8__, i32*, %struct.in6_addr, %struct.in6_addr }
%struct.ipv6_txoptions = type { i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.tcp6_sock = type { i32 }
%struct.inet_sock = type { i32, i32, i32, i32*, i32* }
%struct.tcp_sock = type { i32, i32, i32* }
%struct.flowi = type { %struct.in6_addr, i32, i32, i32, %struct.in6_addr, i32 }
%struct.rt0_hdr = type { %struct.in6_addr* }
%struct.TYPE_13__ = type { i64, i32, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ipv6_mapped = common dso_local global i32 0, align 4
@tcp_v4_do_rcv = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@RTAX_ADVMSS = common dso_local global i32 0, align 4
@tcp_time_stamp = common dso_local global i64 0, align 8
@LOOPBACK4_IPV6 = common dso_local global i32 0, align 4
@LINUX_MIB_LISTENOVERFLOWS = common dso_local global i32 0, align 4
@LINUX_MIB_LISTENDROPS = common dso_local global i32 0, align 4
@tcp_sock_ipv6_mapped_specific = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, %struct.dst_entry*)* @tcp_v6_syn_recv_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @tcp_v6_syn_recv_sock(%struct.sock* %0, %struct.sk_buff* %1, %struct.request_sock* %2, %struct.dst_entry* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.request_sock*, align 8
  %9 = alloca %struct.dst_entry*, align 8
  %10 = alloca %struct.inet6_request_sock*, align 8
  %11 = alloca %struct.ipv6_pinfo*, align 8
  %12 = alloca %struct.ipv6_pinfo*, align 8
  %13 = alloca %struct.tcp6_sock*, align 8
  %14 = alloca %struct.inet_sock*, align 8
  %15 = alloca %struct.tcp_sock*, align 8
  %16 = alloca %struct.sock*, align 8
  %17 = alloca %struct.ipv6_txoptions*, align 8
  %18 = alloca %struct.in6_addr*, align 8
  %19 = alloca %struct.in6_addr, align 4
  %20 = alloca %struct.flowi, align 4
  %21 = alloca %struct.rt0_hdr*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.request_sock* %2, %struct.request_sock** %8, align 8
  store %struct.dst_entry* %3, %struct.dst_entry** %9, align 8
  %22 = load %struct.sock*, %struct.sock** %6, align 8
  %23 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %22)
  store %struct.ipv6_pinfo* %23, %struct.ipv6_pinfo** %12, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @ETH_P_IP, align 4
  %28 = call i64 @htons(i32 %27)
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %30, label %108

30:                                               ; preds = %4
  %31 = load %struct.sock*, %struct.sock** %6, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %34 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %35 = call %struct.sock* @tcp_v4_syn_recv_sock(%struct.sock* %31, %struct.sk_buff* %32, %struct.request_sock* %33, %struct.dst_entry* %34)
  store %struct.sock* %35, %struct.sock** %16, align 8
  %36 = load %struct.sock*, %struct.sock** %16, align 8
  %37 = icmp eq %struct.sock* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %425

39:                                               ; preds = %30
  %40 = load %struct.sock*, %struct.sock** %16, align 8
  %41 = bitcast %struct.sock* %40 to %struct.tcp6_sock*
  store %struct.tcp6_sock* %41, %struct.tcp6_sock** %13, align 8
  %42 = load %struct.tcp6_sock*, %struct.tcp6_sock** %13, align 8
  %43 = getelementptr inbounds %struct.tcp6_sock, %struct.tcp6_sock* %42, i32 0, i32 0
  %44 = load %struct.sock*, %struct.sock** %16, align 8
  %45 = call %struct.inet_sock* @inet_sk(%struct.sock* %44)
  %46 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %45, i32 0, i32 4
  store i32* %43, i32** %46, align 8
  %47 = load %struct.sock*, %struct.sock** %16, align 8
  %48 = call %struct.inet_sock* @inet_sk(%struct.sock* %47)
  store %struct.inet_sock* %48, %struct.inet_sock** %14, align 8
  %49 = load %struct.sock*, %struct.sock** %16, align 8
  %50 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %49)
  store %struct.ipv6_pinfo* %50, %struct.ipv6_pinfo** %11, align 8
  %51 = load %struct.sock*, %struct.sock** %16, align 8
  %52 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %51)
  store %struct.tcp_sock* %52, %struct.tcp_sock** %15, align 8
  %53 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %54 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %12, align 8
  %55 = call i32 @memcpy(%struct.ipv6_pinfo* %53, %struct.ipv6_pinfo* %54, i32 56)
  %56 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %57 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %56, i32 0, i32 1
  %58 = call i32 @htonl(i32 65535)
  %59 = load %struct.inet_sock*, %struct.inet_sock** %14, align 8
  %60 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ipv6_addr_set(%struct.in6_addr* %57, i32 0, i32 0, i32 %58, i32 %61)
  %63 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %64 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %63, i32 0, i32 8
  %65 = call i32 @htonl(i32 65535)
  %66 = load %struct.inet_sock*, %struct.inet_sock** %14, align 8
  %67 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ipv6_addr_set(%struct.in6_addr* %64, i32 0, i32 0, i32 %65, i32 %68)
  %70 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %71 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %70, i32 0, i32 7
  %72 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %73 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %72, i32 0, i32 8
  %74 = call i32 @ipv6_addr_copy(%struct.in6_addr* %71, %struct.in6_addr* %73)
  %75 = load %struct.sock*, %struct.sock** %16, align 8
  %76 = call %struct.TYPE_13__* @inet_csk(%struct.sock* %75)
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  store i32* @ipv6_mapped, i32** %77, align 8
  %78 = load i32, i32* @tcp_v4_do_rcv, align 4
  %79 = load %struct.sock*, %struct.sock** %16, align 8
  %80 = getelementptr inbounds %struct.sock, %struct.sock* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %82 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %81, i32 0, i32 4
  store i32* null, i32** %82, align 8
  %83 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %84 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %83, i32 0, i32 0
  store %struct.ipv6_txoptions* null, %struct.ipv6_txoptions** %84, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = call i8* @inet6_iif(%struct.sk_buff* %85)
  %87 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %88 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %90 = call %struct.TYPE_11__* @ipv6_hdr(%struct.sk_buff* %89)
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %94 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %96 = call %struct.TYPE_11__* @ipv6_hdr(%struct.sk_buff* %95)
  %97 = call i8* @ipv6_tclass(%struct.TYPE_11__* %96)
  %98 = load %struct.sock*, %struct.sock** %16, align 8
  %99 = call %struct.TYPE_10__* @sk_extended(%struct.sock* %98)
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  store i8* %97, i8** %100, align 8
  %101 = load %struct.sock*, %struct.sock** %16, align 8
  %102 = load %struct.sock*, %struct.sock** %16, align 8
  %103 = call %struct.TYPE_13__* @inet_csk(%struct.sock* %102)
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @tcp_sync_mss(%struct.sock* %101, i32 %105)
  %107 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %107, %struct.sock** %5, align 8
  br label %425

108:                                              ; preds = %4
  %109 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %110 = call %struct.inet6_request_sock* @inet6_rsk(%struct.request_sock* %109)
  store %struct.inet6_request_sock* %110, %struct.inet6_request_sock** %10, align 8
  %111 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %12, align 8
  %112 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %111, i32 0, i32 0
  %113 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %112, align 8
  store %struct.ipv6_txoptions* %113, %struct.ipv6_txoptions** %17, align 8
  %114 = load %struct.sock*, %struct.sock** %6, align 8
  %115 = call i64 @sk_acceptq_is_full(%struct.sock* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  br label %396

118:                                              ; preds = %108
  %119 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %120 = icmp eq %struct.dst_entry* %119, null
  br i1 %120, label %121, label %188

121:                                              ; preds = %118
  store %struct.in6_addr* null, %struct.in6_addr** %18, align 8
  %122 = call i32 @memset(%struct.flowi* %20, i32 0, i32 24)
  %123 = load i32, i32* @IPPROTO_TCP, align 4
  %124 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 5
  store i32 %123, i32* %124, align 4
  %125 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 0
  %126 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %10, align 8
  %127 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %126, i32 0, i32 3
  %128 = call i32 @ipv6_addr_copy(%struct.in6_addr* %125, %struct.in6_addr* %127)
  %129 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %130 = icmp ne %struct.ipv6_txoptions* %129, null
  br i1 %130, label %131, label %148

131:                                              ; preds = %121
  %132 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %133 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %131
  %137 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %138 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to %struct.rt0_hdr*
  store %struct.rt0_hdr* %140, %struct.rt0_hdr** %21, align 8
  %141 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 0
  %142 = call i32 @ipv6_addr_copy(%struct.in6_addr* %19, %struct.in6_addr* %141)
  %143 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 0
  %144 = load %struct.rt0_hdr*, %struct.rt0_hdr** %21, align 8
  %145 = getelementptr inbounds %struct.rt0_hdr, %struct.rt0_hdr* %144, i32 0, i32 0
  %146 = load %struct.in6_addr*, %struct.in6_addr** %145, align 8
  %147 = call i32 @ipv6_addr_copy(%struct.in6_addr* %143, %struct.in6_addr* %146)
  store %struct.in6_addr* %19, %struct.in6_addr** %18, align 8
  br label %148

148:                                              ; preds = %136, %131, %121
  %149 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 4
  %150 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %10, align 8
  %151 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %150, i32 0, i32 2
  %152 = call i32 @ipv6_addr_copy(%struct.in6_addr* %149, %struct.in6_addr* %151)
  %153 = load %struct.sock*, %struct.sock** %6, align 8
  %154 = getelementptr inbounds %struct.sock, %struct.sock* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 3
  store i32 %155, i32* %156, align 4
  %157 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %158 = call %struct.TYPE_12__* @inet_rsk(%struct.request_sock* %157)
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 2
  store i32 %160, i32* %161, align 4
  %162 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %163 = call %struct.TYPE_12__* @inet_rsk(%struct.request_sock* %162)
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 1
  store i32 %165, i32* %166, align 4
  %167 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %168 = call i32 @security_req_classify_flow(%struct.request_sock* %167, %struct.flowi* %20)
  %169 = load %struct.sock*, %struct.sock** %6, align 8
  %170 = call i64 @ip6_dst_lookup(%struct.sock* %169, %struct.dst_entry** %9, %struct.flowi* %20)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %148
  br label %420

173:                                              ; preds = %148
  %174 = load %struct.in6_addr*, %struct.in6_addr** %18, align 8
  %175 = icmp ne %struct.in6_addr* %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 0
  %178 = load %struct.in6_addr*, %struct.in6_addr** %18, align 8
  %179 = call i32 @ipv6_addr_copy(%struct.in6_addr* %177, %struct.in6_addr* %178)
  br label %180

180:                                              ; preds = %176, %173
  %181 = load %struct.sock*, %struct.sock** %6, align 8
  %182 = call i32 @sock_net(%struct.sock* %181)
  %183 = load %struct.sock*, %struct.sock** %6, align 8
  %184 = call i64 @xfrm_lookup(i32 %182, %struct.dst_entry** %9, %struct.flowi* %20, %struct.sock* %183, i32 0)
  %185 = icmp slt i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  br label %420

187:                                              ; preds = %180
  br label %188

188:                                              ; preds = %187, %118
  %189 = load %struct.sock*, %struct.sock** %6, align 8
  %190 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %191 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %192 = call %struct.sock* @tcp_create_openreq_child(%struct.sock* %189, %struct.request_sock* %190, %struct.sk_buff* %191)
  store %struct.sock* %192, %struct.sock** %16, align 8
  %193 = load %struct.sock*, %struct.sock** %16, align 8
  %194 = icmp eq %struct.sock* %193, null
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  br label %401

196:                                              ; preds = %188
  %197 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %198 = load %struct.sock*, %struct.sock** %16, align 8
  %199 = getelementptr inbounds %struct.sock, %struct.sock* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load %struct.sock*, %struct.sock** %16, align 8
  %201 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %202 = call i32 @__ip6_dst_store(%struct.sock* %200, %struct.dst_entry* %201, i32* null, i32* null)
  %203 = load %struct.sock*, %struct.sock** %16, align 8
  %204 = bitcast %struct.sock* %203 to %struct.tcp6_sock*
  store %struct.tcp6_sock* %204, %struct.tcp6_sock** %13, align 8
  %205 = load %struct.tcp6_sock*, %struct.tcp6_sock** %13, align 8
  %206 = getelementptr inbounds %struct.tcp6_sock, %struct.tcp6_sock* %205, i32 0, i32 0
  %207 = load %struct.sock*, %struct.sock** %16, align 8
  %208 = call %struct.inet_sock* @inet_sk(%struct.sock* %207)
  %209 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %208, i32 0, i32 4
  store i32* %206, i32** %209, align 8
  %210 = load %struct.sock*, %struct.sock** %16, align 8
  %211 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %210)
  store %struct.tcp_sock* %211, %struct.tcp_sock** %15, align 8
  %212 = load %struct.sock*, %struct.sock** %16, align 8
  %213 = call %struct.inet_sock* @inet_sk(%struct.sock* %212)
  store %struct.inet_sock* %213, %struct.inet_sock** %14, align 8
  %214 = load %struct.sock*, %struct.sock** %16, align 8
  %215 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %214)
  store %struct.ipv6_pinfo* %215, %struct.ipv6_pinfo** %11, align 8
  %216 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %217 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %12, align 8
  %218 = call i32 @memcpy(%struct.ipv6_pinfo* %216, %struct.ipv6_pinfo* %217, i32 56)
  %219 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %220 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %219, i32 0, i32 1
  %221 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %10, align 8
  %222 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %221, i32 0, i32 3
  %223 = call i32 @ipv6_addr_copy(%struct.in6_addr* %220, %struct.in6_addr* %222)
  %224 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %225 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %224, i32 0, i32 8
  %226 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %10, align 8
  %227 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %226, i32 0, i32 2
  %228 = call i32 @ipv6_addr_copy(%struct.in6_addr* %225, %struct.in6_addr* %227)
  %229 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %230 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %229, i32 0, i32 7
  %231 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %10, align 8
  %232 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %231, i32 0, i32 2
  %233 = call i32 @ipv6_addr_copy(%struct.in6_addr* %230, %struct.in6_addr* %232)
  %234 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %10, align 8
  %235 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.sock*, %struct.sock** %16, align 8
  %238 = getelementptr inbounds %struct.sock, %struct.sock* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 4
  %239 = load %struct.inet_sock*, %struct.inet_sock** %14, align 8
  %240 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %239, i32 0, i32 3
  store i32* null, i32** %240, align 8
  %241 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %242 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %241, i32 0, i32 6
  store i32* null, i32** %242, align 8
  %243 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %12, align 8
  %244 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %243, i32 0, i32 5
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %248 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %247, i32 0, i32 5
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  store i32 %246, i32* %249, align 8
  %250 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %251 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %250, i32 0, i32 4
  store i32* null, i32** %251, align 8
  %252 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %10, align 8
  %253 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = icmp ne i32* %254, null
  br i1 %255, label %256, label %281

256:                                              ; preds = %196
  %257 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %10, align 8
  %258 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* @GFP_ATOMIC, align 4
  %261 = call i32* @skb_clone(i32* %259, i32 %260)
  %262 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %263 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %262, i32 0, i32 4
  store i32* %261, i32** %263, align 8
  %264 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %10, align 8
  %265 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = call i32 @kfree_skb(i32* %266)
  %268 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %10, align 8
  %269 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %268, i32 0, i32 0
  store i32* null, i32** %269, align 8
  %270 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %271 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %270, i32 0, i32 4
  %272 = load i32*, i32** %271, align 8
  %273 = icmp ne i32* %272, null
  br i1 %273, label %274, label %280

274:                                              ; preds = %256
  %275 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %276 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %275, i32 0, i32 4
  %277 = load i32*, i32** %276, align 8
  %278 = load %struct.sock*, %struct.sock** %16, align 8
  %279 = call i32 @skb_set_owner_r(i32* %277, %struct.sock* %278)
  br label %280

280:                                              ; preds = %274, %256
  br label %281

281:                                              ; preds = %280, %196
  %282 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %283 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %282, i32 0, i32 0
  store %struct.ipv6_txoptions* null, %struct.ipv6_txoptions** %283, align 8
  %284 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %285 = call i8* @inet6_iif(%struct.sk_buff* %284)
  %286 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %287 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %286, i32 0, i32 3
  store i8* %285, i8** %287, align 8
  %288 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %289 = call %struct.TYPE_11__* @ipv6_hdr(%struct.sk_buff* %288)
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %293 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %292, i32 0, i32 2
  store i32 %291, i32* %293, align 4
  %294 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %295 = call %struct.TYPE_11__* @ipv6_hdr(%struct.sk_buff* %294)
  %296 = call i8* @ipv6_tclass(%struct.TYPE_11__* %295)
  %297 = load %struct.sock*, %struct.sock** %16, align 8
  %298 = call %struct.TYPE_10__* @sk_extended(%struct.sock* %297)
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 0
  store i8* %296, i8** %299, align 8
  %300 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %301 = icmp ne %struct.ipv6_txoptions* %300, null
  br i1 %301, label %302, label %321

302:                                              ; preds = %281
  %303 = load %struct.sock*, %struct.sock** %16, align 8
  %304 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %305 = call %struct.ipv6_txoptions* @ipv6_dup_options(%struct.sock* %303, %struct.ipv6_txoptions* %304)
  %306 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %307 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %306, i32 0, i32 0
  store %struct.ipv6_txoptions* %305, %struct.ipv6_txoptions** %307, align 8
  %308 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %309 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %12, align 8
  %310 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %309, i32 0, i32 0
  %311 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %310, align 8
  %312 = icmp ne %struct.ipv6_txoptions* %308, %311
  br i1 %312, label %313, label %320

313:                                              ; preds = %302
  %314 = load %struct.sock*, %struct.sock** %6, align 8
  %315 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %316 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %317 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @sock_kfree_s(%struct.sock* %314, %struct.ipv6_txoptions* %315, i32 %318)
  br label %320

320:                                              ; preds = %313, %302
  br label %321

321:                                              ; preds = %320, %281
  %322 = load %struct.sock*, %struct.sock** %16, align 8
  %323 = call %struct.TYPE_13__* @inet_csk(%struct.sock* %322)
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 0
  store i64 0, i64* %324, align 8
  %325 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %326 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %325, i32 0, i32 0
  %327 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %326, align 8
  %328 = icmp ne %struct.ipv6_txoptions* %327, null
  br i1 %328, label %329, label %344

329:                                              ; preds = %321
  %330 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %331 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %330, i32 0, i32 0
  %332 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %331, align 8
  %333 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %332, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %336 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %335, i32 0, i32 0
  %337 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %336, align 8
  %338 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = add nsw i64 %334, %339
  %341 = load %struct.sock*, %struct.sock** %16, align 8
  %342 = call %struct.TYPE_13__* @inet_csk(%struct.sock* %341)
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 0
  store i64 %340, i64* %343, align 8
  br label %344

344:                                              ; preds = %329, %321
  %345 = load %struct.sock*, %struct.sock** %16, align 8
  %346 = call i32 @tcp_mtup_init(%struct.sock* %345)
  %347 = load %struct.sock*, %struct.sock** %16, align 8
  %348 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %349 = call i32 @dst_mtu(%struct.dst_entry* %348)
  %350 = call i32 @tcp_sync_mss(%struct.sock* %347, i32 %349)
  %351 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %352 = load i32, i32* @RTAX_ADVMSS, align 4
  %353 = call i32 @dst_metric(%struct.dst_entry* %351, i32 %352)
  %354 = load %struct.tcp_sock*, %struct.tcp_sock** %15, align 8
  %355 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %354, i32 0, i32 1
  store i32 %353, i32* %355, align 4
  %356 = load %struct.sock*, %struct.sock** %16, align 8
  %357 = call i32 @tcp_initialize_rcv_mss(%struct.sock* %356)
  %358 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %359 = call %struct.TYPE_9__* @tcp_rsk(%struct.request_sock* %358)
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %372

363:                                              ; preds = %344
  %364 = load %struct.sock*, %struct.sock** %16, align 8
  %365 = load i64, i64* @tcp_time_stamp, align 8
  %366 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %367 = call %struct.TYPE_9__* @tcp_rsk(%struct.request_sock* %366)
  %368 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = sub nsw i64 %365, %369
  %371 = call i32 @tcp_valid_rtt_meas(%struct.sock* %364, i64 %370)
  br label %372

372:                                              ; preds = %363, %344
  %373 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %374 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.tcp_sock*, %struct.tcp_sock** %15, align 8
  %377 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %376, i32 0, i32 0
  store i32 %375, i32* %377, align 8
  %378 = load i32, i32* @LOOPBACK4_IPV6, align 4
  %379 = load %struct.inet_sock*, %struct.inet_sock** %14, align 8
  %380 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %379, i32 0, i32 0
  store i32 %378, i32* %380, align 8
  %381 = load %struct.inet_sock*, %struct.inet_sock** %14, align 8
  %382 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %381, i32 0, i32 1
  store i32 %378, i32* %382, align 4
  %383 = load %struct.inet_sock*, %struct.inet_sock** %14, align 8
  %384 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %383, i32 0, i32 2
  store i32 %378, i32* %384, align 8
  %385 = load %struct.sock*, %struct.sock** %6, align 8
  %386 = load %struct.sock*, %struct.sock** %16, align 8
  %387 = call i64 @__inet_inherit_port(%struct.sock* %385, %struct.sock* %386)
  %388 = icmp slt i64 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %372
  %390 = load %struct.sock*, %struct.sock** %16, align 8
  %391 = call i32 @sock_put(%struct.sock* %390)
  br label %420

392:                                              ; preds = %372
  %393 = load %struct.sock*, %struct.sock** %16, align 8
  %394 = call i32 @__inet6_hash(%struct.sock* %393)
  %395 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %395, %struct.sock** %5, align 8
  br label %425

396:                                              ; preds = %117
  %397 = load %struct.sock*, %struct.sock** %6, align 8
  %398 = call i32 @sock_net(%struct.sock* %397)
  %399 = load i32, i32* @LINUX_MIB_LISTENOVERFLOWS, align 4
  %400 = call i32 @NET_INC_STATS_BH(i32 %398, i32 %399)
  br label %401

401:                                              ; preds = %396, %195
  %402 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %403 = icmp ne %struct.ipv6_txoptions* %402, null
  br i1 %403, label %404, label %417

404:                                              ; preds = %401
  %405 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %406 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %12, align 8
  %407 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %406, i32 0, i32 0
  %408 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %407, align 8
  %409 = icmp ne %struct.ipv6_txoptions* %405, %408
  br i1 %409, label %410, label %417

410:                                              ; preds = %404
  %411 = load %struct.sock*, %struct.sock** %6, align 8
  %412 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %413 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %414 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = call i32 @sock_kfree_s(%struct.sock* %411, %struct.ipv6_txoptions* %412, i32 %415)
  br label %417

417:                                              ; preds = %410, %404, %401
  %418 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %419 = call i32 @dst_release(%struct.dst_entry* %418)
  br label %420

420:                                              ; preds = %417, %389, %186, %172
  %421 = load %struct.sock*, %struct.sock** %6, align 8
  %422 = call i32 @sock_net(%struct.sock* %421)
  %423 = load i32, i32* @LINUX_MIB_LISTENDROPS, align 4
  %424 = call i32 @NET_INC_STATS_BH(i32 %422, i32 %423)
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %425

425:                                              ; preds = %420, %392, %39, %38
  %426 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %426
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.sock* @tcp_v4_syn_recv_sock(%struct.sock*, %struct.sk_buff*, %struct.request_sock*, %struct.dst_entry*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @memcpy(%struct.ipv6_pinfo*, %struct.ipv6_pinfo*, i32) #1

declare dso_local i32 @ipv6_addr_set(%struct.in6_addr*, i32, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ipv6_addr_copy(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local %struct.TYPE_13__* @inet_csk(%struct.sock*) #1

declare dso_local i8* @inet6_iif(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_11__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i8* @ipv6_tclass(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @sk_extended(%struct.sock*) #1

declare dso_local i32 @tcp_sync_mss(%struct.sock*, i32) #1

declare dso_local %struct.inet6_request_sock* @inet6_rsk(%struct.request_sock*) #1

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @inet_rsk(%struct.request_sock*) #1

declare dso_local i32 @security_req_classify_flow(%struct.request_sock*, %struct.flowi*) #1

declare dso_local i64 @ip6_dst_lookup(%struct.sock*, %struct.dst_entry**, %struct.flowi*) #1

declare dso_local i64 @xfrm_lookup(i32, %struct.dst_entry**, %struct.flowi*, %struct.sock*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.sock* @tcp_create_openreq_child(%struct.sock*, %struct.request_sock*, %struct.sk_buff*) #1

declare dso_local i32 @__ip6_dst_store(%struct.sock*, %struct.dst_entry*, i32*, i32*) #1

declare dso_local i32* @skb_clone(i32*, i32) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @skb_set_owner_r(i32*, %struct.sock*) #1

declare dso_local %struct.ipv6_txoptions* @ipv6_dup_options(%struct.sock*, %struct.ipv6_txoptions*) #1

declare dso_local i32 @sock_kfree_s(%struct.sock*, %struct.ipv6_txoptions*, i32) #1

declare dso_local i32 @tcp_mtup_init(%struct.sock*) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i32 @dst_metric(%struct.dst_entry*, i32) #1

declare dso_local i32 @tcp_initialize_rcv_mss(%struct.sock*) #1

declare dso_local %struct.TYPE_9__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i32 @tcp_valid_rtt_meas(%struct.sock*, i64) #1

declare dso_local i64 @__inet_inherit_port(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @__inet6_hash(%struct.sock*) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
