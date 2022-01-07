; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_checksum_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_checksum_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32 }
%struct.iphdr = type { i32, i32 }

@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @tcp_v4_checksum_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_v4_checksum_init(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %5)
  store %struct.iphdr* %6, %struct.iphdr** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %17 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %20 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @tcp_v4_check(i32 %15, i32 %18, i32 %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %12
  %28 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  store i32 0, i32* %2, align 4
  br label %54

31:                                               ; preds = %12
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %34 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %37 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IPPROTO_TCP, align 4
  %43 = call i32 @csum_tcpudp_nofold(i32 %35, i32 %38, i32 %41, i32 %42, i32 0)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp sle i32 %48, 76
  br i1 %49, label %50, label %53

50:                                               ; preds = %32
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = call i32 @__skb_checksum_complete(%struct.sk_buff* %51)
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %50, %27
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @tcp_v4_check(i32, i32, i32, i32) #1

declare dso_local i32 @csum_tcpudp_nofold(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__skb_checksum_complete(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
