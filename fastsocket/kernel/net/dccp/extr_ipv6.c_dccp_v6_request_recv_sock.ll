; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv6.c_dccp_v6_request_recv_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv6.c_dccp_v6_request_recv_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.request_sock = type { i32 }
%struct.dst_entry = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.inet6_request_sock = type { i32*, i32, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.ipv6_pinfo = type { %struct.ipv6_txoptions*, i32, i8*, i32*, %struct.TYPE_6__, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr }
%struct.ipv6_txoptions = type { i32, i64, i64, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.inet_sock = type { i32, i32, i32, i32*, i32* }
%struct.dccp_sock = type { i32 }
%struct.dccp6_sock = type { i32 }
%struct.flowi = type { %struct.in6_addr, i32, i32, i32, %struct.in6_addr, i32 }
%struct.rt0_hdr = type { %struct.in6_addr* }
%struct.TYPE_10__ = type { i64, i32, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@dccp_ipv6_mapped = common dso_local global i32 0, align 4
@dccp_v4_do_rcv = common dso_local global i32 0, align 4
@IPPROTO_DCCP = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@LOOPBACK4_IPV6 = common dso_local global i32 0, align 4
@LINUX_MIB_LISTENOVERFLOWS = common dso_local global i32 0, align 4
@LINUX_MIB_LISTENDROPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, %struct.dst_entry*)* @dccp_v6_request_recv_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @dccp_v6_request_recv_sock(%struct.sock* %0, %struct.sk_buff* %1, %struct.request_sock* %2, %struct.dst_entry* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.request_sock*, align 8
  %9 = alloca %struct.dst_entry*, align 8
  %10 = alloca %struct.inet6_request_sock*, align 8
  %11 = alloca %struct.ipv6_pinfo*, align 8
  %12 = alloca %struct.ipv6_pinfo*, align 8
  %13 = alloca %struct.inet_sock*, align 8
  %14 = alloca %struct.dccp_sock*, align 8
  %15 = alloca %struct.dccp6_sock*, align 8
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
  %22 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %23 = call %struct.inet6_request_sock* @inet6_rsk(%struct.request_sock* %22)
  store %struct.inet6_request_sock* %23, %struct.inet6_request_sock** %10, align 8
  %24 = load %struct.sock*, %struct.sock** %6, align 8
  %25 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %24)
  store %struct.ipv6_pinfo* %25, %struct.ipv6_pinfo** %12, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @ETH_P_IP, align 4
  %30 = call i64 @htons(i32 %29)
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %103

32:                                               ; preds = %4
  %33 = load %struct.sock*, %struct.sock** %6, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %36 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %37 = call %struct.sock* @dccp_v4_request_recv_sock(%struct.sock* %33, %struct.sk_buff* %34, %struct.request_sock* %35, %struct.dst_entry* %36)
  store %struct.sock* %37, %struct.sock** %16, align 8
  %38 = load %struct.sock*, %struct.sock** %16, align 8
  %39 = icmp eq %struct.sock* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %389

41:                                               ; preds = %32
  %42 = load %struct.sock*, %struct.sock** %16, align 8
  %43 = bitcast %struct.sock* %42 to %struct.dccp6_sock*
  store %struct.dccp6_sock* %43, %struct.dccp6_sock** %15, align 8
  %44 = load %struct.sock*, %struct.sock** %16, align 8
  %45 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %44)
  store %struct.dccp_sock* %45, %struct.dccp_sock** %14, align 8
  %46 = load %struct.sock*, %struct.sock** %16, align 8
  %47 = call %struct.inet_sock* @inet_sk(%struct.sock* %46)
  store %struct.inet_sock* %47, %struct.inet_sock** %13, align 8
  %48 = load %struct.dccp6_sock*, %struct.dccp6_sock** %15, align 8
  %49 = getelementptr inbounds %struct.dccp6_sock, %struct.dccp6_sock* %48, i32 0, i32 0
  %50 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %51 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %50, i32 0, i32 4
  store i32* %49, i32** %51, align 8
  %52 = load %struct.sock*, %struct.sock** %16, align 8
  %53 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %52)
  store %struct.ipv6_pinfo* %53, %struct.ipv6_pinfo** %11, align 8
  %54 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %55 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %12, align 8
  %56 = call i32 @memcpy(%struct.ipv6_pinfo* %54, %struct.ipv6_pinfo* %55, i32 48)
  %57 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %58 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %57, i32 0, i32 7
  %59 = call i32 @htonl(i32 65535)
  %60 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %61 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ipv6_addr_set(%struct.in6_addr* %58, i32 0, i32 0, i32 %59, i32 %62)
  %64 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %65 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %64, i32 0, i32 6
  %66 = call i32 @htonl(i32 65535)
  %67 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %68 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ipv6_addr_set(%struct.in6_addr* %65, i32 0, i32 0, i32 %66, i32 %69)
  %71 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %72 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %71, i32 0, i32 5
  %73 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %74 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %73, i32 0, i32 6
  %75 = call i32 @ipv6_addr_copy(%struct.in6_addr* %72, %struct.in6_addr* %74)
  %76 = load %struct.sock*, %struct.sock** %16, align 8
  %77 = call %struct.TYPE_10__* @inet_csk(%struct.sock* %76)
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  store i32* @dccp_ipv6_mapped, i32** %78, align 8
  %79 = load i32, i32* @dccp_v4_do_rcv, align 4
  %80 = load %struct.sock*, %struct.sock** %16, align 8
  %81 = getelementptr inbounds %struct.sock, %struct.sock* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %83 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %82, i32 0, i32 3
  store i32* null, i32** %83, align 8
  %84 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %85 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %84, i32 0, i32 0
  store %struct.ipv6_txoptions* null, %struct.ipv6_txoptions** %85, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %87 = call i8* @inet6_iif(%struct.sk_buff* %86)
  %88 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %89 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = call %struct.TYPE_8__* @ipv6_hdr(%struct.sk_buff* %90)
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %95 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load %struct.sock*, %struct.sock** %16, align 8
  %97 = load %struct.sock*, %struct.sock** %16, align 8
  %98 = call %struct.TYPE_10__* @inet_csk(%struct.sock* %97)
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @dccp_sync_mss(%struct.sock* %96, i32 %100)
  %102 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %102, %struct.sock** %5, align 8
  br label %389

