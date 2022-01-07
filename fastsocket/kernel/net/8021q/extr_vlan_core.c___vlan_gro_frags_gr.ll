; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_core.c___vlan_gro_frags_gr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_core.c___vlan_gro_frags_gr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.vlan_group = type { i32 }
%struct.sk_buff = type { i32, i32 }

@GRO_DROP = common dso_local global i32 0, align 4
@GRO_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, %struct.vlan_group*, i32)* @__vlan_gro_frags_gr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vlan_gro_frags_gr(%struct.napi_struct* %0, %struct.vlan_group* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.napi_struct*, align 8
  %6 = alloca %struct.vlan_group*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.napi_struct* %0, %struct.napi_struct** %5, align 8
  store %struct.vlan_group* %1, %struct.vlan_group** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %10 = call %struct.sk_buff* @napi_frags_skb(%struct.napi_struct* %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %8, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @GRO_DROP, align 4
  store i32 %14, i32* %4, align 4
  br label %47

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = call i64 @netpoll_rx_on(%struct.sk_buff* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @eth_type_trans(%struct.sk_buff* %20, i32 %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = load %struct.vlan_group*, %struct.vlan_group** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @vlan_hwaccel_receive_skb(%struct.sk_buff* %27, %struct.vlan_group* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = load i32, i32* @GRO_DROP, align 4
  br label %36

34:                                               ; preds = %19
  %35 = load i32, i32* @GRO_NORMAL, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %4, align 4
  br label %47

38:                                               ; preds = %15
  %39 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %42 = load %struct.vlan_group*, %struct.vlan_group** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = call i32 @vlan_gro_common(%struct.napi_struct* %41, %struct.vlan_group* %42, i32 %43, %struct.sk_buff* %44)
  %46 = call i32 @napi_frags_finish(%struct.napi_struct* %39, %struct.sk_buff* %40, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %38, %36, %13
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.sk_buff* @napi_frags_skb(%struct.napi_struct*) #1

declare dso_local i64 @netpoll_rx_on(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i64 @vlan_hwaccel_receive_skb(%struct.sk_buff*, %struct.vlan_group*, i32) #1

declare dso_local i32 @napi_frags_finish(%struct.napi_struct*, %struct.sk_buff*, i32) #1

declare dso_local i32 @vlan_gro_common(%struct.napi_struct*, %struct.vlan_group*, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
