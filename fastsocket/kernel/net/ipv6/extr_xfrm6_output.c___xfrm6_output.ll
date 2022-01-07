; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_output.c___xfrm6_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_output.c___xfrm6_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.dst_entry = type { %struct.xfrm_state* }
%struct.xfrm_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@XFRM_MODE_TUNNEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @__xfrm6_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xfrm6_output(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.xfrm_state*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %6)
  store %struct.dst_entry* %7, %struct.dst_entry** %4, align 8
  %8 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %9 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %8, i32 0, i32 0
  %10 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  store %struct.xfrm_state* %10, %struct.xfrm_state** %5, align 8
  %11 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %12 = icmp ne %struct.xfrm_state* %11, null
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %15 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XFRM_MODE_TUNNEL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %13
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = call i64 @ip6_skb_dst_mtu(%struct.sk_buff* %24)
  %26 = icmp sgt i64 %23, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call i32 @skb_is_gso(%struct.sk_buff* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27, %20
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %32)
  %34 = call i64 @dst_allfrag(%struct.dst_entry* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %27
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = call i32 @ip6_fragment(%struct.sk_buff* %37, i32 (%struct.sk_buff*)* @xfrm6_output_finish)
  store i32 %38, i32* %2, align 4
  br label %42

39:                                               ; preds = %31, %13, %1
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = call i32 @xfrm6_output_finish(%struct.sk_buff* %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @ip6_skb_dst_mtu(%struct.sk_buff*) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @dst_allfrag(%struct.dst_entry*) #1

declare dso_local i32 @ip6_fragment(%struct.sk_buff*, i32 (%struct.sk_buff*)*) #1

declare dso_local i32 @xfrm6_output_finish(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
