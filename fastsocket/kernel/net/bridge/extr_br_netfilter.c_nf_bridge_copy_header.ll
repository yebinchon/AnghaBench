; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_nf_bridge_copy_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_netfilter.c_nf_bridge_copy_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_bridge_copy_header(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load i32, i32* @ETH_HLEN, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call i32 @nf_bridge_encap_header_len(%struct.sk_buff* %7)
  %9 = add nsw i32 %6, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @skb_cow_head(%struct.sk_buff* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %32

17:                                               ; preds = %1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 0, %19
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %18, i32 %20, i32 %25, i32 %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = call i32 @nf_bridge_encap_header_len(%struct.sk_buff* %29)
  %31 = call i32 @__skb_push(%struct.sk_buff* %28, i32 %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %17, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @nf_bridge_encap_header_len(%struct.sk_buff*) #1

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
