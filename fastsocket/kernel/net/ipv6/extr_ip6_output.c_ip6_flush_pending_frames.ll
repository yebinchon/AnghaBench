; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_flush_pending_frames.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_flush_pending_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }

@IPSTATS_MIB_OUTDISCARDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip6_flush_pending_frames(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  br label %4

4:                                                ; preds = %21, %1
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 0
  %7 = call %struct.sk_buff* @__skb_dequeue_tail(i32* %6)
  store %struct.sk_buff* %7, %struct.sk_buff** %3, align 8
  %8 = icmp ne %struct.sk_buff* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = call i64 @skb_dst(%struct.sk_buff* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = call i32 @sock_net(%struct.sock* %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i64 @skb_dst(%struct.sk_buff* %16)
  %18 = call i32 @ip6_dst_idev(i64 %17)
  %19 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %20 = call i32 @IP6_INC_STATS(i32 %15, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %13, %9
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = call i32 @kfree_skb(%struct.sk_buff* %22)
  br label %4

24:                                               ; preds = %4
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = call i32 @inet_sk(%struct.sock* %25)
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = call i32 @inet6_sk(%struct.sock* %27)
  %29 = call i32 @ip6_cork_release(i32 %26, i32 %28)
  ret void
}

declare dso_local %struct.sk_buff* @__skb_dequeue_tail(i32*) #1

declare dso_local i64 @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @IP6_INC_STATS(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @ip6_dst_idev(i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ip6_cork_release(i32, i32) #1

declare dso_local i32 @inet_sk(%struct.sock*) #1

declare dso_local i32 @inet6_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
