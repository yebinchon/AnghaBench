; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv6.c_dccp_v6_hnd_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv6.c_dccp_v6_hnd_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.sk_buff = type { i32 }
%struct.dccp_hdr = type { i32, i32 }
%struct.ipv6hdr = type { i32, i32 }
%struct.request_sock = type { i32 }

@dccp_hashinfo = common dso_local global i32 0, align 4
@DCCP_TIME_WAIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sock*, %struct.sk_buff*)* @dccp_v6_hnd_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @dccp_v6_hnd_req(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.dccp_hdr*, align 8
  %7 = alloca %struct.ipv6hdr*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.request_sock**, align 8
  %10 = alloca %struct.request_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff* %11)
  store %struct.dccp_hdr* %12, %struct.dccp_hdr** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %13)
  store %struct.ipv6hdr* %14, %struct.ipv6hdr** %7, align 8
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %17 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %20 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %19, i32 0, i32 1
  %21 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %22 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %21, i32 0, i32 0
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @inet6_iif(%struct.sk_buff* %23)
  %25 = call %struct.request_sock* @inet6_csk_search_req(%struct.sock* %15, %struct.request_sock*** %9, i32 %18, i32* %20, i32* %22, i32 %24)
  store %struct.request_sock* %25, %struct.request_sock** %10, align 8
  %26 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %27 = icmp ne %struct.request_sock* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %32 = load %struct.request_sock**, %struct.request_sock*** %9, align 8
  %33 = call %struct.sock* @dccp_check_req(%struct.sock* %29, %struct.sk_buff* %30, %struct.request_sock* %31, %struct.request_sock** %32)
  store %struct.sock* %33, %struct.sock** %3, align 8
  br label %69

34:                                               ; preds = %2
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = call i32 @sock_net(%struct.sock* %35)
  %37 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %38 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %37, i32 0, i32 1
  %39 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %40 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %43 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %42, i32 0, i32 0
  %44 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %45 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ntohs(i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call i32 @inet6_iif(%struct.sk_buff* %48)
  %50 = call %struct.sock* @__inet6_lookup_established(i32 %36, i32* @dccp_hashinfo, i32* %38, i32 %41, i32* %43, i32 %47, i32 %49)
  store %struct.sock* %50, %struct.sock** %8, align 8
  %51 = load %struct.sock*, %struct.sock** %8, align 8
  %52 = icmp ne %struct.sock* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %34
  %54 = load %struct.sock*, %struct.sock** %8, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DCCP_TIME_WAIT, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.sock*, %struct.sock** %8, align 8
  %61 = call i32 @bh_lock_sock(%struct.sock* %60)
  %62 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %62, %struct.sock** %3, align 8
  br label %69

63:                                               ; preds = %53
  %64 = load %struct.sock*, %struct.sock** %8, align 8
  %65 = call i32 @inet_twsk(%struct.sock* %64)
  %66 = call i32 @inet_twsk_put(i32 %65)
  store %struct.sock* null, %struct.sock** %3, align 8
  br label %69

67:                                               ; preds = %34
  %68 = load %struct.sock*, %struct.sock** %4, align 8
  store %struct.sock* %68, %struct.sock** %3, align 8
  br label %69

69:                                               ; preds = %67, %63, %59, %28
  %70 = load %struct.sock*, %struct.sock** %3, align 8
  ret %struct.sock* %70
}

declare dso_local %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.request_sock* @inet6_csk_search_req(%struct.sock*, %struct.request_sock***, i32, i32*, i32*, i32) #1

declare dso_local i32 @inet6_iif(%struct.sk_buff*) #1

declare dso_local %struct.sock* @dccp_check_req(%struct.sock*, %struct.sk_buff*, %struct.request_sock*, %struct.request_sock**) #1

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
