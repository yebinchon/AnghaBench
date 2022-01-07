; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___skb_gso_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___skb_gso_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @__skb_gso_segment(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @skb_needs_check(%struct.sk_buff* %9, i32 %10)
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i32 @skb_warn_bad_offload(%struct.sk_buff* %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i64 @skb_header_cloned(%struct.sk_buff* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call i32 @pskb_expand_head(%struct.sk_buff* %21, i32 0, i32 0, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.sk_buff* @ERR_PTR(i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %4, align 8
  br label %42

28:                                               ; preds = %20, %14
  br label %29

29:                                               ; preds = %28, %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i32 @skb_headroom(%struct.sk_buff* %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call %struct.TYPE_2__* @SKB_GSO_CB(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call i32 @skb_reset_mac_header(%struct.sk_buff* %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call i32 @skb_reset_mac_len(%struct.sk_buff* %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call %struct.sk_buff* @skb_mac_gso_segment(%struct.sk_buff* %39, i32 %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %4, align 8
  br label %42

42:                                               ; preds = %29, %25
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %43
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_needs_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_warn_bad_offload(%struct.sk_buff*) #1

declare dso_local i64 @skb_header_cloned(%struct.sk_buff*) #1

declare dso_local i32 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @SKB_GSO_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_len(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_mac_gso_segment(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
