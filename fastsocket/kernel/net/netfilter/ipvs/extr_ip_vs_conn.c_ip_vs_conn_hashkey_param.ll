; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_hashkey_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_hashkey_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn_param = type { i32, i32, i32, %union.nf_inet_addr*, i32, %union.nf_inet_addr*, %struct.TYPE_2__*, i64 }
%union.nf_inet_addr = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.ip_vs_conn_param*, i32, i32)* }

@ip_vs_conn_rnd = common dso_local global i32 0, align 4
@ip_vs_conn_tab_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_conn_param*, i32)* @ip_vs_conn_hashkey_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_conn_hashkey_param(%struct.ip_vs_conn_param* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_vs_conn_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.nf_inet_addr*, align 8
  %7 = alloca i32, align 4
  store %struct.ip_vs_conn_param* %0, %struct.ip_vs_conn_param** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %4, align 8
  %9 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %4, align 8
  %14 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %13, i32 0, i32 6
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.ip_vs_conn_param*, i32, i32)*, i32 (%struct.ip_vs_conn_param*, i32, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.ip_vs_conn_param*, i32, i32)* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %12
  %20 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %4, align 8
  %21 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %20, i32 0, i32 6
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.ip_vs_conn_param*, i32, i32)*, i32 (%struct.ip_vs_conn_param*, i32, i32)** %23, align 8
  %25 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %4, align 8
  %26 = load i32, i32* @ip_vs_conn_rnd, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 %24(%struct.ip_vs_conn_param* %25, i32 %26, i32 %27)
  %29 = load i32, i32* @ip_vs_conn_tab_mask, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %3, align 4
  br label %62

31:                                               ; preds = %12, %2
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %4, align 8
  %40 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %39, i32 0, i32 5
  %41 = load %union.nf_inet_addr*, %union.nf_inet_addr** %40, align 8
  store %union.nf_inet_addr* %41, %union.nf_inet_addr** %6, align 8
  %42 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %4, align 8
  %43 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %7, align 4
  br label %52

45:                                               ; preds = %31
  %46 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %4, align 8
  %47 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %46, i32 0, i32 3
  %48 = load %union.nf_inet_addr*, %union.nf_inet_addr** %47, align 8
  store %union.nf_inet_addr* %48, %union.nf_inet_addr** %6, align 8
  %49 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %4, align 8
  %50 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %45, %38
  %53 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %4, align 8
  %54 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %4, align 8
  %57 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %union.nf_inet_addr*, %union.nf_inet_addr** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @ip_vs_conn_hashkey(i32 %55, i32 %58, %union.nf_inet_addr* %59, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %52, %19
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ip_vs_conn_hashkey(i32, i32, %union.nf_inet_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
