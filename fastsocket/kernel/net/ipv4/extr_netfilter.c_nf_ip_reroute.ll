; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_netfilter.c_nf_ip_reroute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_netfilter.c_nf_ip_reroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nf_queue_entry = type { i64 }
%struct.ip_rt_info = type { i64, i64, i64, i64 }
%struct.iphdr = type { i64, i64, i64 }

@NF_INET_LOCAL_OUT = common dso_local global i64 0, align 8
@RTN_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_queue_entry*)* @nf_ip_reroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_ip_reroute(%struct.sk_buff* %0, %struct.nf_queue_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nf_queue_entry*, align 8
  %6 = alloca %struct.ip_rt_info*, align 8
  %7 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nf_queue_entry* %1, %struct.nf_queue_entry** %5, align 8
  %8 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %5, align 8
  %9 = call %struct.ip_rt_info* @nf_queue_entry_reroute(%struct.nf_queue_entry* %8)
  store %struct.ip_rt_info* %9, %struct.ip_rt_info** %6, align 8
  %10 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %5, align 8
  %11 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NF_INET_LOCAL_OUT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %16)
  store %struct.iphdr* %17, %struct.iphdr** %7, align 8
  %18 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %19 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ip_rt_info*, %struct.ip_rt_info** %6, align 8
  %22 = getelementptr inbounds %struct.ip_rt_info, %struct.ip_rt_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %15
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ip_rt_info*, %struct.ip_rt_info** %6, align 8
  %30 = getelementptr inbounds %struct.ip_rt_info, %struct.ip_rt_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %25
  %34 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %35 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ip_rt_info*, %struct.ip_rt_info** %6, align 8
  %38 = getelementptr inbounds %struct.ip_rt_info, %struct.ip_rt_info* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ip_rt_info*, %struct.ip_rt_info** %6, align 8
  %46 = getelementptr inbounds %struct.ip_rt_info, %struct.ip_rt_info* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %41, %33, %25, %15
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = load i32, i32* @RTN_UNSPEC, align 4
  %52 = call i32 @ip_route_me_harder(%struct.sk_buff* %50, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %55

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %2
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.ip_rt_info* @nf_queue_entry_reroute(%struct.nf_queue_entry*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_route_me_harder(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
