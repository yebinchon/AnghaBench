; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_TPROXY.c_tproxy_handle_time_wait4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_TPROXY.c_tproxy_handle_time_wait4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }
%struct.iphdr = type { i64, i32, i32 }
%struct.tcphdr = type { i64, i32, i32, i32, i32, i64 }

@NFT_LOOKUP_LISTENER = common dso_local global i32 0, align 4
@tcp_death_row = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sk_buff*, i64, i64, %struct.sock*)* @tproxy_handle_time_wait4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @tproxy_handle_time_wait4(%struct.sk_buff* %0, i64 %1, i64 %2, %struct.sock* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca %struct.tcphdr, align 8
  %12 = alloca %struct.tcphdr*, align 8
  %13 = alloca %struct.sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.sock* %3, %struct.sock** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %14)
  store %struct.iphdr* %15, %struct.iphdr** %10, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i32 @ip_hdrlen(%struct.sk_buff* %17)
  %19 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %16, i32 %18, i32 32, %struct.tcphdr* %11)
  store %struct.tcphdr* %19, %struct.tcphdr** %12, align 8
  %20 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %21 = icmp eq %struct.tcphdr* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load %struct.sock*, %struct.sock** %9, align 8
  %24 = call i32 @inet_twsk(%struct.sock* %23)
  %25 = call i32 @inet_twsk_put(i32 %24)
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %98

26:                                               ; preds = %4
  %27 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %28 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %96

31:                                               ; preds = %26
  %32 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %33 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %96, label %36

36:                                               ; preds = %31
  %37 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %38 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %96, label %41

41:                                               ; preds = %36
  %42 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %43 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %96, label %46

46:                                               ; preds = %41
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_net(i32 %49)
  %51 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %52 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %55 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = load i64, i64* %7, align 8
  br label %65

61:                                               ; preds = %46
  %62 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %63 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  br label %65

65:                                               ; preds = %61, %59
  %66 = phi i64 [ %60, %59 ], [ %64, %61 ]
  %67 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %68 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i64, i64* %8, align 8
  br label %78

74:                                               ; preds = %65
  %75 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %76 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  br label %78

78:                                               ; preds = %74, %72
  %79 = phi i64 [ %73, %72 ], [ %77, %74 ]
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @NFT_LOOKUP_LISTENER, align 4
  %84 = call %struct.sock* @nf_tproxy_get_sock_v4(i32 %50, i32 %53, i32 %56, i64 %66, i32 %69, i64 %79, i32 %82, i32 %83)
  store %struct.sock* %84, %struct.sock** %13, align 8
  %85 = load %struct.sock*, %struct.sock** %13, align 8
  %86 = icmp ne %struct.sock* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %78
  %88 = load %struct.sock*, %struct.sock** %9, align 8
  %89 = call i32 @inet_twsk(%struct.sock* %88)
  %90 = call i32 @inet_twsk_deschedule(i32 %89, i32* @tcp_death_row)
  %91 = load %struct.sock*, %struct.sock** %9, align 8
  %92 = call i32 @inet_twsk(%struct.sock* %91)
  %93 = call i32 @inet_twsk_put(i32 %92)
  %94 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %94, %struct.sock** %9, align 8
  br label %95

95:                                               ; preds = %87, %78
  br label %96

96:                                               ; preds = %95, %41, %36, %31, %26
  %97 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %97, %struct.sock** %5, align 8
  br label %98

98:                                               ; preds = %96, %22
  %99 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %99
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @inet_twsk_put(i32) #1

declare dso_local i32 @inet_twsk(%struct.sock*) #1

declare dso_local %struct.sock* @nf_tproxy_get_sock_v4(i32, i32, i32, i64, i32, i64, i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @inet_twsk_deschedule(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
