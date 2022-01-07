; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_ah_esp.c_ah_esp_conn_fill_param_proto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_ah_esp.c_ah_esp_conn_fill_param_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_iphdr = type { i32, i32 }
%struct.ip_vs_conn_param = type { i32 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@PORT_ISAKMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ip_vs_iphdr*, i32, %struct.ip_vs_conn_param*)* @ah_esp_conn_fill_param_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ah_esp_conn_fill_param_proto(i32 %0, %struct.ip_vs_iphdr* %1, i32 %2, %struct.ip_vs_conn_param* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_vs_iphdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip_vs_conn_param*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.ip_vs_iphdr* %1, %struct.ip_vs_iphdr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ip_vs_conn_param* %3, %struct.ip_vs_conn_param** %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @IPPROTO_UDP, align 4
  %18 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %6, align 8
  %19 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %18, i32 0, i32 0
  %20 = load i32, i32* @PORT_ISAKMP, align 4
  %21 = call i32 @htons(i32 %20)
  %22 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %6, align 8
  %23 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %22, i32 0, i32 1
  %24 = load i32, i32* @PORT_ISAKMP, align 4
  %25 = call i32 @htons(i32 %24)
  %26 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %8, align 8
  %27 = call i32 @ip_vs_conn_fill_param(i32 %16, i32 %17, i32* %19, i32 %21, i32* %23, i32 %25, %struct.ip_vs_conn_param* %26)
  br label %41

28:                                               ; preds = %4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @IPPROTO_UDP, align 4
  %31 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %6, align 8
  %32 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %31, i32 0, i32 1
  %33 = load i32, i32* @PORT_ISAKMP, align 4
  %34 = call i32 @htons(i32 %33)
  %35 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %6, align 8
  %36 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %35, i32 0, i32 0
  %37 = load i32, i32* @PORT_ISAKMP, align 4
  %38 = call i32 @htons(i32 %37)
  %39 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %8, align 8
  %40 = call i32 @ip_vs_conn_fill_param(i32 %29, i32 %30, i32* %32, i32 %34, i32* %36, i32 %38, %struct.ip_vs_conn_param* %39)
  br label %41

41:                                               ; preds = %28, %15
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ip_vs_conn_fill_param(i32, i32, i32*, i32, i32*, i32, %struct.ip_vs_conn_param*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
