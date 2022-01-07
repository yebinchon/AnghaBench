; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_check_tcp_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_lro.c_lro_check_tcp_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_lro_desc = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.iphdr = type { i64, i64 }
%struct.tcphdr = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_lro_desc*, %struct.iphdr*, %struct.tcphdr*)* @lro_check_tcp_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lro_check_tcp_conn(%struct.net_lro_desc* %0, %struct.iphdr* %1, %struct.tcphdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_lro_desc*, align 8
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  store %struct.net_lro_desc* %0, %struct.net_lro_desc** %5, align 8
  store %struct.iphdr* %1, %struct.iphdr** %6, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %7, align 8
  %8 = load %struct.net_lro_desc*, %struct.net_lro_desc** %5, align 8
  %9 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %14 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %47, label %17

17:                                               ; preds = %3
  %18 = load %struct.net_lro_desc*, %struct.net_lro_desc** %5, align 8
  %19 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %24 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %47, label %27

27:                                               ; preds = %17
  %28 = load %struct.net_lro_desc*, %struct.net_lro_desc** %5, align 8
  %29 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %34 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %47, label %37

37:                                               ; preds = %27
  %38 = load %struct.net_lro_desc*, %struct.net_lro_desc** %5, align 8
  %39 = getelementptr inbounds %struct.net_lro_desc, %struct.net_lro_desc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %44 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37, %27, %17, %3
  store i32 -1, i32* %4, align 4
  br label %49

48:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
