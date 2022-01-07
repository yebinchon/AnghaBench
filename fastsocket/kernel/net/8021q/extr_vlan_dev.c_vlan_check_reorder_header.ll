; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_dev.c_vlan_check_reorder_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_dev.c_vlan_check_reorder_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@VLAN_FLAG_REORDER_HDR = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@VLAN_ETH_HLEN = common dso_local global i64 0, align 8
@VLAN_HLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*)* @vlan_check_reorder_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @vlan_check_reorder_header(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %3 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = call %struct.TYPE_2__* @vlan_dev_info(i32 %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @VLAN_FLAG_REORDER_HDR, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = call i32 @skb_headroom(%struct.sk_buff* %14)
  %16 = call i64 @skb_cow(%struct.sk_buff* %13, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %19

19:                                               ; preds = %18, %12
  %20 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ETH_HLEN, align 8
  %27 = sub nsw i64 %25, %26
  %28 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %32 = sub nsw i64 %30, %31
  %33 = call i32 @memmove(i64 %27, i64 %32, i32 12)
  %34 = load i64, i64* @VLAN_HLEN, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 8
  br label %41

41:                                               ; preds = %22, %19
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %43
}

declare dso_local %struct.TYPE_2__* @vlan_dev_info(i32) #1

declare dso_local i64 @skb_cow(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
