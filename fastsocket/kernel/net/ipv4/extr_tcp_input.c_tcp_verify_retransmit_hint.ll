; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_verify_retransmit_hint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_verify_retransmit_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_sock*, %struct.sk_buff*)* @tcp_verify_retransmit_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_verify_retransmit_hint(%struct.tcp_sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.tcp_sock* %0, %struct.tcp_sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %6 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %5, i32 0, i32 2
  %7 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %8 = icmp eq %struct.sk_buff* %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %15 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %14, i32 0, i32 2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %17 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @before(i32 %13, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %9, %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %25 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %24, i32 0, i32 2
  store %struct.sk_buff* %23, %struct.sk_buff** %25, align 8
  br label %26

26:                                               ; preds = %22, %9
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %37 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @after(i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %31, %26
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %47 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %41, %31
  ret void
}

declare dso_local i64 @before(i32, i32) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @after(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
