; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_set_tcp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_set_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ovs_key_tcp = type { i64, i64 }
%struct.tcphdr = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ovs_key_tcp*)* @set_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_tcp(%struct.sk_buff* %0, %struct.ovs_key_tcp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ovs_key_tcp*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ovs_key_tcp* %1, %struct.ovs_key_tcp** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i64 @skb_transport_offset(%struct.sk_buff* %9)
  %11 = add i64 %10, 24
  %12 = call i32 @make_writable(%struct.sk_buff* %8, i64 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %57

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %19)
  store %struct.tcphdr* %20, %struct.tcphdr** %6, align 8
  %21 = load %struct.ovs_key_tcp*, %struct.ovs_key_tcp** %5, align 8
  %22 = getelementptr inbounds %struct.ovs_key_tcp, %struct.ovs_key_tcp* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %25 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %31 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %30, i32 0, i32 0
  %32 = load %struct.ovs_key_tcp*, %struct.ovs_key_tcp** %5, align 8
  %33 = getelementptr inbounds %struct.ovs_key_tcp, %struct.ovs_key_tcp* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %36 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %35, i32 0, i32 2
  %37 = call i32 @set_tp_port(%struct.sk_buff* %29, i64* %31, i64 %34, i32* %36)
  br label %38

38:                                               ; preds = %28, %18
  %39 = load %struct.ovs_key_tcp*, %struct.ovs_key_tcp** %5, align 8
  %40 = getelementptr inbounds %struct.ovs_key_tcp, %struct.ovs_key_tcp* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %43 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %38
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %49 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %48, i32 0, i32 1
  %50 = load %struct.ovs_key_tcp*, %struct.ovs_key_tcp** %5, align 8
  %51 = getelementptr inbounds %struct.ovs_key_tcp, %struct.ovs_key_tcp* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %54 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %53, i32 0, i32 2
  %55 = call i32 @set_tp_port(%struct.sk_buff* %47, i64* %49, i64 %52, i32* %54)
  br label %56

56:                                               ; preds = %46, %38
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %16
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @make_writable(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @set_tp_port(%struct.sk_buff*, i64*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
