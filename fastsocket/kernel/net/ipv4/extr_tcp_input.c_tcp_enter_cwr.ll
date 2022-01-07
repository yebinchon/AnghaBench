; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_enter_cwr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_enter_cwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32, i32, i64, i32, i32, i64, i64, i64 }
%struct.inet_connection_sock = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sock*)* }

@TCP_CA_CWR = common dso_local global i64 0, align 8
@tcp_time_stamp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_enter_cwr(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.inet_connection_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %9)
  store %struct.inet_connection_sock* %10, %struct.inet_connection_sock** %6, align 8
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %14 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %13, i32 0, i32 7
  store i64 0, i64* %14, align 8
  %15 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %16 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TCP_CA_CWR, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %2
  %21 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %22 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %21, i32 0, i32 6
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %27 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %29, align 8
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = call i32 %30(%struct.sock* %31)
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %25, %20
  %36 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %37 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %40 = call i64 @tcp_packets_in_flight(%struct.tcp_sock* %39)
  %41 = add nsw i64 %40, 1
  %42 = call i32 @min(i32 %38, i64 %41)
  %43 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %44 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %46 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %48 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %51 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @tcp_time_stamp, align 4
  %53 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %54 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %56 = call i32 @TCP_ECN_queue_cwr(%struct.tcp_sock* %55)
  %57 = load %struct.sock*, %struct.sock** %3, align 8
  %58 = load i64, i64* @TCP_CA_CWR, align 8
  %59 = call i32 @tcp_set_ca_state(%struct.sock* %57, i64 %58)
  br label %60

60:                                               ; preds = %35, %2
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @tcp_packets_in_flight(%struct.tcp_sock*) #1

declare dso_local i32 @TCP_ECN_queue_cwr(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_set_ca_state(%struct.sock*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
