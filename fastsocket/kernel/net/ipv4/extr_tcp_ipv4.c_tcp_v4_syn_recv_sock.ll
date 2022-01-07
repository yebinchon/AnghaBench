; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_syn_recv_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_syn_recv_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.request_sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.inet_request_sock = type { %struct.ip_options*, i32, i32 }
%struct.ip_options = type { i64 }
%struct.inet_sock = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tcp_sock = type { i32, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@RTAX_ADVMSS = common dso_local global i32 0, align 4
@tcp_time_stamp = common dso_local global i64 0, align 8
@LINUX_MIB_LISTENOVERFLOWS = common dso_local global i32 0, align 4
@LINUX_MIB_LISTENDROPS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NETIF_F_GSO_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @tcp_v4_syn_recv_sock(%struct.sock* %0, %struct.sk_buff* %1, %struct.request_sock* %2, %struct.dst_entry* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.request_sock*, align 8
  %9 = alloca %struct.dst_entry*, align 8
  %10 = alloca %struct.inet_request_sock*, align 8
  %11 = alloca %struct.inet_sock*, align 8
  %12 = alloca %struct.tcp_sock*, align 8
  %13 = alloca %struct.sock*, align 8
  %14 = alloca %struct.ip_options*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.request_sock* %2, %struct.request_sock** %8, align 8
  store %struct.dst_entry* %3, %struct.dst_entry** %9, align 8
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = call i64 @sk_acceptq_is_full(%struct.sock* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %180

19:                                               ; preds = %4
  %20 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %21 = icmp ne %struct.dst_entry* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load %struct.sock*, %struct.sock** %6, align 8
  %24 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %25 = call %struct.dst_entry* @inet_csk_route_req(%struct.sock* %23, %struct.request_sock* %24)
  store %struct.dst_entry* %25, %struct.dst_entry** %9, align 8
  %26 = icmp eq %struct.dst_entry* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %188

28:                                               ; preds = %22, %19
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = call %struct.sock* @tcp_create_openreq_child(%struct.sock* %29, %struct.request_sock* %30, %struct.sk_buff* %31)
  store %struct.sock* %32, %struct.sock** %13, align 8
  %33 = load %struct.sock*, %struct.sock** %13, align 8
  %34 = icmp ne %struct.sock* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %185

36:                                               ; preds = %28
  %37 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %38 = load %struct.sock*, %struct.sock** %13, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sock*, %struct.sock** %13, align 8
  %41 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %42 = call i32 @sk_setup_caps(%struct.sock* %40, %struct.dst_entry* %41)
  %43 = load %struct.sock*, %struct.sock** %13, align 8
  %44 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %43)
  store %struct.tcp_sock* %44, %struct.tcp_sock** %12, align 8
  %45 = load %struct.sock*, %struct.sock** %13, align 8
  %46 = call %struct.inet_sock* @inet_sk(%struct.sock* %45)
  store %struct.inet_sock* %46, %struct.inet_sock** %11, align 8
  %47 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %48 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %47)
  store %struct.inet_request_sock* %48, %struct.inet_request_sock** %10, align 8
  %49 = load %struct.inet_request_sock*, %struct.inet_request_sock** %10, align 8
  %50 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %53 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.inet_request_sock*, %struct.inet_request_sock** %10, align 8
  %55 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %58 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 4
  %59 = load %struct.inet_request_sock*, %struct.inet_request_sock** %10, align 8
  %60 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %63 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.inet_request_sock*, %struct.inet_request_sock** %10, align 8
  %65 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %64, i32 0, i32 0
  %66 = load %struct.ip_options*, %struct.ip_options** %65, align 8
  store %struct.ip_options* %66, %struct.ip_options** %14, align 8
  %67 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %68 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ip_options*, %struct.ip_options** %14, align 8
  %71 = call i32 @rcu_assign_pointer(i32 %69, %struct.ip_options* %70)
  %72 = load %struct.inet_request_sock*, %struct.inet_request_sock** %10, align 8
  %73 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %72, i32 0, i32 0
  store %struct.ip_options* null, %struct.ip_options** %73, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = call i32 @inet_iif(%struct.sk_buff* %74)
  %76 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %77 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = call %struct.TYPE_9__* @ip_hdr(%struct.sk_buff* %78)
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %83 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = call %struct.TYPE_9__* @ip_hdr(%struct.sk_buff* %84)
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sock*, %struct.sock** %13, align 8
  %89 = call %struct.TYPE_8__* @sk_extended(%struct.sock* %88)
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  %91 = load %struct.sock*, %struct.sock** %13, align 8
  %92 = call %struct.TYPE_10__* @inet_csk(%struct.sock* %91)
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load %struct.ip_options*, %struct.ip_options** %14, align 8
  %95 = icmp ne %struct.ip_options* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %36
  %97 = load %struct.ip_options*, %struct.ip_options** %14, align 8
  %98 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.sock*, %struct.sock** %13, align 8
  %101 = call %struct.TYPE_10__* @inet_csk(%struct.sock* %100)
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  store i64 %99, i64* %102, align 8
  br label %103

103:                                              ; preds = %96, %36
  %104 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %105 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @jiffies, align 4
  %108 = xor i32 %106, %107
  %109 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %110 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.sock*, %struct.sock** %13, align 8
  %112 = call i32 @tcp_mtup_init(%struct.sock* %111)
  %113 = load %struct.sock*, %struct.sock** %13, align 8
  %114 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %115 = call i32 @dst_mtu(%struct.dst_entry* %114)
  %116 = call i32 @tcp_sync_mss(%struct.sock* %113, i32 %115)
  %117 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %118 = load i32, i32* @RTAX_ADVMSS, align 4
  %119 = call i64 @dst_metric(%struct.dst_entry* %117, i32 %118)
  %120 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %121 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load %struct.sock*, %struct.sock** %6, align 8
  %123 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %122)
  %124 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %146

