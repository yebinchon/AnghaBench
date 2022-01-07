; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv4.c_dccp_v4_request_recv_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv4.c_dccp_v4_request_recv_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.request_sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.inet_request_sock = type { i32*, i32, i32 }
%struct.inet_sock = type { i32, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@LINUX_MIB_LISTENOVERFLOWS = common dso_local global i32 0, align 4
@LINUX_MIB_LISTENDROPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @dccp_v4_request_recv_sock(%struct.sock* %0, %struct.sk_buff* %1, %struct.request_sock* %2, %struct.dst_entry* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.request_sock*, align 8
  %9 = alloca %struct.dst_entry*, align 8
  %10 = alloca %struct.inet_request_sock*, align 8
  %11 = alloca %struct.inet_sock*, align 8
  %12 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.request_sock* %2, %struct.request_sock** %8, align 8
  store %struct.dst_entry* %3, %struct.dst_entry** %9, align 8
  %13 = load %struct.sock*, %struct.sock** %6, align 8
  %14 = call i64 @sk_acceptq_is_full(%struct.sock* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %92

17:                                               ; preds = %4
  %18 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %19 = icmp eq %struct.dst_entry* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.sock*, %struct.sock** %6, align 8
  %22 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %23 = call %struct.dst_entry* @inet_csk_route_req(%struct.sock* %21, %struct.request_sock* %22)
  store %struct.dst_entry* %23, %struct.dst_entry** %9, align 8
  %24 = icmp eq %struct.dst_entry* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %100

26:                                               ; preds = %20, %17
  %27 = load %struct.sock*, %struct.sock** %6, align 8
  %28 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = call %struct.sock* @dccp_create_openreq_child(%struct.sock* %27, %struct.request_sock* %28, %struct.sk_buff* %29)
  store %struct.sock* %30, %struct.sock** %12, align 8
  %31 = load %struct.sock*, %struct.sock** %12, align 8
  %32 = icmp eq %struct.sock* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %97

34:                                               ; preds = %26
  %35 = load %struct.sock*, %struct.sock** %12, align 8
  %36 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %37 = call i32 @sk_setup_caps(%struct.sock* %35, %struct.dst_entry* %36)
  %38 = load %struct.sock*, %struct.sock** %12, align 8
  %39 = call %struct.inet_sock* @inet_sk(%struct.sock* %38)
  store %struct.inet_sock* %39, %struct.inet_sock** %11, align 8
  %40 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %41 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %40)
  store %struct.inet_request_sock* %41, %struct.inet_request_sock** %10, align 8
  %42 = load %struct.inet_request_sock*, %struct.inet_request_sock** %10, align 8
  %43 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %46 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 8
  %47 = load %struct.inet_request_sock*, %struct.inet_request_sock** %10, align 8
  %48 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %51 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.inet_request_sock*, %struct.inet_request_sock** %10, align 8
  %53 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %56 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load %struct.inet_request_sock*, %struct.inet_request_sock** %10, align 8
  %58 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %61 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %60, i32 0, i32 3
  store i32* %59, i32** %61, align 8
  %62 = load %struct.inet_request_sock*, %struct.inet_request_sock** %10, align 8
  %63 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = call i32 @inet_iif(%struct.sk_buff* %64)
  %66 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %67 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %73 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @jiffies, align 4
  %75 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %76 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.sock*, %struct.sock** %12, align 8
  %78 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %79 = call i32 @dst_mtu(%struct.dst_entry* %78)
  %80 = call i32 @dccp_sync_mss(%struct.sock* %77, i32 %79)
  %81 = load %struct.sock*, %struct.sock** %6, align 8
  %82 = load %struct.sock*, %struct.sock** %12, align 8
  %83 = call i64 @__inet_inherit_port(%struct.sock* %81, %struct.sock* %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %34
  %86 = load %struct.sock*, %struct.sock** %12, align 8
  %87 = call i32 @sock_put(%struct.sock* %86)
  br label %100

88:                                               ; preds = %34
  %89 = load %struct.sock*, %struct.sock** %12, align 8
  %90 = call i32 @__inet_hash_nolisten(%struct.sock* %89)
  %91 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %91, %struct.sock** %5, align 8
  br label %105

92:                                               ; preds = %16
  %93 = load %struct.sock*, %struct.sock** %6, align 8
  %94 = call i32 @sock_net(%struct.sock* %93)
  %95 = load i32, i32* @LINUX_MIB_LISTENOVERFLOWS, align 4
  %96 = call i32 @NET_INC_STATS_BH(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %33
  %98 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %99 = call i32 @dst_release(%struct.dst_entry* %98)
  br label %100

100:                                              ; preds = %97, %85, %25
  %101 = load %struct.sock*, %struct.sock** %6, align 8
  %102 = call i32 @sock_net(%struct.sock* %101)
  %103 = load i32, i32* @LINUX_MIB_LISTENDROPS, align 4
  %104 = call i32 @NET_INC_STATS_BH(i32 %102, i32 %103)
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %105

105:                                              ; preds = %100, %88
  %106 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %106
}

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local %struct.dst_entry* @inet_csk_route_req(%struct.sock*, %struct.request_sock*) #1

declare dso_local %struct.sock* @dccp_create_openreq_child(%struct.sock*, %struct.request_sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_setup_caps(%struct.sock*, %struct.dst_entry*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local i32 @inet_iif(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dccp_sync_mss(%struct.sock*, i32) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

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
