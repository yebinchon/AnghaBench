; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_syncookies.c_cookie_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_syncookies.c_cookie_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32, i32 }
%struct.tcphdr = type { i32, i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@COUNTER_TRIES = common dso_local global i32 0, align 4
@NUM_MSS = common dso_local global i64 0, align 8
@msstab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64)* @cookie_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cookie_check(%struct.sk_buff* %0, i64 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %9)
  store %struct.iphdr* %10, %struct.iphdr** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %11)
  store %struct.tcphdr* %12, %struct.tcphdr** %6, align 8
  %13 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %14 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ntohl(i32 %15)
  %17 = sub i64 %16, 1
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %20 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %26 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %29 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* @jiffies, align 4
  %33 = load i32, i32* @HZ, align 4
  %34 = mul nsw i32 %33, 60
  %35 = sdiv i32 %32, %34
  %36 = load i32, i32* @COUNTER_TRIES, align 4
  %37 = call i64 @check_tcp_syn_cookie(i64 %18, i32 %21, i32 %24, i32 %27, i32 %30, i64 %31, i32 %35, i32 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @NUM_MSS, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %2
  %42 = load i32*, i32** @msstab, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  br label %48

47:                                               ; preds = %2
  br label %48

48:                                               ; preds = %47, %41
  %49 = phi i32 [ %46, %41 ], [ 0, %47 ]
  ret i32 %49
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @check_tcp_syn_cookie(i64, i32, i32, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
