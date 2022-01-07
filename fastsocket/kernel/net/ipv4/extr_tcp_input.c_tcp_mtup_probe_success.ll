; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_mtup_probe_success.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_mtup_probe_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i8*, i32, i64, i32, i8* }
%struct.inet_connection_sock = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@tcp_time_stamp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_mtup_probe_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_mtup_probe_success(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.inet_connection_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5)
  store %struct.tcp_sock* %6, %struct.tcp_sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %7)
  store %struct.inet_connection_sock* %8, %struct.inet_connection_sock** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call i8* @tcp_current_ssthresh(%struct.sock* %9)
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 5
  store i8* %10, i8** %12, align 8
  %13 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %14 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %18 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @tcp_mss_to_mtu(%struct.sock* %16, i32 %19)
  %21 = mul nsw i32 %15, %20
  %22 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %23 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %21, %25
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %30 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @tcp_time_stamp, align 4
  %32 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %33 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.sock*, %struct.sock** %2, align 8
  %35 = call i8* @tcp_current_ssthresh(%struct.sock* %34)
  %36 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %37 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %39 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %43 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %46 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  %48 = load %struct.sock*, %struct.sock** %2, align 8
  %49 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %50 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @tcp_sync_mss(%struct.sock* %48, i32 %51)
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i8* @tcp_current_ssthresh(%struct.sock*) #1

declare dso_local i32 @tcp_mss_to_mtu(%struct.sock*, i32) #1

declare dso_local i32 @tcp_sync_mss(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
