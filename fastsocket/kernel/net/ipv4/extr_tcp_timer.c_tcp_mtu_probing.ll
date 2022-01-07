; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_timer.c_tcp_mtu_probing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_timer.c_tcp_mtu_probing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_connection_sock = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sock = type { i32 }
%struct.tcp_sock = type { i64 }

@sysctl_tcp_mtu_probing = common dso_local global i64 0, align 8
@sysctl_tcp_base_mss = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet_connection_sock*, %struct.sock*)* @tcp_mtu_probing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_mtu_probing(%struct.inet_connection_sock* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.inet_connection_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca i32, align 4
  store %struct.inet_connection_sock* %0, %struct.inet_connection_sock** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %7 = load i64, i64* @sysctl_tcp_mtu_probing, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %11 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %9
  %16 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %17 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %21 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @tcp_sync_mss(%struct.sock* %19, i32 %22)
  br label %54

24:                                               ; preds = %9
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %25)
  store %struct.tcp_sock* %26, %struct.tcp_sock** %5, align 8
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %29 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @tcp_mtu_to_mss(%struct.sock* %27, i32 %31)
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @sysctl_tcp_base_mss, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @min(i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %39 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 68, %40
  %42 = call i32 @max(i32 %37, i64 %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @tcp_mss_to_mtu(%struct.sock* %43, i32 %44)
  %46 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %47 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %51 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @tcp_sync_mss(%struct.sock* %49, i32 %52)
  br label %54

54:                                               ; preds = %24, %15
  br label %55

55:                                               ; preds = %54, %2
  ret void
}

declare dso_local i32 @tcp_sync_mss(%struct.sock*, i32) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_mtu_to_mss(%struct.sock*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @tcp_mss_to_mtu(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
