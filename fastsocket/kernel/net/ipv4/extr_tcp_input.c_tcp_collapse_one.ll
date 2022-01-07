; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_collapse_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_collapse_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }

@LINUX_MIB_TCPRCVCOLLAPSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sock*, %struct.sk_buff*, %struct.sk_buff_head*)* @tcp_collapse_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @tcp_collapse_one(%struct.sock* %0, %struct.sk_buff* %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %8 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call i32 @skb_queue_is_last(%struct.sk_buff_head* %8, %struct.sk_buff* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call %struct.sk_buff* @skb_queue_next(%struct.sk_buff_head* %13, %struct.sk_buff* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %7, align 8
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %19 = call i32 @__skb_unlink(%struct.sk_buff* %17, %struct.sk_buff_head* %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call i32 @__kfree_skb(%struct.sk_buff* %20)
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = call i32 @sock_net(%struct.sock* %22)
  %24 = load i32, i32* @LINUX_MIB_TCPRCVCOLLAPSED, align 4
  %25 = call i32 @NET_INC_STATS_BH(i32 %23, i32 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %26
}

declare dso_local i32 @skb_queue_is_last(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_queue_next(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
