; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c_first_packet_length.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c_first_packet_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }

@UDP_MIB_INERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @first_packet_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @first_packet_length(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sk_buff_head, align 4
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  store %struct.sk_buff_head* %8, %struct.sk_buff_head** %4, align 8
  %9 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %3)
  %10 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  br label %13

13:                                               ; preds = %23, %1
  %14 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %15 = call %struct.sk_buff* @skb_peek(%struct.sk_buff_head* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %5, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call i64 @udp_lib_checksum_complete(%struct.sk_buff* %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i1 [ false, %13 ], [ %20, %17 ]
  br i1 %22, label %23, label %35

23:                                               ; preds = %21
  %24 = load %struct.sock*, %struct.sock** %2, align 8
  %25 = call i32 @sock_net(%struct.sock* %24)
  %26 = load i32, i32* @UDP_MIB_INERRORS, align 4
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = call i32 @IS_UDPLITE(%struct.sock* %27)
  %29 = call i32 @UDP_INC_STATS_BH(i32 %25, i32 %26, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %32 = call i32 @__skb_unlink(%struct.sk_buff* %30, %struct.sk_buff_head* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %3, %struct.sk_buff* %33)
  br label %13

35:                                               ; preds = %21
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  br label %43

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %41, %38 ], [ 0, %42 ]
  store i32 %44, i32* %6, align 4
  %45 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %46 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock_bh(i32* %46)
  %48 = call i32 @skb_queue_empty(%struct.sk_buff_head* %3)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %43
  %51 = load %struct.sock*, %struct.sock** %2, align 8
  %52 = call i32 @lock_sock(%struct.sock* %51)
  %53 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %3)
  %54 = load %struct.sock*, %struct.sock** %2, align 8
  %55 = call i32 @sk_mem_reclaim_partial(%struct.sock* %54)
  %56 = load %struct.sock*, %struct.sock** %2, align 8
  %57 = call i32 @release_sock(%struct.sock* %56)
  br label %58

58:                                               ; preds = %50, %43
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(%struct.sk_buff_head*) #1

declare dso_local i64 @udp_lib_checksum_complete(%struct.sk_buff*) #1

declare dso_local i32 @UDP_INC_STATS_BH(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @IS_UDPLITE(%struct.sock*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #1

declare dso_local i32 @sk_mem_reclaim_partial(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
