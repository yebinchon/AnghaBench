; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_forward.c_br_dev_queue_push_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_forward.c_br_dev_queue_push_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ETH_HLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_dev_queue_push_xmit(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %3 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %4 = call i64 @packet_length(%struct.sk_buff* %3)
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %4, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = call i32 @skb_is_gso(%struct.sk_buff* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %17 = call i32 @kfree_skb(%struct.sk_buff* %16)
  br label %34

18:                                               ; preds = %11, %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %20 = call i64 @nf_bridge_maybe_copy_header(%struct.sk_buff* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %24 = call i32 @kfree_skb(%struct.sk_buff* %23)
  br label %33

25:                                               ; preds = %18
  %26 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %27 = load i32, i32* @ETH_HLEN, align 4
  %28 = call i32 @skb_push(%struct.sk_buff* %26, i32 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %30 = call i32 @br_drop_fake_rtable(%struct.sk_buff* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %32 = call i32 @dev_queue_xmit(%struct.sk_buff* %31)
  br label %33

33:                                               ; preds = %25, %22
  br label %34

34:                                               ; preds = %33, %15
  ret i32 0
}

declare dso_local i64 @packet_length(%struct.sk_buff*) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @nf_bridge_maybe_copy_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @br_drop_fake_rtable(%struct.sk_buff*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
