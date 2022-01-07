; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_udp.c_udp_conn_schedule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_udp.c_udp_conn_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_vs_protocol = type { i32 }
%struct.ip_vs_conn = type { i32 }
%struct.ip_vs_service = type { i32 }
%struct.udphdr = type { i32 }
%struct.ip_vs_iphdr = type { i32, i32, i32 }

@NF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.ip_vs_protocol*, i32*, %struct.ip_vs_conn**)* @udp_conn_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_conn_schedule(i32 %0, %struct.sk_buff* %1, %struct.ip_vs_protocol* %2, i32* %3, %struct.ip_vs_conn** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ip_vs_protocol*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ip_vs_conn**, align 8
  %12 = alloca %struct.ip_vs_service*, align 8
  %13 = alloca %struct.udphdr, align 4
  %14 = alloca %struct.udphdr*, align 8
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
  %23 = call %struct.udphdr* @skb_header_pointer(%struct.sk_buff* %20, i32 %22, i32 4, %struct.udphdr* %13)
  store %struct.udphdr* %23, %struct.udphdr** %14, align 8
  %24 = load %struct.udphdr*, %struct.udphdr** %14, align 8
  %25 = icmp eq %struct.udphdr* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* @NF_DROP, align 4
  %28 = load i32*, i32** %10, align 8
  store i32 %27, i32* %28, align 4
  store i32 0, i32* %6, align 4
  br label %69

29:                                               ; preds = %5
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %15, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %15, i32 0, i32 0
  %37 = load %struct.udphdr*, %struct.udphdr** %14, align 8
  %38 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.ip_vs_service* @ip_vs_service_get(i32 %30, i32 %33, i32 %35, i32* %36, i32 %39)
  store %struct.ip_vs_service* %40, %struct.ip_vs_service** %12, align 8
  %41 = load %struct.ip_vs_service*, %struct.ip_vs_service** %12, align 8
  %42 = icmp ne %struct.ip_vs_service* %41, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %29
  %44 = call i64 (...) @ip_vs_todrop()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.ip_vs_service*, %struct.ip_vs_service** %12, align 8
  %48 = call i32 @ip_vs_service_put(%struct.ip_vs_service* %47)
  %49 = load i32, i32* @NF_DROP, align 4
  %50 = load i32*, i32** %10, align 8
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %6, align 4
  br label %69

51:                                               ; preds = %43
  %52 = load %struct.ip_vs_service*, %struct.ip_vs_service** %12, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = call %struct.ip_vs_conn* @ip_vs_schedule(%struct.ip_vs_service* %52, %struct.sk_buff* %53)
  %55 = load %struct.ip_vs_conn**, %struct.ip_vs_conn*** %11, align 8
  store %struct.ip_vs_conn* %54, %struct.ip_vs_conn** %55, align 8
  %56 = load %struct.ip_vs_conn**, %struct.ip_vs_conn*** %11, align 8
  %57 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %56, align 8
  %58 = icmp ne %struct.ip_vs_conn* %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %51
  %60 = load %struct.ip_vs_service*, %struct.ip_vs_service** %12, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %9, align 8
  %63 = call i32 @ip_vs_leave(%struct.ip_vs_service* %60, %struct.sk_buff* %61, %struct.ip_vs_protocol* %62)
  %64 = load i32*, i32** %10, align 8
  store i32 %63, i32* %64, align 4
  store i32 0, i32* %6, align 4
  br label %69

65:                                               ; preds = %51
  %66 = load %struct.ip_vs_service*, %struct.ip_vs_service** %12, align 8
  %67 = call i32 @ip_vs_service_put(%struct.ip_vs_service* %66)
  br label %68

68:                                               ; preds = %65, %29
  store i32 1, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %59, %46, %26
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @ip_vs_fill_iphdr(i32, i32, %struct.ip_vs_iphdr*) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.udphdr*) #1

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
