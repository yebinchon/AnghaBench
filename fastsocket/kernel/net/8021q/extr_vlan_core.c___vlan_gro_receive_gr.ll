; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_core.c___vlan_gro_receive_gr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_core.c___vlan_gro_receive_gr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.vlan_group = type { i32 }
%struct.sk_buff = type { i32 }

@GRO_DROP = common dso_local global i32 0, align 4
@GRO_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, %struct.vlan_group*, i32, %struct.sk_buff*)* @__vlan_gro_receive_gr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vlan_gro_receive_gr(%struct.napi_struct* %0, %struct.vlan_group* %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.napi_struct*, align 8
  %7 = alloca %struct.vlan_group*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.napi_struct* %0, %struct.napi_struct** %6, align 8
  store %struct.vlan_group* %1, %struct.vlan_group** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %11 = call i64 @netpoll_rx_on(%struct.sk_buff* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %15 = load %struct.vlan_group*, %struct.vlan_group** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @vlan_hwaccel_receive_skb(%struct.sk_buff* %14, %struct.vlan_group* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @GRO_DROP, align 4
  br label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @GRO_NORMAL, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %5, align 4
  br label %35

25:                                               ; preds = %4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %27 = call i32 @skb_gro_reset_offset(%struct.sk_buff* %26)
  %28 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %29 = load %struct.vlan_group*, %struct.vlan_group** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %32 = call i32 @vlan_gro_common(%struct.napi_struct* %28, %struct.vlan_group* %29, i32 %30, %struct.sk_buff* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = call i32 @napi_skb_finish(i32 %32, %struct.sk_buff* %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %25, %23
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i64 @netpoll_rx_on(%struct.sk_buff*) #1

declare dso_local i64 @vlan_hwaccel_receive_skb(%struct.sk_buff*, %struct.vlan_group*, i32) #1

declare dso_local i32 @skb_gro_reset_offset(%struct.sk_buff*) #1

declare dso_local i32 @napi_skb_finish(i32, %struct.sk_buff*) #1

declare dso_local i32 @vlan_gro_common(%struct.napi_struct*, %struct.vlan_group*, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
