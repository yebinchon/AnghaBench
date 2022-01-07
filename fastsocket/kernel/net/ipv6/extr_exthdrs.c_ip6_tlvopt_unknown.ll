; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_exthdrs.c_ip6_tlvopt_unknown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_exthdrs.c_ip6_tlvopt_unknown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ICMPV6_UNK_OPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @ip6_tlvopt_unknown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_tlvopt_unknown(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = call i32* @skb_network_header(%struct.sk_buff* %6)
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 192
  %13 = ashr i32 %12, 6
  switch i32 %13, label %29 [
    i32 0, label %14
    i32 1, label %15
    i32 3, label %16
    i32 2, label %24
  ]

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %32

15:                                               ; preds = %2
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @ipv6_addr_is_multicast(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %29

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %2, %23
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load i32, i32* @ICMPV6_UNK_OPTION, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @icmpv6_param_prob(%struct.sk_buff* %25, i32 %26, i32 %27)
  store i32 0, i32* %3, align 4
  br label %32

29:                                               ; preds = %2, %22, %15
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @kfree_skb(%struct.sk_buff* %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %24, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_is_multicast(i32*) #1

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @icmpv6_param_prob(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
