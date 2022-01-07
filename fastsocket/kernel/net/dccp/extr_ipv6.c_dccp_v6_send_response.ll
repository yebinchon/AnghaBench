; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv6.c_dccp_v6_send_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv6.c_dccp_v6_send_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { i32 }
%struct.inet6_request_sock = type { %struct.in6_addr, %struct.in6_addr, i32 }
%struct.in6_addr = type { i32 }
%struct.ipv6_pinfo = type { %struct.ipv6_txoptions* }
%struct.ipv6_txoptions = type { i32, i32* }
%struct.sk_buff = type { i32 }
%struct.flowi = type { %struct.in6_addr, i32, i32, i32, i64, %struct.in6_addr, i32 }
%struct.dst_entry = type { i32 }
%struct.rt0_hdr = type { %struct.in6_addr* }
%struct.dccp_hdr = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IPPROTO_DCCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.request_sock*)* @dccp_v6_send_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_v6_send_response(%struct.sock* %0, %struct.request_sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.request_sock*, align 8
  %5 = alloca %struct.inet6_request_sock*, align 8
  %6 = alloca %struct.ipv6_pinfo*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ipv6_txoptions*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca %struct.in6_addr, align 4
  %11 = alloca %struct.flowi, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dst_entry*, align 8
  %14 = alloca %struct.rt0_hdr*, align 8
  %15 = alloca %struct.dccp_hdr*, align 8
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
  store i32 -1, i32* %12, align 4
  %20 = call i32 @memset(%struct.flowi* %11, i32 0, i32 32)
  %21 = load i32, i32* @IPPROTO_DCCP, align 4
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
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %8, align 8
  %60 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = bitcast i32* %61 to %struct.rt0_hdr*
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
  %72 = call i32 @ip6_dst_lookup(%struct.sock* %71, %struct.dst_entry** %13, %struct.flowi* %11)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %120

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
  %87 = call i32 @xfrm_lookup(i32 %85, %struct.dst_entry** %13, %struct.flowi* %11, %struct.sock* %86, i32 0)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %120

91:                                               ; preds = %83
  %92 = load %struct.sock*, %struct.sock** %3, align 8
  %93 = load %struct.dst_entry*, %struct.dst_entry** %13, align 8
  %94 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %95 = call %struct.sk_buff* @dccp_make_response(%struct.sock* %92, %struct.dst_entry* %93, %struct.request_sock* %94)
  store %struct.sk_buff* %95, %struct.sk_buff** %7, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %97 = icmp ne %struct.sk_buff* %96, null
  br i1 %97, label %98, label %119

98:                                               ; preds = %91
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %100 = call %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff* %99)
  store %struct.dccp_hdr* %100, %struct.dccp_hdr** %15, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %102 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %5, align 8
  %103 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %102, i32 0, i32 1
  %104 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %5, align 8
  %105 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %104, i32 0, i32 0
  %106 = call i32 @dccp_v6_csum_finish(%struct.sk_buff* %101, %struct.in6_addr* %103, %struct.in6_addr* %105)
  %107 = load %struct.dccp_hdr*, %struct.dccp_hdr** %15, align 8
  %108 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = getelementptr inbounds %struct.flowi, %struct.flowi* %11, i32 0, i32 0
  %110 = load %struct.inet6_request_sock*, %struct.inet6_request_sock** %5, align 8
  %111 = getelementptr inbounds %struct.inet6_request_sock, %struct.inet6_request_sock* %110, i32 0, i32 0
  %112 = call i32 @ipv6_addr_copy(%struct.in6_addr* %109, %struct.in6_addr* %111)
  %113 = load %struct.sock*, %struct.sock** %3, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %115 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %8, align 8
  %116 = call i32 @ip6_xmit(%struct.sock* %113, %struct.sk_buff* %114, %struct.flowi* %11, %struct.ipv6_txoptions* %115, i32 0)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @net_xmit_eval(i32 %117)
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %98, %91
  br label %120

120:                                              ; preds = %119, %90, %75
  %121 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %8, align 8
  %122 = icmp ne %struct.ipv6_txoptions* %121, null
  br i1 %122, label %123, label %136

123:                                              ; preds = %120
  %124 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %8, align 8
  %125 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %126 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %125, i32 0, i32 0
  %127 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %126, align 8
  %128 = icmp ne %struct.ipv6_txoptions* %124, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %123
  %130 = load %struct.sock*, %struct.sock** %3, align 8
  %131 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %8, align 8
  %132 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %8, align 8
  %133 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @sock_kfree_s(%struct.sock* %130, %struct.ipv6_txoptions* %131, i32 %134)
  br label %136

136:                                              ; preds = %129, %123, %120
  %137 = load %struct.dst_entry*, %struct.dst_entry** %13, align 8
  %138 = call i32 @dst_release(%struct.dst_entry* %137)
  %139 = load i32, i32* %12, align 4
  ret i32 %139
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

declare dso_local %struct.sk_buff* @dccp_make_response(%struct.sock*, %struct.dst_entry*, %struct.request_sock*) #1

declare dso_local %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dccp_v6_csum_finish(%struct.sk_buff*, %struct.in6_addr*, %struct.in6_addr*) #1

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
