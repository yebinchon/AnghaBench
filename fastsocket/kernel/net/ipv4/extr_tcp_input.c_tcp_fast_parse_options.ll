; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_fast_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_fast_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i32 }
%struct.tcp_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@TCPOLEN_TSTAMP_ALIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcphdr*, %struct.tcp_sock*)* @tcp_fast_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_fast_parse_options(%struct.sk_buff* %0, %struct.tcphdr* %1, %struct.tcp_sock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca %struct.tcp_sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %6, align 8
  store %struct.tcp_sock* %2, %struct.tcp_sock** %7, align 8
  %8 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %9 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp eq i64 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %15 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  store i32 0, i32* %4, align 4
  br label %46

17:                                               ; preds = %3
  %18 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %19 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %25 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = load i32, i32* @TCPOLEN_TSTAMP_ALIGNED, align 4
  %29 = ashr i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = add i64 1, %30
  %32 = icmp eq i64 %27, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %23
  %34 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %35 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %36 = call i64 @tcp_parse_aligned_timestamp(%struct.tcp_sock* %34, %struct.tcphdr* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %46

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %23, %17
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %44 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %43, i32 0, i32 0
  %45 = call i32 @tcp_parse_options(%struct.sk_buff* %42, %struct.TYPE_2__* %44, i32 1)
  store i32 1, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %38, %13
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @tcp_parse_aligned_timestamp(%struct.tcp_sock*, %struct.tcphdr*) #1

declare dso_local i32 @tcp_parse_options(%struct.sk_buff*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
