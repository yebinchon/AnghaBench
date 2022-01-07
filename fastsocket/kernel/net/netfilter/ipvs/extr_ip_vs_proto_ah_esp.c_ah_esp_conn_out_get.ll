; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_ah_esp.c_ah_esp_conn_out_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_ah_esp.c_ah_esp_conn_out_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ip_vs_protocol = type { i32 }
%struct.ip_vs_iphdr = type { i32, i32 }
%struct.ip_vs_conn_param = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Unknown ISAKMP entry for inout packet %s%s %s->%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ICMP+\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_vs_conn* (i32, %struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_iphdr*, i32, i32)* @ah_esp_conn_out_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_vs_conn* @ah_esp_conn_out_get(i32 %0, %struct.sk_buff* %1, %struct.ip_vs_protocol* %2, %struct.ip_vs_iphdr* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ip_vs_protocol*, align 8
  %10 = alloca %struct.ip_vs_iphdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ip_vs_conn*, align 8
  %14 = alloca %struct.ip_vs_conn_param, align 4
  store i32 %0, i32* %7, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.ip_vs_protocol* %2, %struct.ip_vs_protocol** %9, align 8
  store %struct.ip_vs_iphdr* %3, %struct.ip_vs_iphdr** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %10, align 8
  %17 = load i32, i32* %12, align 4
  %18 = call i32 @ah_esp_conn_fill_param_proto(i32 %15, %struct.ip_vs_iphdr* %16, i32 %17, %struct.ip_vs_conn_param* %14)
  %19 = call %struct.ip_vs_conn* @ip_vs_conn_out_get(%struct.ip_vs_conn_param* %14)
  store %struct.ip_vs_conn* %19, %struct.ip_vs_conn** %13, align 8
  %20 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %21 = icmp ne %struct.ip_vs_conn* %20, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %27 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %9, align 8
  %28 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %10, align 8
  %32 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %31, i32 0, i32 1
  %33 = call i32 @IP_VS_DBG_ADDR(i32 %30, i32* %32)
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %10, align 8
  %36 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %35, i32 0, i32 0
  %37 = call i32 @IP_VS_DBG_ADDR(i32 %34, i32* %36)
  %38 = call i32 @IP_VS_DBG_BUF(i32 12, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %29, i32 %33, i32 %37)
  br label %39

39:                                               ; preds = %22, %6
  %40 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  ret %struct.ip_vs_conn* %40
}

declare dso_local i32 @ah_esp_conn_fill_param_proto(i32, %struct.ip_vs_iphdr*, i32, %struct.ip_vs_conn_param*) #1

declare dso_local %struct.ip_vs_conn* @ip_vs_conn_out_get(%struct.ip_vs_conn_param*) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
