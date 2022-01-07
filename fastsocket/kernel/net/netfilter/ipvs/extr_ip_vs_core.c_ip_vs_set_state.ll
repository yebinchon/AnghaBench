; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_set_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ip_vs_protocol = type { i32 (%struct.ip_vs_conn.0*, i32, %struct.sk_buff*, %struct.ip_vs_protocol*)* }
%struct.ip_vs_conn.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_conn*, i32, %struct.sk_buff*, %struct.ip_vs_protocol*)* @ip_vs_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_set_state(%struct.ip_vs_conn* %0, i32 %1, %struct.sk_buff* %2, %struct.ip_vs_protocol* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_vs_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ip_vs_protocol*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.ip_vs_protocol* %3, %struct.ip_vs_protocol** %9, align 8
  %10 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %9, align 8
  %11 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %10, i32 0, i32 0
  %12 = load i32 (%struct.ip_vs_conn.0*, i32, %struct.sk_buff*, %struct.ip_vs_protocol*)*, i32 (%struct.ip_vs_conn.0*, i32, %struct.sk_buff*, %struct.ip_vs_protocol*)** %11, align 8
  %13 = icmp ne i32 (%struct.ip_vs_conn.0*, i32, %struct.sk_buff*, %struct.ip_vs_protocol*)* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %29

19:                                               ; preds = %4
  %20 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %9, align 8
  %21 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %20, i32 0, i32 0
  %22 = load i32 (%struct.ip_vs_conn.0*, i32, %struct.sk_buff*, %struct.ip_vs_protocol*)*, i32 (%struct.ip_vs_conn.0*, i32, %struct.sk_buff*, %struct.ip_vs_protocol*)** %21, align 8
  %23 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %24 = bitcast %struct.ip_vs_conn* %23 to %struct.ip_vs_conn.0*
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %9, align 8
  %28 = call i32 %22(%struct.ip_vs_conn.0* %24, i32 %25, %struct.sk_buff* %26, %struct.ip_vs_protocol* %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %19, %18
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
