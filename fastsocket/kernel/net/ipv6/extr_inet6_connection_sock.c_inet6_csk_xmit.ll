; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_inet6_connection_sock.c_inet6_csk_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_inet6_connection_sock.c_inet6_csk_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sock* }
%struct.sock = type { i32, i64, i32, i32 }
%struct.inet_sock = type { i32, i32 }
%struct.ipv6_pinfo = type { %struct.TYPE_2__*, %struct.in6_addr, i32, i32, %struct.in6_addr }
%struct.TYPE_2__ = type { i64 }
%struct.in6_addr = type { i32 }
%struct.flowi = type { %struct.in6_addr, i32, i32, i32, i32, %struct.in6_addr, i32 }
%struct.dst_entry = type { i32 }
%struct.rt0_hdr = type { %struct.in6_addr* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_csk_xmit(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.inet_sock*, align 8
  %8 = alloca %struct.ipv6_pinfo*, align 8
  %9 = alloca %struct.flowi, align 4
  %10 = alloca %struct.dst_entry*, align 8
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca %struct.in6_addr, align 4
  %13 = alloca %struct.rt0_hdr*, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %6, align 8
  %18 = load %struct.sock*, %struct.sock** %6, align 8
  %19 = call %struct.inet_sock* @inet_sk(%struct.sock* %18)
  store %struct.inet_sock* %19, %struct.inet_sock** %7, align 8
  %20 = load %struct.sock*, %struct.sock** %6, align 8
  %21 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %20)
  store %struct.ipv6_pinfo* %21, %struct.ipv6_pinfo** %8, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %11, align 8
  %22 = call i32 @memset(%struct.flowi* %9, i32 0, i32 28)
  %23 = load %struct.sock*, %struct.sock** %6, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 6
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 0
  %28 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %29 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %28, i32 0, i32 1
  %30 = call i32 @ipv6_addr_copy(%struct.in6_addr* %27, %struct.in6_addr* %29)
  %31 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 5
  %32 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %33 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %32, i32 0, i32 4
  %34 = call i32 @ipv6_addr_copy(%struct.in6_addr* %31, %struct.in6_addr* %33)
  %35 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %36 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 4
  store i32 %37, i32* %38, align 4
  %39 = load %struct.sock*, %struct.sock** %6, align 8
  %40 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @IP6_ECN_flow_xmit(%struct.sock* %39, i32 %41)
  %43 = load %struct.sock*, %struct.sock** %6, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 3
  store i32 %45, i32* %46, align 4
  %47 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %48 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %52 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.sock*, %struct.sock** %6, align 8
  %56 = call i32 @security_sk_classify_flow(%struct.sock* %55, %struct.flowi* %9)
  %57 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %58 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = icmp ne %struct.TYPE_2__* %59, null
  br i1 %60, label %61, label %82

61:                                               ; preds = %2
  %62 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %63 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %61
  %69 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %70 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.rt0_hdr*
  store %struct.rt0_hdr* %74, %struct.rt0_hdr** %13, align 8
  %75 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 0
  %76 = call i32 @ipv6_addr_copy(%struct.in6_addr* %12, %struct.in6_addr* %75)
  %77 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 0
  %78 = load %struct.rt0_hdr*, %struct.rt0_hdr** %13, align 8
  %79 = getelementptr inbounds %struct.rt0_hdr, %struct.rt0_hdr* %78, i32 0, i32 0
  %80 = load %struct.in6_addr*, %struct.in6_addr** %79, align 8
  %81 = call i32 @ipv6_addr_copy(%struct.in6_addr* %77, %struct.in6_addr* %80)
  store %struct.in6_addr* %12, %struct.in6_addr** %11, align 8
  br label %82

82:                                               ; preds = %68, %61, %2
  %83 = load %struct.sock*, %struct.sock** %6, align 8
  %84 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %85 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.dst_entry* @__inet6_csk_dst_check(%struct.sock* %83, i32 %86)
  store %struct.dst_entry* %87, %struct.dst_entry** %10, align 8
  %88 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %89 = icmp eq %struct.dst_entry* %88, null
  br i1 %89, label %90, label %126

90:                                               ; preds = %82
  %91 = load %struct.sock*, %struct.sock** %6, align 8
  %92 = call i32 @ip6_dst_lookup(%struct.sock* %91, %struct.dst_entry** %10, %struct.flowi* %9)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load i32, i32* %14, align 4
  %97 = sub nsw i32 0, %96
  %98 = load %struct.sock*, %struct.sock** %6, align 8
  %99 = getelementptr inbounds %struct.sock, %struct.sock* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = call i32 @kfree_skb(%struct.sk_buff* %100)
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %3, align 4
  br label %141

103:                                              ; preds = %90
  %104 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %105 = icmp ne %struct.in6_addr* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 0
  %108 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %109 = call i32 @ipv6_addr_copy(%struct.in6_addr* %107, %struct.in6_addr* %108)
  br label %110

110:                                              ; preds = %106, %103
  %111 = load %struct.sock*, %struct.sock** %6, align 8
  %112 = call i32 @sock_net(%struct.sock* %111)
  %113 = load %struct.sock*, %struct.sock** %6, align 8
  %114 = call i32 @xfrm_lookup(i32 %112, %struct.dst_entry** %10, %struct.flowi* %9, %struct.sock* %113, i32 0)
  store i32 %114, i32* %14, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load %struct.sock*, %struct.sock** %6, align 8
  %118 = getelementptr inbounds %struct.sock, %struct.sock* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %120 = call i32 @kfree_skb(%struct.sk_buff* %119)
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %3, align 4
  br label %141

122:                                              ; preds = %110
  %123 = load %struct.sock*, %struct.sock** %6, align 8
  %124 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %125 = call i32 @__inet6_csk_dst_store(%struct.sock* %123, %struct.dst_entry* %124, i32* null, i32* null)
  br label %126

126:                                              ; preds = %122, %82
  %127 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %128 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %129 = call i32 @dst_clone(%struct.dst_entry* %128)
  %130 = call i32 @skb_dst_set(%struct.sk_buff* %127, i32 %129)
  %131 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 0
  %132 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %133 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %132, i32 0, i32 1
  %134 = call i32 @ipv6_addr_copy(%struct.in6_addr* %131, %struct.in6_addr* %133)
  %135 = load %struct.sock*, %struct.sock** %6, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %137 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %138 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %137, i32 0, i32 0
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = call i32 @ip6_xmit(%struct.sock* %135, %struct.sk_buff* %136, %struct.flowi* %9, %struct.TYPE_2__* %139, i32 0)
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %126, %116, %95
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local i32 @ipv6_addr_copy(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @IP6_ECN_flow_xmit(%struct.sock*, i32) #1

declare dso_local i32 @security_sk_classify_flow(%struct.sock*, %struct.flowi*) #1

declare dso_local %struct.dst_entry* @__inet6_csk_dst_check(%struct.sock*, i32) #1

declare dso_local i32 @ip6_dst_lookup(%struct.sock*, %struct.dst_entry**, %struct.flowi*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @xfrm_lookup(i32, %struct.dst_entry**, %struct.flowi*, %struct.sock*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @__inet6_csk_dst_store(%struct.sock*, %struct.dst_entry*, i32*, i32*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32) #1

declare dso_local i32 @dst_clone(%struct.dst_entry*) #1

declare dso_local i32 @ip6_xmit(%struct.sock*, %struct.sk_buff*, %struct.flowi*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
