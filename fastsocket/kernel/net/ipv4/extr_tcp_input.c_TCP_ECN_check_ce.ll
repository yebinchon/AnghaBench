; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_TCP_ECN_check_ce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_TCP_ECN_check_ce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sock = type { i32 }

@TCP_ECN_OK = common dso_local global i32 0, align 4
@INET_ECN_MASK = common dso_local global i32 0, align 4
@TCP_ECN_SEEN = common dso_local global i32 0, align 4
@TCP_ECN_DEMAND_CWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_sock*, %struct.sk_buff*)* @TCP_ECN_check_ce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TCP_ECN_check_ce(%struct.tcp_sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.tcp_sock* %0, %struct.tcp_sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %6 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TCP_ECN_OK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @INET_ECN_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %37 [
    i32 128, label %19
    i32 129, label %31
  ]

19:                                               ; preds = %12
  %20 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %21 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TCP_ECN_SEEN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %28 = bitcast %struct.tcp_sock* %27 to %struct.sock*
  %29 = call i32 @tcp_enter_quickack_mode(%struct.sock* %28)
  br label %30

30:                                               ; preds = %26, %19
  br label %43

31:                                               ; preds = %12
  %32 = load i32, i32* @TCP_ECN_DEMAND_CWR, align 4
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %12, %31
  %38 = load i32, i32* @TCP_ECN_SEEN, align 4
  %39 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %40 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %11, %37, %30
  ret void
}

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @tcp_enter_quickack_mode(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
