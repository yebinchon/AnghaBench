; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_in_get_proto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_in_get_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ip_vs_protocol = type { i32 }
%struct.ip_vs_iphdr = type { i32 }
%struct.ip_vs_conn_param = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ip_vs_conn* @ip_vs_conn_in_get_proto(i32 %0, %struct.sk_buff* %1, %struct.ip_vs_protocol* %2, %struct.ip_vs_iphdr* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ip_vs_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ip_vs_protocol*, align 8
  %11 = alloca %struct.ip_vs_iphdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ip_vs_conn_param, align 4
  store i32 %0, i32* %8, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.ip_vs_protocol* %2, %struct.ip_vs_protocol** %10, align 8
  store %struct.ip_vs_iphdr* %3, %struct.ip_vs_iphdr** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %17 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %11, align 8
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %13, align 4
  %20 = call i64 @ip_vs_conn_fill_param_proto(i32 %15, %struct.sk_buff* %16, %struct.ip_vs_iphdr* %17, i32 %18, i32 %19, %struct.ip_vs_conn_param* %14)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %7, align 8
  br label %25

23:                                               ; preds = %6
  %24 = call %struct.ip_vs_conn* @ip_vs_conn_in_get(%struct.ip_vs_conn_param* %14)
  store %struct.ip_vs_conn* %24, %struct.ip_vs_conn** %7, align 8
  br label %25

25:                                               ; preds = %23, %22
  %26 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  ret %struct.ip_vs_conn* %26
}

declare dso_local i64 @ip_vs_conn_fill_param_proto(i32, %struct.sk_buff*, %struct.ip_vs_iphdr*, i32, i32, %struct.ip_vs_conn_param*) #1

declare dso_local %struct.ip_vs_conn* @ip_vs_conn_in_get(%struct.ip_vs_conn_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
