; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_netfilter.c_nf_ip6_reroute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_netfilter.c_nf_ip6_reroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nf_queue_entry = type { i64 }
%struct.ip6_rt_info = type { i64, i32, i32 }
%struct.ipv6hdr = type { i32, i32 }

@NF_INET_LOCAL_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_queue_entry*)* @nf_ip6_reroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_ip6_reroute(%struct.sk_buff* %0, %struct.nf_queue_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nf_queue_entry*, align 8
  %6 = alloca %struct.ip6_rt_info*, align 8
  %7 = alloca %struct.ipv6hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nf_queue_entry* %1, %struct.nf_queue_entry** %5, align 8
  %8 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %5, align 8
  %9 = call %struct.ip6_rt_info* @nf_queue_entry_reroute(%struct.nf_queue_entry* %8)
  store %struct.ip6_rt_info* %9, %struct.ip6_rt_info** %6, align 8
  %10 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %5, align 8
  %11 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NF_INET_LOCAL_OUT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %16)
  store %struct.ipv6hdr* %17, %struct.ipv6hdr** %7, align 8
  %18 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %19 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %18, i32 0, i32 1
  %20 = load %struct.ip6_rt_info*, %struct.ip6_rt_info** %6, align 8
  %21 = getelementptr inbounds %struct.ip6_rt_info, %struct.ip6_rt_info* %20, i32 0, i32 2
  %22 = call i32 @ipv6_addr_equal(i32* %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %15
  %25 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %26 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %25, i32 0, i32 0
  %27 = load %struct.ip6_rt_info*, %struct.ip6_rt_info** %6, align 8
  %28 = getelementptr inbounds %struct.ip6_rt_info, %struct.ip6_rt_info* %27, i32 0, i32 1
  %29 = call i32 @ipv6_addr_equal(i32* %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ip6_rt_info*, %struct.ip6_rt_info** %6, align 8
  %36 = getelementptr inbounds %struct.ip6_rt_info, %struct.ip6_rt_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31, %24, %15
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i32 @ip6_route_me_harder(%struct.sk_buff* %40)
  store i32 %41, i32* %3, align 4
  br label %44

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %2
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.ip6_rt_info* @nf_queue_entry_reroute(%struct.nf_queue_entry*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_equal(i32*, i32*) #1

declare dso_local i32 @ip6_route_me_harder(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
