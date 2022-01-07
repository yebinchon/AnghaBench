; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_netfilter.c_nf_ip6_saveroute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_netfilter.c_nf_ip6_saveroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_queue_entry = type { i64 }
%struct.ip6_rt_info = type { i32, i32, i32 }
%struct.ipv6hdr = type { i32, i32 }

@NF_INET_LOCAL_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.nf_queue_entry*)* @nf_ip6_saveroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_ip6_saveroute(%struct.sk_buff* %0, %struct.nf_queue_entry* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nf_queue_entry*, align 8
  %5 = alloca %struct.ip6_rt_info*, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.nf_queue_entry* %1, %struct.nf_queue_entry** %4, align 8
  %7 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %8 = call %struct.ip6_rt_info* @nf_queue_entry_reroute(%struct.nf_queue_entry* %7)
  store %struct.ip6_rt_info* %8, %struct.ip6_rt_info** %5, align 8
  %9 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %4, align 8
  %10 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NF_INET_LOCAL_OUT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %15)
  store %struct.ipv6hdr* %16, %struct.ipv6hdr** %6, align 8
  %17 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %18 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ip6_rt_info*, %struct.ip6_rt_info** %5, align 8
  %21 = getelementptr inbounds %struct.ip6_rt_info, %struct.ip6_rt_info* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %23 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ip6_rt_info*, %struct.ip6_rt_info** %5, align 8
  %26 = getelementptr inbounds %struct.ip6_rt_info, %struct.ip6_rt_info* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ip6_rt_info*, %struct.ip6_rt_info** %5, align 8
  %31 = getelementptr inbounds %struct.ip6_rt_info, %struct.ip6_rt_info* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %14, %2
  ret void
}

declare dso_local %struct.ip6_rt_info* @nf_queue_entry_reroute(%struct.nf_queue_entry*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
