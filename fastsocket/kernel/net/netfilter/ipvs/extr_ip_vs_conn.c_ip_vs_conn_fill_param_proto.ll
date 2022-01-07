; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_fill_param_proto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_fill_param_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_vs_iphdr = type { i32, i32, i32 }
%struct.ip_vs_conn_param = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.ip_vs_iphdr*, i32, i32, %struct.ip_vs_conn_param*)* @ip_vs_conn_fill_param_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_conn_fill_param_proto(i32 %0, %struct.sk_buff* %1, %struct.ip_vs_iphdr* %2, i32 %3, i32 %4, %struct.ip_vs_conn_param* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ip_vs_iphdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ip_vs_conn_param*, align 8
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.ip_vs_iphdr* %2, %struct.ip_vs_iphdr** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.ip_vs_conn_param* %5, %struct.ip_vs_conn_param** %13, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %17 = load i32, i32* %11, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %19 = call i32* @skb_header_pointer(%struct.sk_buff* %16, i32 %17, i32 8, i32* %18)
  store i32* %19, i32** %15, align 8
  %20 = load i32*, i32** %15, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %65

23:                                               ; preds = %6
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %10, align 8
  %33 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %10, align 8
  %36 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %35, i32 0, i32 0
  %37 = load i32*, i32** %15, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %10, align 8
  %41 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %40, i32 0, i32 1
  %42 = load i32*, i32** %15, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %13, align 8
  %46 = call i32 @ip_vs_conn_fill_param(i32 %31, i32 %34, i32* %36, i32 %39, i32* %41, i32 %44, %struct.ip_vs_conn_param* %45)
  br label %64

47:                                               ; preds = %23
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %10, align 8
  %50 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %10, align 8
  %53 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %52, i32 0, i32 1
  %54 = load i32*, i32** %15, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %10, align 8
  %58 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %57, i32 0, i32 0
  %59 = load i32*, i32** %15, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %13, align 8
  %63 = call i32 @ip_vs_conn_fill_param(i32 %48, i32 %51, i32* %53, i32 %56, i32* %58, i32 %61, %struct.ip_vs_conn_param* %62)
  br label %64

64:                                               ; preds = %47, %30
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %22
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32* @skb_header_pointer(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ip_vs_conn_fill_param(i32, i32, i32*, i32, i32*, i32, %struct.ip_vs_conn_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
