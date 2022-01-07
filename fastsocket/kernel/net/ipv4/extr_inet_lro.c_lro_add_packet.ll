; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_add_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_add_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_lro_desc = type { %struct.sk_buff*, %struct.sk_buff* }
%struct.sk_buff = type { %struct.sk_buff*, i64, i64 }
%struct.iphdr = type { i32 }
%struct.tcphdr = type { i32 }
%struct.TYPE_2__ = type { %struct.sk_buff* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_lro_desc*, %struct.sk_buff*, %struct.iphdr*, %struct.tcphdr*)* @lro_add_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lro_add_packet(%struct.net_lro_desc* %0, %struct.sk_buff* %1, %struct.iphdr* %2, %struct.tcphdr* %3) #0 {
  %5 = alloca %struct.net_lro_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.net_lro_desc* %0, %struct.net_lro_desc** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.iphdr* %2, %struct.iphdr** %7, align 8
  store %struct.tcphdr* %3, %struct.tcphdr** %8, align 8
  %11 = load %struct.net_lro_desc*, %struct.net_lro_desc** %5, align 8
  %12 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %11, i32 0, i32 1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %13, %struct.sk_buff** %9, align 8
  %14 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %15 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %16 = call i32 @TCP_PAYLOAD_LENGTH(%struct.iphdr* %14, %struct.tcphdr* %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.net_lro_desc*, %struct.net_lro_desc** %5, align 8
  %18 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %19 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @lro_add_common(%struct.net_lro_desc* %17, %struct.iphdr* %18, %struct.tcphdr* %19, i32 %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %25, %27
  %29 = call i32 @skb_pull(%struct.sk_buff* %22, i64 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, %32
  store i64 %36, i64* %34, align 8
  %37 = load %struct.net_lro_desc*, %struct.net_lro_desc** %5, align 8
  %38 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %37, i32 0, i32 0
  %39 = load %struct.sk_buff*, %struct.sk_buff** %38, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = load %struct.net_lro_desc*, %struct.net_lro_desc** %5, align 8
  %44 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %43, i32 0, i32 0
  %45 = load %struct.sk_buff*, %struct.sk_buff** %44, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  store %struct.sk_buff* %42, %struct.sk_buff** %46, align 8
  br label %52

47:                                               ; preds = %4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store %struct.sk_buff* %48, %struct.sk_buff** %51, align 8
  br label %52

52:                                               ; preds = %47, %41
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = load %struct.net_lro_desc*, %struct.net_lro_desc** %5, align 8
  %55 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %54, i32 0, i32 0
  store %struct.sk_buff* %53, %struct.sk_buff** %55, align 8
  ret void
}

declare dso_local i32 @TCP_PAYLOAD_LENGTH(%struct.iphdr*, %struct.tcphdr*) #1

declare dso_local i32 @lro_add_common(%struct.net_lro_desc*, %struct.iphdr*, %struct.tcphdr*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
