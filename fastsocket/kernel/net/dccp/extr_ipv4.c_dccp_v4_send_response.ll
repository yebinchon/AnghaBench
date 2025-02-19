; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv4.c_dccp_v4_send_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv4.c_dccp_v4_send_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dst_entry = type { i32 }
%struct.inet_request_sock = type { i32, i32, i32 }
%struct.dccp_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.request_sock*)* @dccp_v4_send_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_v4_send_response(%struct.sock* %0, %struct.request_sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.request_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca %struct.inet_request_sock*, align 8
  %9 = alloca %struct.dccp_hdr*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.request_sock* %1, %struct.request_sock** %4, align 8
  store i32 -1, i32* %5, align 4
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %12 = call %struct.dst_entry* @inet_csk_route_req(%struct.sock* %10, %struct.request_sock* %11)
  store %struct.dst_entry* %12, %struct.dst_entry** %7, align 8
  %13 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %14 = icmp eq %struct.dst_entry* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %53

16:                                               ; preds = %2
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %19 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %20 = call %struct.sk_buff* @dccp_make_response(%struct.sock* %17, %struct.dst_entry* %18, %struct.request_sock* %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %23, label %52

23:                                               ; preds = %16
  %24 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %25 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %24)
  store %struct.inet_request_sock* %25, %struct.inet_request_sock** %8, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff* %26)
  store %struct.dccp_hdr* %27, %struct.dccp_hdr** %9, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %30 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %33 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dccp_v4_csum_finish(%struct.sk_buff* %28, i32 %31, i32 %34)
  %36 = load %struct.dccp_hdr*, %struct.dccp_hdr** %9, align 8
  %37 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = load %struct.sock*, %struct.sock** %3, align 8
  %40 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %41 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %44 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %47 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ip_build_and_send_pkt(%struct.sk_buff* %38, %struct.sock* %39, i32 %42, i32 %45, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @net_xmit_eval(i32 %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %23, %16
  br label %53

53:                                               ; preds = %52, %15
  %54 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %55 = call i32 @dst_release(%struct.dst_entry* %54)
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.dst_entry* @inet_csk_route_req(%struct.sock*, %struct.request_sock*) #1

declare dso_local %struct.sk_buff* @dccp_make_response(%struct.sock*, %struct.dst_entry*, %struct.request_sock*) #1

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dccp_v4_csum_finish(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ip_build_and_send_pkt(%struct.sk_buff*, %struct.sock*, i32, i32, i32) #1

declare dso_local i32 @net_xmit_eval(i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
