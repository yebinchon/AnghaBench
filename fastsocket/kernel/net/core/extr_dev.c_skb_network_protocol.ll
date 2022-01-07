; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_skb_network_protocol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_skb_network_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.vlan_hdr = type { i64 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @skb_network_protocol(%struct.sk_buff* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlan_hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i32, i32* @ETH_HLEN, align 4
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %29, %1
  %12 = load i64, i64* %4, align 8
  %13 = load i32, i32* @ETH_P_8021Q, align 4
  %14 = call i64 @htons(i32 %13)
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %11
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @VLAN_HLEN, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @pskb_may_pull(%struct.sk_buff* %17, i64 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i64 0, i64* %2, align 8
  br label %47

29:                                               ; preds = %16
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = inttoptr i64 %35 to %struct.vlan_hdr*
  store %struct.vlan_hdr* %36, %struct.vlan_hdr** %6, align 8
  %37 = load %struct.vlan_hdr*, %struct.vlan_hdr** %6, align 8
  %38 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* @VLAN_HLEN, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  br label %11

45:                                               ; preds = %11
  %46 = load i64, i64* %4, align 8
  store i64 %46, i64* %2, align 8
  br label %47

47:                                               ; preds = %45, %28
  %48 = load i64, i64* %2, align 8
  ret i64 %48
}

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
