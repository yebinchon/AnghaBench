; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_parse_aligned_timestamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_parse_aligned_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8* }
%struct.tcphdr = type { i32 }

@TCPOPT_NOP = common dso_local global i32 0, align 4
@TCPOPT_TIMESTAMP = common dso_local global i32 0, align 4
@TCPOLEN_TIMESTAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_sock*, %struct.tcphdr*)* @tcp_parse_aligned_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_parse_aligned_timestamp(%struct.tcp_sock* %0, %struct.tcphdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcp_sock*, align 8
  %5 = alloca %struct.tcphdr*, align 8
  %6 = alloca i64*, align 8
  store %struct.tcp_sock* %0, %struct.tcp_sock** %4, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %5, align 8
  %7 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %8 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %7, i64 1
  %9 = bitcast %struct.tcphdr* %8 to i64*
  store i64* %9, i64** %6, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @TCPOPT_NOP, align 4
  %13 = shl i32 %12, 24
  %14 = load i32, i32* @TCPOPT_NOP, align 4
  %15 = shl i32 %14, 16
  %16 = or i32 %13, %15
  %17 = load i32, i32* @TCPOPT_TIMESTAMP, align 4
  %18 = shl i32 %17, 8
  %19 = or i32 %16, %18
  %20 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %21 = or i32 %19, %20
  %22 = call i64 @htonl(i32 %21)
  %23 = icmp eq i64 %11, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %2
  %25 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %26 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = getelementptr inbounds i64, i64* %28, i32 1
  store i64* %29, i64** %6, align 8
  %30 = load i64*, i64** %6, align 8
  %31 = load i64, i64* %30, align 8
  %32 = call i8* @ntohl(i64 %31)
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i8* %32, i8** %35, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %6, align 8
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %38, align 8
  %40 = call i8* @ntohl(i64 %39)
  %41 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %42 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  store i32 1, i32* %3, align 4
  br label %45

44:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %24
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @htonl(i32) #1

declare dso_local i8* @ntohl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
