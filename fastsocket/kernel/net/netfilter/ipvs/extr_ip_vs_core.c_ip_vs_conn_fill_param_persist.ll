; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_conn_fill_param_persist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_conn_fill_param_persist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ip_vs_conn_param*, %struct.sk_buff*)* }
%struct.sk_buff = type { i32 }
%union.nf_inet_addr = type { i32 }
%struct.ip_vs_conn_param = type { %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_service*, %struct.sk_buff*, i32, %union.nf_inet_addr*, i32, %union.nf_inet_addr*, i32, %struct.ip_vs_conn_param*)* @ip_vs_conn_fill_param_persist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_conn_fill_param_persist(%struct.ip_vs_service* %0, %struct.sk_buff* %1, i32 %2, %union.nf_inet_addr* %3, i32 %4, %union.nf_inet_addr* %5, i32 %6, %struct.ip_vs_conn_param* %7) #0 {
  %9 = alloca %struct.ip_vs_service*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %union.nf_inet_addr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %union.nf_inet_addr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ip_vs_conn_param*, align 8
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %9, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %10, align 8
  store i32 %2, i32* %11, align 4
  store %union.nf_inet_addr* %3, %union.nf_inet_addr** %12, align 8
  store i32 %4, i32* %13, align 4
  store %union.nf_inet_addr* %5, %union.nf_inet_addr** %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.ip_vs_conn_param* %7, %struct.ip_vs_conn_param** %16, align 8
  %17 = load %struct.ip_vs_service*, %struct.ip_vs_service** %9, align 8
  %18 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load %union.nf_inet_addr*, %union.nf_inet_addr** %12, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load %union.nf_inet_addr*, %union.nf_inet_addr** %14, align 8
  %24 = load i32, i32* %15, align 4
  %25 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %16, align 8
  %26 = call i32 @ip_vs_conn_fill_param(i32 %19, i32 %20, %union.nf_inet_addr* %21, i32 %22, %union.nf_inet_addr* %23, i32 %24, %struct.ip_vs_conn_param* %25)
  %27 = load %struct.ip_vs_service*, %struct.ip_vs_service** %9, align 8
  %28 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %16, align 8
  %31 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %30, i32 0, i32 0
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %31, align 8
  %32 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %16, align 8
  %33 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp ne %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %8
  %37 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %16, align 8
  %38 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.ip_vs_conn_param*, %struct.sk_buff*)*, i32 (%struct.ip_vs_conn_param*, %struct.sk_buff*)** %40, align 8
  %42 = icmp ne i32 (%struct.ip_vs_conn_param*, %struct.sk_buff*)* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %16, align 8
  %45 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.ip_vs_conn_param*, %struct.sk_buff*)*, i32 (%struct.ip_vs_conn_param*, %struct.sk_buff*)** %47, align 8
  %49 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %16, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %51 = call i32 %48(%struct.ip_vs_conn_param* %49, %struct.sk_buff* %50)
  br label %52

52:                                               ; preds = %43, %36, %8
  ret void
}

declare dso_local i32 @ip_vs_conn_fill_param(i32, i32, %union.nf_inet_addr*, i32, %union.nf_inet_addr*, i32, %struct.ip_vs_conn_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