128:                                              ; preds = %103
  %129 = load %struct.sock*, %struct.sock** %6, align 8
  %130 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %129)
  %131 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %135 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp slt i64 %133, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %128
  %139 = load %struct.sock*, %struct.sock** %6, align 8
  %140 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %139)
  %141 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %145 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %138, %128, %103
  %147 = load %struct.sock*, %struct.sock** %13, align 8
  %148 = call i32 @tcp_initialize_rcv_mss(%struct.sock* %147)
  %149 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %150 = call %struct.TYPE_7__* @tcp_rsk(%struct.request_sock* %149)
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %146
  %155 = load %struct.sock*, %struct.sock** %13, align 8
  %156 = load i64, i64* @tcp_time_stamp, align 8
  %157 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %158 = call %struct.TYPE_7__* @tcp_rsk(%struct.request_sock* %157)
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = sub nsw i64 %156, %160
  %162 = call i32 @tcp_valid_rtt_meas(%struct.sock* %155, i64 %161)
  br label %163

163:                                              ; preds = %154, %146
  %164 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %165 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %168 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load %struct.sock*, %struct.sock** %6, align 8
  %170 = load %struct.sock*, %struct.sock** %13, align 8
  %171 = call i64 @__inet_inherit_port(%struct.sock* %169, %struct.sock* %170)
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %163
  %174 = load %struct.sock*, %struct.sock** %13, align 8
  %175 = call i32 @sock_put(%struct.sock* %174)
  br label %188

176:                                              ; preds = %163
  %177 = load %struct.sock*, %struct.sock** %13, align 8
  %178 = call i32 @__inet_hash_nolisten(%struct.sock* %177)
  %179 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %179, %struct.sock** %5, align 8
  br label %193

180:                                              ; preds = %18
  %181 = load %struct.sock*, %struct.sock** %6, align 8
  %182 = call i32 @sock_net(%struct.sock* %181)
  %183 = load i32, i32* @LINUX_MIB_LISTENOVERFLOWS, align 4
  %184 = call i32 @NET_INC_STATS_BH(i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %180, %35
  %186 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %187 = call i32 @dst_release(%struct.dst_entry* %186)
  br label %188

188:                                              ; preds = %185, %173, %27
  %189 = load %struct.sock*, %struct.sock** %6, align 8
  %190 = call i32 @sock_net(%struct.sock* %189)
  %191 = load i32, i32* @LINUX_MIB_LISTENDROPS, align 4
  %192 = call i32 @NET_INC_STATS_BH(i32 %190, i32 %191)
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %193

193:                                              ; preds = %188, %176
  %194 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %194
}

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local %struct.dst_entry* @inet_csk_route_req(%struct.sock*, %struct.request_sock*) #1

declare dso_local %struct.sock* @tcp_create_openreq_child(%struct.sock*, %struct.request_sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_setup_caps(%struct.sock*, %struct.dst_entry*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ip_options*) #1

declare dso_local i32 @inet_iif(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_9__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @sk_extended(%struct.sock*) #1

declare dso_local %struct.TYPE_10__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @tcp_mtup_init(%struct.sock*) #1

declare dso_local i32 @tcp_sync_mss(%struct.sock*, i32) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i64 @dst_metric(%struct.dst_entry*, i32) #1

declare dso_local i32 @tcp_initialize_rcv_mss(%struct.sock*) #1

declare dso_local %struct.TYPE_7__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i32 @tcp_valid_rtt_meas(%struct.sock*, i64) #1

declare dso_local i64 @__inet_inherit_port(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @__inet_hash_nolisten(%struct.sock*) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
