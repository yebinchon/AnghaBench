; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_output_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_output_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dst_entry = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.sk_buff*)* }

@IPSTATS_MIB_OUTNOROUTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ip6_output_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_output_finish(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %5)
  store %struct.dst_entry* %6, %struct.dst_entry** %4, align 8
  %7 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %8 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %13 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call i32 @neigh_hh_output(i64 %14, %struct.sk_buff* %15)
  store i32 %16, i32* %2, align 4
  br label %44

17:                                               ; preds = %1
  %18 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %19 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %24 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %26, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call i32 %27(%struct.sk_buff* %28)
  store i32 %29, i32* %2, align 4
  br label %44

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %33 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_net(i32 %34)
  %36 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %37 = call i32 @ip6_dst_idev(%struct.dst_entry* %36)
  %38 = load i32, i32* @IPSTATS_MIB_OUTNOROUTES, align 4
  %39 = call i32 @IP6_INC_STATS_BH(i32 %35, i32 %37, i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = call i32 @kfree_skb(%struct.sk_buff* %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %31, %22, %11
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @neigh_hh_output(i64, %struct.sk_buff*) #1

declare dso_local i32 @IP6_INC_STATS_BH(i32, i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @ip6_dst_idev(%struct.dst_entry*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