103:                                              ; preds = %4
  %104 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %12, align 8
  %105 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %104, i32 0, i32 0
  %106 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %105, align 8
  store %struct.ipv6_txoptions* %106, %struct.ipv6_txoptions** %17, align 8
  %107 = load %struct.sock*, %struct.sock** %6, align 8
  %108 = call i64 @sk_acceptq_is_full(%struct.sock* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %360

111:                                              ; preds = %103
  %112 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %113 = icmp eq %struct.dst_entry* %112, null
  br i1 %113, label %114, label %181

114:                                              ; preds = %111
  store %struct.in6_addr* null, %struct.in6_addr** %18, align 8
  %115 = call i32 @memset(%struct.flowi* %20, i32 0, i32 24)
  %116 = load i32, i32* @IPPROTO_DCCP, align 4
  %117 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 5
  store i32 %116, i32* %117, align 4
  %118 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 0
  %119 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %10, align 8
  %120 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %119, i32 0, i32 3
  %121 = call i32 @ipv6_addr_copy(%struct.in6_addr* %118, %struct.in6_addr* %120)
  %122 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %123 = icmp ne %struct.ipv6_txoptions* %122, null
  br i1 %123, label %124, label %141

124:                                              ; preds = %114
  %125 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %126 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %141

129:                                              ; preds = %124
  %130 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %131 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = bitcast i32* %132 to %struct.rt0_hdr*
  store %struct.rt0_hdr* %133, %struct.rt0_hdr** %21, align 8
  %134 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 0
  %135 = call i32 @ipv6_addr_copy(%struct.in6_addr* %19, %struct.in6_addr* %134)
  %136 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 0
  %137 = load %struct.rt0_hdr*, %struct.rt0_hdr** %21, align 8
  %138 = getelementptr inbounds %struct.rt0_hdr, %struct.rt0_hdr* %137, i32 0, i32 0
  %139 = load %struct.in6_addr*, %struct.in6_addr** %138, align 8
  %140 = call i32 @ipv6_addr_copy(%struct.in6_addr* %136, %struct.in6_addr* %139)
  store %struct.in6_addr* %19, %struct.in6_addr** %18, align 8
  br label %141

141:                                              ; preds = %129, %124, %114
  %142 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 4
  %143 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %10, align 8
  %144 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %143, i32 0, i32 2
  %145 = call i32 @ipv6_addr_copy(%struct.in6_addr* %142, %struct.in6_addr* %144)
  %146 = load %struct.sock*, %struct.sock** %6, align 8
  %147 = getelementptr inbounds %struct.sock, %struct.sock* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 3
  store i32 %148, i32* %149, align 4
  %150 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %151 = call %struct.TYPE_9__* @inet_rsk(%struct.request_sock* %150)
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 2
  store i32 %153, i32* %154, align 4
  %155 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %156 = call %struct.TYPE_9__* @inet_rsk(%struct.request_sock* %155)
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 1
  store i32 %158, i32* %159, align 4
  %160 = load %struct.sock*, %struct.sock** %6, align 8
  %161 = call i32 @security_sk_classify_flow(%struct.sock* %160, %struct.flowi* %20)
  %162 = load %struct.sock*, %struct.sock** %6, align 8
  %163 = call i64 @ip6_dst_lookup(%struct.sock* %162, %struct.dst_entry** %9, %struct.flowi* %20)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %141
  br label %368

166:                                              ; preds = %141
  %167 = load %struct.in6_addr*, %struct.in6_addr** %18, align 8
  %168 = icmp ne %struct.in6_addr* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 0
  %171 = load %struct.in6_addr*, %struct.in6_addr** %18, align 8
  %172 = call i32 @ipv6_addr_copy(%struct.in6_addr* %170, %struct.in6_addr* %171)
  br label %173

173:                                              ; preds = %169, %166
  %174 = load %struct.sock*, %struct.sock** %6, align 8
  %175 = call i32 @sock_net(%struct.sock* %174)
  %176 = load %struct.sock*, %struct.sock** %6, align 8
  %177 = call i64 @xfrm_lookup(i32 %175, %struct.dst_entry** %9, %struct.flowi* %20, %struct.sock* %176, i32 0)
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  br label %368

180:                                              ; preds = %173
  br label %181

181:                                              ; preds = %180, %111
  %182 = load %struct.sock*, %struct.sock** %6, align 8
  %183 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %184 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %185 = call %struct.sock* @dccp_create_openreq_child(%struct.sock* %182, %struct.request_sock* %183, %struct.sk_buff* %184)
  store %struct.sock* %185, %struct.sock** %16, align 8
  %186 = load %struct.sock*, %struct.sock** %16, align 8
  %187 = icmp eq %struct.sock* %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %181
  br label %365

189:                                              ; preds = %181
  %190 = load %struct.sock*, %struct.sock** %16, align 8
  %191 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %192 = call i32 @__ip6_dst_store(%struct.sock* %190, %struct.dst_entry* %191, i32* null, i32* null)
  %193 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %194 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %193, i32 0, i32 0
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %199 = load i32, i32* @NETIF_F_TSO, align 4
  %200 = or i32 %198, %199
  %201 = xor i32 %200, -1
  %202 = and i32 %197, %201
  %203 = load %struct.sock*, %struct.sock** %16, align 8
  %204 = getelementptr inbounds %struct.sock, %struct.sock* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 4
  %205 = load %struct.sock*, %struct.sock** %16, align 8
  %206 = bitcast %struct.sock* %205 to %struct.dccp6_sock*
  store %struct.dccp6_sock* %206, %struct.dccp6_sock** %15, align 8
  %207 = load %struct.sock*, %struct.sock** %16, align 8
  %208 = call %struct.inet_sock* @inet_sk(%struct.sock* %207)
  store %struct.inet_sock* %208, %struct.inet_sock** %13, align 8
  %209 = load %struct.dccp6_sock*, %struct.dccp6_sock** %15, align 8
  %210 = getelementptr inbounds %struct.dccp6_sock, %struct.dccp6_sock* %209, i32 0, i32 0
  %211 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %212 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %211, i32 0, i32 4
  store i32* %210, i32** %212, align 8
  %213 = load %struct.sock*, %struct.sock** %16, align 8
  %214 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %213)
  store %struct.dccp_sock* %214, %struct.dccp_sock** %14, align 8
  %215 = load %struct.sock*, %struct.sock** %16, align 8
  %216 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %215)
  store %struct.ipv6_pinfo* %216, %struct.ipv6_pinfo** %11, align 8
  %217 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %218 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %12, align 8
  %219 = call i32 @memcpy(%struct.ipv6_pinfo* %217, %struct.ipv6_pinfo* %218, i32 48)
  %220 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %221 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %220, i32 0, i32 7
  %222 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %10, align 8
  %223 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %222, i32 0, i32 3
  %224 = call i32 @ipv6_addr_copy(%struct.in6_addr* %221, %struct.in6_addr* %223)
  %225 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %226 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %225, i32 0, i32 6
  %227 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %10, align 8
  %228 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %227, i32 0, i32 2
  %229 = call i32 @ipv6_addr_copy(%struct.in6_addr* %226, %struct.in6_addr* %228)
  %230 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %231 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %230, i32 0, i32 5
  %232 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %10, align 8
  %233 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %232, i32 0, i32 2
  %234 = call i32 @ipv6_addr_copy(%struct.in6_addr* %231, %struct.in6_addr* %233)
  %235 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %10, align 8
  %236 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.sock*, %struct.sock** %16, align 8
  %239 = getelementptr inbounds %struct.sock, %struct.sock* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 4
  %240 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %241 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %240, i32 0, i32 3
  store i32* null, i32** %241, align 8
  %242 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %12, align 8
  %243 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %247 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %246, i32 0, i32 4
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  store i32 %245, i32* %248, align 8
  %249 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %250 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %249, i32 0, i32 3
  store i32* null, i32** %250, align 8
  %251 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %10, align 8
  %252 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %280

