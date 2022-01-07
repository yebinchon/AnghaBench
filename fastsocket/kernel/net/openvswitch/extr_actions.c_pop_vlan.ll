; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_pop_vlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_pop_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i64 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @pop_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pop_vlan(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call i32 @vlan_tx_tag_present(%struct.sk_buff* %6)
  %8 = call i64 @likely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  br label %40

13:                                               ; preds = %1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @ETH_P_8021Q, align 4
  %18 = call i64 @htons(i32 %17)
  %19 = icmp ne i64 %16, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %25 = icmp slt i64 %23, %24
  br label %26

26:                                               ; preds = %20, %13
  %27 = phi i1 [ true, %13 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %72

32:                                               ; preds = %26
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call i32 @__pop_vlan_tci(%struct.sk_buff* %33, i32* %4)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %72

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %10
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @ETH_P_8021Q, align 4
  %45 = call i64 @htons(i32 %44)
  %46 = icmp ne i64 %43, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %52 = icmp slt i64 %50, %51
  br label %53

53:                                               ; preds = %47, %40
  %54 = phi i1 [ true, %40 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = call i64 @likely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %72

59:                                               ; preds = %53
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = call i32 @__pop_vlan_tci(%struct.sk_buff* %60, i32* %4)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %72

67:                                               ; preds = %59
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @ntohs(i32 %69)
  %71 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %68, i32 %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %67, %65, %58, %37, %31
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vlan_tx_tag_present(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @__pop_vlan_tci(%struct.sk_buff*, i32*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
