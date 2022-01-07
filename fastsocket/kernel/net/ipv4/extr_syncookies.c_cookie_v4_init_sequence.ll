; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_syncookies.c_cookie_v4_init_sequence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_syncookies.c_cookie_v4_init_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32, i32 }
%struct.tcphdr = type { i32, i32, i32 }

@msstab = common dso_local global i64* null, align 8
@LINUX_MIB_SYNCOOKIESSENT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cookie_v4_init_sequence(%struct.sock* %0, %struct.sk_buff* %1, i64* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %11)
  store %struct.iphdr* %12, %struct.iphdr** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %13)
  store %struct.tcphdr* %14, %struct.tcphdr** %8, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @tcp_synq_overflow(%struct.sock* %17)
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %29, %3
  %20 = load i64, i64* %10, align 8
  %21 = load i64*, i64** @msstab, align 8
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %20, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %19

32:                                               ; preds = %19
  %33 = load i64*, i64** @msstab, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  %39 = load i64*, i64** %6, align 8
  store i64 %38, i64* %39, align 8
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = call i32 @sock_net(%struct.sock* %40)
  %42 = load i32, i32* @LINUX_MIB_SYNCOOKIESSENT, align 4
  %43 = call i32 @NET_INC_STATS_BH(i32 %41, i32 %42)
  %44 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %45 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %48 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %51 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %54 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %57 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ntohl(i32 %58)
  %60 = load i32, i32* @jiffies, align 4
  %61 = load i32, i32* @HZ, align 4
  %62 = mul nsw i32 %61, 60
  %63 = sdiv i32 %60, %62
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @secure_tcp_syn_cookie(i32 %46, i32 %49, i32 %52, i32 %55, i32 %59, i32 %63, i32 %64)
  ret i32 %65
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @tcp_synq_overflow(%struct.sock*) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @secure_tcp_syn_cookie(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
