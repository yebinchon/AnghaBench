; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_hashkey_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_hashkey_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.ip_vs_conn_param = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_conn*)* @ip_vs_conn_hashkey_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_conn_hashkey_conn(%struct.ip_vs_conn* %0) #0 {
  %2 = alloca %struct.ip_vs_conn*, align 8
  %3 = alloca %struct.ip_vs_conn_param, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %2, align 8
  %4 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %5 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %8 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %11 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %10, i32 0, i32 4
  %12 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %13 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ip_vs_conn_fill_param(i32 %6, i32 %9, i32* %11, i32 %14, i32* null, i32 0, %struct.ip_vs_conn_param* %3)
  %16 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %17 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %1
  %21 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %22 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %3, i32 0, i32 2
  store i64 %23, i64* %24, align 8
  %25 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %26 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %3, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %30 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %3, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  br label %33

33:                                               ; preds = %20, %1
  %34 = call i32 @ip_vs_conn_hashkey_param(%struct.ip_vs_conn_param* %3, i32 0)
  ret i32 %34
}

declare dso_local i32 @ip_vs_conn_fill_param(i32, i32, i32*, i32, i32*, i32, %struct.ip_vs_conn_param*) #1

declare dso_local i32 @ip_vs_conn_hashkey_param(%struct.ip_vs_conn_param*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