255:                                              ; preds = %189
  %256 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %10, align 8
  %257 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* @GFP_ATOMIC, align 4
  %260 = call i32* @skb_clone(i32* %258, i32 %259)
  %261 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %262 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %261, i32 0, i32 3
  store i32* %260, i32** %262, align 8
  %263 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %10, align 8
  %264 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = call i32 @kfree_skb(i32* %265)
  %267 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %10, align 8
  %268 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %267, i32 0, i32 0
  store i32* null, i32** %268, align 8
  %269 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %270 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %269, i32 0, i32 3
  %271 = load i32*, i32** %270, align 8
  %272 = icmp ne i32* %271, null
  br i1 %272, label %273, label %279

273:                                              ; preds = %255
  %274 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %275 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %274, i32 0, i32 3
  %276 = load i32*, i32** %275, align 8
  %277 = load %struct.sock*, %struct.sock** %16, align 8
  %278 = call i32 @skb_set_owner_r(i32* %276, %struct.sock* %277)
  br label %279

279:                                              ; preds = %273, %255
  br label %280

280:                                              ; preds = %279, %189
  %281 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %282 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %281, i32 0, i32 0
  store %struct.ipv6_txoptions* null, %struct.ipv6_txoptions** %282, align 8
  %283 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %284 = call i8* @inet6_iif(%struct.sk_buff* %283)
  %285 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %286 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %285, i32 0, i32 2
  store i8* %284, i8** %286, align 8
  %287 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %288 = call %struct.TYPE_8__* @ipv6_hdr(%struct.sk_buff* %287)
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %292 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %291, i32 0, i32 1
  store i32 %290, i32* %292, align 8
  %293 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %294 = icmp ne %struct.ipv6_txoptions* %293, null
  br i1 %294, label %295, label %314

