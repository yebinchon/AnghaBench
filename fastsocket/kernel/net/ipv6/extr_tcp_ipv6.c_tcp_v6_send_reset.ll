; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_send_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_send_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64 }
%struct.tcphdr = type { i32, i64, i64, i32, i32, i64, i64 }
%struct.tcp_md5sig_key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @tcp_v6_send_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_v6_send_reset(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcphdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tcp_md5sig_key*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %9)
  store %struct.tcphdr* %10, %struct.tcphdr** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store %struct.tcp_md5sig_key* null, %struct.tcp_md5sig_key** %8, align 8
  %11 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %12 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %60

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @ipv6_unicast_destination(%struct.sk_buff* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %60

21:                                               ; preds = %16
  %22 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %23 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %28 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ntohl(i32 %29)
  store i64 %30, i64* %6, align 8
  br label %54

31:                                               ; preds = %21
  %32 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %33 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @ntohl(i32 %34)
  %36 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %37 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %41 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %49 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %47, %52
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %31, %26
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.tcp_md5sig_key*, %struct.tcp_md5sig_key** %8, align 8
  %59 = call i32 @tcp_v6_send_response(%struct.sk_buff* %55, i64 %56, i64 %57, i32 0, i32 0, %struct.tcp_md5sig_key* %58, i32 1)
  br label %60

60:                                               ; preds = %54, %20, %15
  ret void
}

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_unicast_destination(%struct.sk_buff*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @tcp_v6_send_response(%struct.sk_buff*, i64, i64, i32, i32, %struct.tcp_md5sig_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
