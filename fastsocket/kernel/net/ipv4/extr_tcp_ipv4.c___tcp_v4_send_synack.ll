; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c___tcp_v4_send_synack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c___tcp_v4_send_synack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.inet_request_sock = type { i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.tcphdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.request_sock*, %struct.dst_entry*)* @__tcp_v4_send_synack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tcp_v4_send_synack(%struct.sock* %0, %struct.request_sock* %1, %struct.dst_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.request_sock*, align 8
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca %struct.inet_request_sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.tcphdr*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.request_sock* %1, %struct.request_sock** %6, align 8
  store %struct.dst_entry* %2, %struct.dst_entry** %7, align 8
  %12 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %13 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %12)
  store %struct.inet_request_sock* %13, %struct.inet_request_sock** %8, align 8
  store i32 -1, i32* %9, align 4
  %14 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %15 = icmp ne %struct.dst_entry* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %19 = call %struct.dst_entry* @inet_csk_route_req(%struct.sock* %17, %struct.request_sock* %18)
  store %struct.dst_entry* %19, %struct.dst_entry** %7, align 8
  %20 = icmp eq %struct.dst_entry* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %70

22:                                               ; preds = %16, %3
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %25 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %26 = call %struct.sk_buff* @tcp_make_synack(%struct.sock* %23, %struct.dst_entry* %24, %struct.request_sock* %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %10, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %29, label %66

29:                                               ; preds = %22
  %30 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %31 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %30)
  store %struct.tcphdr* %31, %struct.tcphdr** %11, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %36 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %39 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @csum_partial(%struct.tcphdr* %41, i32 %44, i32 %47)
  %49 = call i32 @tcp_v4_check(i32 %34, i32 %37, i32 %40, i32 %48)
  %50 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %51 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %53 = load %struct.sock*, %struct.sock** %5, align 8
  %54 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %55 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %58 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %61 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ip_build_and_send_pkt(%struct.sk_buff* %52, %struct.sock* %53, i32 %56, i32 %59, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @net_xmit_eval(i32 %64)
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %29, %22
  %67 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %68 = call i32 @dst_release(%struct.dst_entry* %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %21
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.dst_entry* @inet_csk_route_req(%struct.sock*, %struct.request_sock*) #1

declare dso_local %struct.sk_buff* @tcp_make_synack(%struct.sock*, %struct.dst_entry*, %struct.request_sock*) #1

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @tcp_v4_check(i32, i32, i32, i32) #1

declare dso_local i32 @csum_partial(%struct.tcphdr*, i32, i32) #1

declare dso_local i32 @ip_build_and_send_pkt(%struct.sk_buff*, %struct.sock*, i32, i32, i32) #1

declare dso_local i32 @net_xmit_eval(i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
