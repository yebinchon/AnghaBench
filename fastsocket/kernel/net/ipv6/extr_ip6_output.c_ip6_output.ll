; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.inet6_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@IPSTATS_MIB_OUTDISCARDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_output(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.inet6_dev*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = call %struct.TYPE_7__* @skb_dst(%struct.sk_buff* %5)
  %7 = call %struct.inet6_dev* @ip6_dst_idev(%struct.TYPE_7__* %6)
  store %struct.inet6_dev* %7, %struct.inet6_dev** %4, align 8
  %8 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %9 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call %struct.TYPE_7__* @skb_dst(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_net(i32 %18)
  %20 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %21 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %22 = call i32 @IP6_INC_STATS(i32 %19, %struct.inet6_dev* %20, i32 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = call i32 @kfree_skb(%struct.sk_buff* %23)
  store i32 0, i32* %2, align 4
  br label %62

25:                                               ; preds = %1
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = call i64 @ip6_skb_dst_mtu(%struct.sk_buff* %29)
  %31 = icmp sgt i64 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call i32 @skb_is_gso(%struct.sk_buff* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %32, %25
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = call %struct.TYPE_7__* @skb_dst(%struct.sk_buff* %37)
  %39 = call i64 @dst_allfrag(%struct.TYPE_7__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %36
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = call %struct.TYPE_8__* @IP6CB(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = call %struct.TYPE_8__* @IP6CB(%struct.sk_buff* %51)
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %50, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %47, %36, %32
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = call i32 @ip6_fragment(%struct.sk_buff* %57, i32 (%struct.sk_buff*)* @ip6_output2)
  store i32 %58, i32* %2, align 4
  br label %62

59:                                               ; preds = %47, %41
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = call i32 @ip6_output2(%struct.sk_buff* %60)
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %56, %14
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.inet6_dev* @ip6_dst_idev(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IP6_INC_STATS(i32, %struct.inet6_dev*, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @ip6_skb_dst_mtu(%struct.sk_buff*) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @dst_allfrag(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_8__* @IP6CB(%struct.sk_buff*) #1

declare dso_local i32 @ip6_fragment(%struct.sk_buff*, i32 (%struct.sk_buff*)*) #1

declare dso_local i32 @ip6_output2(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