295:                                              ; preds = %280
  %296 = load %struct.sock*, %struct.sock** %16, align 8
  %297 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %298 = call %struct.ipv6_txoptions* @ipv6_dup_options(%struct.sock* %296, %struct.ipv6_txoptions* %297)
  %299 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %300 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %299, i32 0, i32 0
  store %struct.ipv6_txoptions* %298, %struct.ipv6_txoptions** %300, align 8
  %301 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %302 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %12, align 8
  %303 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %302, i32 0, i32 0
  %304 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %303, align 8
  %305 = icmp ne %struct.ipv6_txoptions* %301, %304
  br i1 %305, label %306, label %313

306:                                              ; preds = %295
  %307 = load %struct.sock*, %struct.sock** %6, align 8
  %308 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %309 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %310 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @sock_kfree_s(%struct.sock* %307, %struct.ipv6_txoptions* %308, i32 %311)
  br label %313

313:                                              ; preds = %306, %295
  br label %314

314:                                              ; preds = %313, %280
  %315 = load %struct.sock*, %struct.sock** %16, align 8
  %316 = call %struct.TYPE_10__* @inet_csk(%struct.sock* %315)
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 0
  store i64 0, i64* %317, align 8
  %318 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %319 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %318, i32 0, i32 0
  %320 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %319, align 8
  %321 = icmp ne %struct.ipv6_txoptions* %320, null
  br i1 %321, label %322, label %337

322:                                              ; preds = %314
  %323 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %324 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %323, i32 0, i32 0
  %325 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %324, align 8
  %326 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %325, i32 0, i32 2
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %329 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %328, i32 0, i32 0
  %330 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %329, align 8
  %331 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = add nsw i64 %327, %332
  %334 = load %struct.sock*, %struct.sock** %16, align 8
  %335 = call %struct.TYPE_10__* @inet_csk(%struct.sock* %334)
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 0
  store i64 %333, i64* %336, align 8
  br label %337

