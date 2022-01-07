; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_tcp.c_tcp_conn_schedule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_tcp.c_tcp_conn_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_vs_protocol = type { i32 }
%struct.ip_vs_conn = type { i32 }
%struct.ip_vs_service = type { i32 }
%struct.tcphdr = type { i32, i64 }
%struct.ip_vs_iphdr = type { i32, i32, i32 }

@NF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.ip_vs_protocol*, i32*, %struct.ip_vs_conn**)* @tcp_conn_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_conn_schedule(i32 %0, %struct.sk_buff* %1, %struct.ip_vs_protocol* %2, i32* %3, %struct.ip_vs_conn** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ip_vs_protocol*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ip_vs_conn**, align 8
  %12 = alloca %struct.ip_vs_service*, align 8
  %13 = alloca %struct.tcphdr, align 8
  %14 = alloca %struct.tcphdr*, align 8
  %15 = alloca %struct.ip_vs_iphdr, align 4
  store i32 %0, i32* %7, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.ip_vs_protocol* %2, %struct.ip_vs_protocol** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.ip_vs_conn** %4, %struct.ip_vs_conn*** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = call i32 @skb_network_header(%struct.sk_buff* %17)
  %19 = call i32 @ip_vs_fill_iphdr(i32 %16, i32 %18, %struct.ip_vs_iphdr* %15)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %15, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %20, i32 %22, i32 16, %struct.tcphdr* %13)
  store %struct.tcphdr* %23, %struct.tcphdr** %14, align 8
  %24 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %25 = icmp eq %struct.tcphdr* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* @NF_DROP, align 4
  %28 = load i32*, i32** %10, align 8
  store i32 %27, i32* %28, align 4
  store i32 0, i32* %6, align 4
  br label %73

29:                                               ; preds = %5
  %30 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %31 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %72

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %15, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %15, i32 0, i32 0
  %42 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %43 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.ip_vs_service* @ip_vs_service_get(i32 %35, i32 %38, i32 %40, i32* %41, i32 %44)
  store %struct.ip_vs_service* %45, %struct.ip_vs_service** %12, align 8
  %46 = icmp ne %struct.ip_vs_service* %45, null
  br i1 %46, label %47, label %72

47:                                               ; preds = %34
  %48 = call i64 (...) @ip_vs_todrop()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.ip_vs_service*, %struct.ip_vs_service** %12, align 8
  %52 = call i32 @ip_vs_service_put(%struct.ip_vs_service* %51)
  %53 = load i32, i32* @NF_DROP, align 4
  %54 = load i32*, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  store i32 0, i32* %6, align 4
  br label %73

55:                                               ; preds = %47
  %56 = load %struct.ip_vs_service*, %struct.ip_vs_service** %12, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = call %struct.ip_vs_conn* @ip_vs_schedule(%struct.ip_vs_service* %56, %struct.sk_buff* %57)
  %59 = load %struct.ip_vs_conn**, %struct.ip_vs_conn*** %11, align 8
  store %struct.ip_vs_conn* %58, %struct.ip_vs_conn** %59, align 8
  %60 = load %struct.ip_vs_conn**, %struct.ip_vs_conn*** %11, align 8
  %61 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %60, align 8
  %62 = icmp ne %struct.ip_vs_conn* %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %55
  %64 = load %struct.ip_vs_service*, %struct.ip_vs_service** %12, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %9, align 8
  %67 = call i32 @ip_vs_leave(%struct.ip_vs_service* %64, %struct.sk_buff* %65, %struct.ip_vs_protocol* %66)
  %68 = load i32*, i32** %10, align 8
  store i32 %67, i32* %68, align 4
  store i32 0, i32* %6, align 4
  br label %73

69:                                               ; preds = %55
  %70 = load %struct.ip_vs_service*, %struct.ip_vs_service** %12, align 8
  %71 = call i32 @ip_vs_service_put(%struct.ip_vs_service* %70)
  br label %72

72:                                               ; preds = %69, %34, %29
  store i32 1, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %63, %50, %26
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @ip_vs_fill_iphdr(i32, i32, %struct.ip_vs_iphdr*) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local %struct.ip_vs_service* @ip_vs_service_get(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @ip_vs_todrop(...) #1

declare dso_local i32 @ip_vs_service_put(%struct.ip_vs_service*) #1

declare dso_local %struct.ip_vs_conn* @ip_vs_schedule(%struct.ip_vs_service*, %struct.sk_buff*) #1

declare dso_local i32 @ip_vs_leave(%struct.ip_vs_service*, %struct.sk_buff*, %struct.ip_vs_protocol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
