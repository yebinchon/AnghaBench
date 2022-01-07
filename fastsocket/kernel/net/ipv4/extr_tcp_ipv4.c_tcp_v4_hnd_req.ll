; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_hnd_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_hnd_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i64, i32, i32, i32, i32 }
%struct.iphdr = type { i32, i32 }
%struct.request_sock = type { i32 }

@tcp_hashinfo = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sock*, %struct.sk_buff*)* @tcp_v4_hnd_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @tcp_v4_hnd_req(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.request_sock**, align 8
  %10 = alloca %struct.request_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %11)
  store %struct.tcphdr* %12, %struct.tcphdr** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %13)
  store %struct.iphdr* %14, %struct.iphdr** %7, align 8
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %17 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %20 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.request_sock* @inet_csk_search_req(%struct.sock* %15, %struct.request_sock*** %9, i32 %18, i32 %21, i32 %24)
  store %struct.request_sock* %25, %struct.request_sock** %10, align 8
  %26 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %27 = icmp ne %struct.request_sock* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %32 = load %struct.request_sock**, %struct.request_sock*** %9, align 8
  %33 = call %struct.sock* @tcp_check_req(%struct.sock* %29, %struct.sk_buff* %30, %struct.request_sock* %31, %struct.request_sock** %32)
  store %struct.sock* %33, %struct.sock** %3, align 8
  br label %70

34:                                               ; preds = %2
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = call i32 @sock_net(%struct.sock* %35)
  %37 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %38 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %41 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %47 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = call i32 @inet_iif(%struct.sk_buff* %49)
  %51 = call %struct.sock* @inet_lookup_established(i32 %36, i32* @tcp_hashinfo, i32 %39, i32 %42, i32 %45, i32 %48, i32 %50)
  store %struct.sock* %51, %struct.sock** %8, align 8
  %52 = load %struct.sock*, %struct.sock** %8, align 8
  %53 = icmp ne %struct.sock* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %34
  %55 = load %struct.sock*, %struct.sock** %8, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TCP_TIME_WAIT, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.sock*, %struct.sock** %8, align 8
  %62 = call i32 @bh_lock_sock(%struct.sock* %61)
  %63 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %63, %struct.sock** %3, align 8
  br label %70

64:                                               ; preds = %54
  %65 = load %struct.sock*, %struct.sock** %8, align 8
  %66 = call i32 @inet_twsk(%struct.sock* %65)
  %67 = call i32 @inet_twsk_put(i32 %66)
  store %struct.sock* null, %struct.sock** %3, align 8
  br label %70

68:                                               ; preds = %34
  %69 = load %struct.sock*, %struct.sock** %4, align 8
  store %struct.sock* %69, %struct.sock** %3, align 8
  br label %70

70:                                               ; preds = %68, %64, %60, %28
  %71 = load %struct.sock*, %struct.sock** %3, align 8
  ret %struct.sock* %71
}

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.request_sock* @inet_csk_search_req(%struct.sock*, %struct.request_sock***, i32, i32, i32) #1

declare dso_local %struct.sock* @tcp_check_req(%struct.sock*, %struct.sk_buff*, %struct.request_sock*, %struct.request_sock**) #1

declare dso_local %struct.sock* @inet_lookup_established(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @inet_iif(%struct.sk_buff*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @inet_twsk_put(i32) #1

declare dso_local i32 @inet_twsk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
