; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_send_synack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_send_synack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { i32 }
%struct.inet6_request_sock = type { %struct.in6_addr, %struct.in6_addr, i32 }
%struct.in6_addr = type { i32 }
%struct.ipv6_pinfo = type { %struct.ipv6_txoptions* }
%struct.ipv6_txoptions = type { i32, i64 }
%struct.sk_buff = type { i32, i32 }
%struct.flowi = type { %struct.in6_addr, i32, i32, i32, i64, %struct.in6_addr, i32 }
%struct.dst_entry = type { i32 }
%struct.rt0_hdr = type { %struct.in6_addr* }
%struct.tcphdr = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.request_sock*)* @tcp_v6_send_synack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_v6_send_synack(%struct.sock* %0, %struct.request_sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.request_sock*, align 8
  %5 = alloca %struct.inet6_request_sock*, align 8
  %6 = alloca %struct.ipv6_pinfo*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ipv6_txoptions*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca %struct.in6_addr, align 4
  %11 = alloca %struct.flowi, align 8
  %12 = alloca %struct.dst_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.rt0_hdr*, align 8
  %15 = alloca %struct.tcphdr*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.request_sock* %1, %struct.request_sock** %4, align 8
  %16 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %17 = call %struct.inet6_request_sock* @inet6_rsk(%struct.request_sock* %16)
  store %struct.inet6_request_sock* %17, %struct.inet6_request_sock** %5, align 8
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %18)
  store %struct.ipv6_pinfo* %19, %struct.ipv6_pinfo** %6, align 8
  store %struct.ipv6_txoptions* null, %struct.ipv6_txoptions** %8, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %9, align 8
  store i32 -1, i32* %13, align 4
  %20 = call i32 @memset(%struct.flowi* %11, i32 0, i32 32)
  %21 = load i32, i32* @IPPROTO_TCP, align 4
  %22 = getelementptr inbounds %struct.flowi, %struct.flowi* %11, i32 0, i32 6
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.flowi, %struct.flowi* %11, i32 0, i32 0
  %24 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %5, align 8
  %25 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %24, i32 0, i32 0
  %26 = call i32 @ipv6_addr_copy(%struct.in6_addr* %23, %struct.in6_addr* %25)
  %27 = getelementptr inbounds %struct.flowi, %struct.flowi* %11, i32 0, i32 5
  %28 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %5, align 8
  %29 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %28, i32 0, i32 1
  %30 = call i32 @ipv6_addr_copy(%struct.in6_addr* %27, %struct.in6_addr* %29)
  %31 = getelementptr inbounds %struct.flowi, %struct.flowi* %11, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %5, align 8
  %33 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.flowi, %struct.flowi* %11, i32 0, i32 3
  store i32 %34, i32* %35, align 4
  %36 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %37 = call %struct.TYPE_2__* @inet_rsk(%struct.request_sock* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.flowi, %struct.flowi* %11, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %42 = call %struct.TYPE_2__* @inet_rsk(%struct.request_sock* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.flowi, %struct.flowi* %11, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %47 = call i32 @security_req_classify_flow(%struct.request_sock* %46, %struct.flowi* %11)
  %48 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %49 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %48, i32 0, i32 0
  %50 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %49, align 8
  store %struct.ipv6_txoptions* %50, %struct.ipv6_txoptions** %8, align 8
  %51 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %8, align 8
  %52 = icmp ne %struct.ipv6_txoptions* %51, null
  br i1 %52, label %53, label %70

53:                                               ; preds = %2
  %54 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %8, align 8
  %55 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %8, align 8
  %60 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.rt0_hdr*
  store %struct.rt0_hdr* %62, %struct.rt0_hdr** %14, align 8
  %63 = getelementptr inbounds %struct.flowi, %struct.flowi* %11, i32 0, i32 0
  %64 = call i32 @ipv6_addr_copy(%struct.in6_addr* %10, %struct.in6_addr* %63)
  %65 = getelementptr inbounds %struct.flowi, %struct.flowi* %11, i32 0, i32 0
  %66 = load %struct.rt0_hdr*, %struct.rt0_hdr** %14, align 8
  %67 = getelementptr inbounds %struct.rt0_hdr, %struct.rt0_hdr* %66, i32 0, i32 0
  %68 = load %struct.in6_addr*, %struct.in6_addr** %67, align 8
  %69 = call i32 @ipv6_addr_copy(%struct.in6_addr* %65, %struct.in6_addr* %68)
  store %struct.in6_addr* %10, %struct.in6_addr** %9, align 8
  br label %70

70:                                               ; preds = %58, %53, %2
  %71 = load %struct.sock*, %struct.sock** %3, align 8
  %72 = call i32 @ip6_dst_lookup(%struct.sock* %71, %struct.dst_entry** %12, %struct.flowi* %11)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %129

76:                                               ; preds = %70
  %77 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %78 = icmp ne %struct.in6_addr* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.flowi, %struct.flowi* %11, i32 0, i32 0
  %81 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %82 = call i32 @ipv6_addr_copy(%struct.in6_addr* %80, %struct.in6_addr* %81)
  br label %83

83:                                               ; preds = %79, %76
  %84 = load %struct.sock*, %struct.sock** %3, align 8
  %85 = call i32 @sock_net(%struct.sock* %84)
  %86 = load %struct.sock*, %struct.sock** %3, align 8
  %87 = call i32 @xfrm_lookup(i32 %85, %struct.dst_entry** %12, %struct.flowi* %11, %struct.sock* %86, i32 0)
  store i32 %87, i32* %13, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %129

90:                                               ; preds = %83
  %91 = load %struct.sock*, %struct.sock** %3, align 8
  %92 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %93 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %94 = call %struct.sk_buff* @tcp_make_synack(%struct.sock* %91, %struct.dst_entry* %92, %struct.request_sock* %93)
  store %struct.sk_buff* %94, %struct.sk_buff** %7, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %96 = icmp ne %struct.sk_buff* %95, null
  br i1 %96, label %97, label %128

97:                                               ; preds = %90
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %98)
  store %struct.tcphdr* %99, %struct.tcphdr** %15, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %5, align 8
  %104 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %103, i32 0, i32 1
  %105 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %5, align 8
  %106 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %105, i32 0, i32 0
  %107 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @csum_partial(%struct.tcphdr* %107, i32 %110, i32 %113)
  %115 = call i32 @tcp_v6_check(i32 %102, %struct.in6_addr* %104, %struct.in6_addr* %106, i32 %114)
  %116 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %117 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = getelementptr inbounds %struct.flowi, %struct.flowi* %11, i32 0, i32 0
  %119 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %5, align 8
  %120 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %119, i32 0, i32 0
  %121 = call i32 @ipv6_addr_copy(%struct.in6_addr* %118, %struct.in6_addr* %120)
  %122 = load %struct.sock*, %struct.sock** %3, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %124 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %8, align 8
  %125 = call i32 @ip6_xmit(%struct.sock* %122, %struct.sk_buff* %123, %struct.flowi* %11, %struct.ipv6_txoptions* %124, i32 0)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @net_xmit_eval(i32 %126)
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %97, %90
  br label %129

129:                                              ; preds = %128, %89, %75
  %130 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %8, align 8
  %131 = icmp ne %struct.ipv6_txoptions* %130, null
  br i1 %131, label %132, label %145

132:                                              ; preds = %129
  %133 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %8, align 8
  %134 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %135 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %134, i32 0, i32 0
  %136 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %135, align 8
  %137 = icmp ne %struct.ipv6_txoptions* %133, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %132
  %139 = load %struct.sock*, %struct.sock** %3, align 8
  %140 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %8, align 8
  %141 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %8, align 8
  %142 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @sock_kfree_s(%struct.sock* %139, %struct.ipv6_txoptions* %140, i32 %143)
  br label %145

145:                                              ; preds = %138, %132, %129
  %146 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %147 = call i32 @dst_release(%struct.dst_entry* %146)
  %148 = load i32, i32* %13, align 4
  ret i32 %148
}

declare dso_local %struct.inet6_request_sock* @inet6_rsk(%struct.request_sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local i32 @ipv6_addr_copy(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local %struct.TYPE_2__* @inet_rsk(%struct.request_sock*) #1

declare dso_local i32 @security_req_classify_flow(%struct.request_sock*, %struct.flowi*) #1

declare dso_local i32 @ip6_dst_lookup(%struct.sock*, %struct.dst_entry**, %struct.flowi*) #1

declare dso_local i32 @xfrm_lookup(i32, %struct.dst_entry**, %struct.flowi*, %struct.sock*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.sk_buff* @tcp_make_synack(%struct.sock*, %struct.dst_entry*, %struct.request_sock*) #1

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @tcp_v6_check(i32, %struct.in6_addr*, %struct.in6_addr*, i32) #1

declare dso_local i32 @csum_partial(%struct.tcphdr*, i32, i32) #1

declare dso_local i32 @ip6_xmit(%struct.sock*, %struct.sk_buff*, %struct.flowi*, %struct.ipv6_txoptions*, i32) #1

declare dso_local i32 @net_xmit_eval(i32) #1

declare dso_local i32 @sock_kfree_s(%struct.sock*, %struct.ipv6_txoptions*, i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
