; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_hnd_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_hnd_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.sk_buff = type { i32 }
%struct.request_sock = type { i32 }
%struct.tcphdr = type { i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@tcp_hashinfo = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sock*, %struct.sk_buff*)* @tcp_v6_hnd_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @tcp_v6_hnd_req(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.request_sock*, align 8
  %7 = alloca %struct.request_sock**, align 8
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %10)
  store %struct.tcphdr* %11, %struct.tcphdr** %8, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %14 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i32 @inet6_iif(%struct.sk_buff* %22)
  %24 = call %struct.request_sock* @inet6_csk_search_req(%struct.sock* %12, %struct.request_sock*** %7, i32 %15, i32* %18, i32* %21, i32 %23)
  store %struct.request_sock* %24, %struct.request_sock** %6, align 8
  %25 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %26 = icmp ne %struct.request_sock* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %31 = load %struct.request_sock**, %struct.request_sock*** %7, align 8
  %32 = call %struct.sock* @tcp_check_req(%struct.sock* %28, %struct.sk_buff* %29, %struct.request_sock* %30, %struct.request_sock** %31)
  store %struct.sock* %32, %struct.sock** %3, align 8
  br label %70

33:                                               ; preds = %2
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = call i32 @sock_net(%struct.sock* %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %40 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %46 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ntohs(i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = call i32 @inet6_iif(%struct.sk_buff* %49)
  %51 = call %struct.sock* @__inet6_lookup_established(i32 %35, i32* @tcp_hashinfo, i32* %38, i32 %41, i32* %44, i32 %48, i32 %50)
  store %struct.sock* %51, %struct.sock** %9, align 8
  %52 = load %struct.sock*, %struct.sock** %9, align 8
  %53 = icmp ne %struct.sock* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %33
  %55 = load %struct.sock*, %struct.sock** %9, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TCP_TIME_WAIT, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.sock*, %struct.sock** %9, align 8
  %62 = call i32 @bh_lock_sock(%struct.sock* %61)
  %63 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %63, %struct.sock** %3, align 8
  br label %70

64:                                               ; preds = %54
  %65 = load %struct.sock*, %struct.sock** %9, align 8
  %66 = call i32 @inet_twsk(%struct.sock* %65)
  %67 = call i32 @inet_twsk_put(i32 %66)
  store %struct.sock* null, %struct.sock** %3, align 8
  br label %70

68:                                               ; preds = %33
  %69 = load %struct.sock*, %struct.sock** %4, align 8
  store %struct.sock* %69, %struct.sock** %3, align 8
  br label %70

70:                                               ; preds = %68, %64, %60, %27
  %71 = load %struct.sock*, %struct.sock** %3, align 8
  ret %struct.sock* %71
}

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.request_sock* @inet6_csk_search_req(%struct.sock*, %struct.request_sock***, i32, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @inet6_iif(%struct.sk_buff*) #1

declare dso_local %struct.sock* @tcp_check_req(%struct.sock*, %struct.sk_buff*, %struct.request_sock*, %struct.request_sock**) #1

declare dso_local %struct.sock* @__inet6_lookup_established(i32, i32*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @inet_twsk_put(i32) #1

declare dso_local i32 @inet_twsk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