337:                                              ; preds = %322, %314
  %338 = load %struct.sock*, %struct.sock** %16, align 8
  %339 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %340 = call i32 @dst_mtu(%struct.dst_entry* %339)
  %341 = call i32 @dccp_sync_mss(%struct.sock* %338, i32 %340)
  %342 = load i32, i32* @LOOPBACK4_IPV6, align 4
  %343 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %344 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %343, i32 0, i32 0
  store i32 %342, i32* %344, align 8
  %345 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %346 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %345, i32 0, i32 1
  store i32 %342, i32* %346, align 4
  %347 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %348 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %347, i32 0, i32 2
  store i32 %342, i32* %348, align 8
  %349 = load %struct.sock*, %struct.sock** %6, align 8
  %350 = load %struct.sock*, %struct.sock** %16, align 8
  %351 = call i64 @__inet_inherit_port(%struct.sock* %349, %struct.sock* %350)
  %352 = icmp slt i64 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %337
  %354 = load %struct.sock*, %struct.sock** %16, align 8
  %355 = call i32 @sock_put(%struct.sock* %354)
  br label %368

356:                                              ; preds = %337
  %357 = load %struct.sock*, %struct.sock** %16, align 8
  %358 = call i32 @__inet6_hash(%struct.sock* %357)
  %359 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %359, %struct.sock** %5, align 8
  br label %389

360:                                              ; preds = %110
  %361 = load %struct.sock*, %struct.sock** %6, align 8
  %362 = call i32 @sock_net(%struct.sock* %361)
  %363 = load i32, i32* @LINUX_MIB_LISTENOVERFLOWS, align 4
  %364 = call i32 @NET_INC_STATS_BH(i32 %362, i32 %363)
  br label %365

365:                                              ; preds = %360, %188
  %366 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %367 = call i32 @dst_release(%struct.dst_entry* %366)
  br label %368

368:                                              ; preds = %365, %353, %179, %165
  %369 = load %struct.sock*, %struct.sock** %6, align 8
  %370 = call i32 @sock_net(%struct.sock* %369)
  %371 = load i32, i32* @LINUX_MIB_LISTENDROPS, align 4
  %372 = call i32 @NET_INC_STATS_BH(i32 %370, i32 %371)
  %373 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %374 = icmp ne %struct.ipv6_txoptions* %373, null
  br i1 %374, label %375, label %388

375:                                              ; preds = %368
  %376 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %377 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %12, align 8
  %378 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %377, i32 0, i32 0
  %379 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %378, align 8
  %380 = icmp ne %struct.ipv6_txoptions* %376, %379
  br i1 %380, label %381, label %388

381:                                              ; preds = %375
  %382 = load %struct.sock*, %struct.sock** %6, align 8
  %383 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %384 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %17, align 8
  %385 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @sock_kfree_s(%struct.sock* %382, %struct.ipv6_txoptions* %383, i32 %386)
  br label %388

388:                                              ; preds = %381, %375, %368
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %389

389:                                              ; preds = %388, %356, %41, %40
  %390 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %390
}

declare dso_local %struct.inet6_request_sock* @inet6_rsk(%struct.request_sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.sock* @dccp_v4_request_recv_sock(%struct.sock*, %struct.sk_buff*, %struct.request_sock*, %struct.dst_entry*) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @memcpy(%struct.ipv6_pinfo*, %struct.ipv6_pinfo*, i32) #1

declare dso_local i32 @ipv6_addr_set(%struct.in6_addr*, i32, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ipv6_addr_copy(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local %struct.TYPE_10__* @inet_csk(%struct.sock*) #1

declare dso_local i8* @inet6_iif(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dccp_sync_mss(%struct.sock*, i32) #1

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @inet_rsk(%struct.request_sock*) #1

declare dso_local i32 @security_sk_classify_flow(%struct.sock*, %struct.flowi*) #1

declare dso_local i64 @ip6_dst_lookup(%struct.sock*, %struct.dst_entry**, %struct.flowi*) #1

declare dso_local i64 @xfrm_lookup(i32, %struct.dst_entry**, %struct.flowi*, %struct.sock*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.sock* @dccp_create_openreq_child(%struct.sock*, %struct.request_sock*, %struct.sk_buff*) #1

declare dso_local i32 @__ip6_dst_store(%struct.sock*, %struct.dst_entry*, i32*, i32*) #1

declare dso_local i32* @skb_clone(i32*, i32) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @skb_set_owner_r(i32*, %struct.sock*) #1

declare dso_local %struct.ipv6_txoptions* @ipv6_dup_options(%struct.sock*, %struct.ipv6_txoptions*) #1

declare dso_local i32 @sock_kfree_s(%struct.sock*, %struct.ipv6_txoptions*, i32) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

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
