; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_dev.c_vlan_dev_get_egress_qos_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_dev.c_vlan_dev_get_egress_qos_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.vlan_priority_tci_mapping = type { i32, %struct.vlan_priority_tci_mapping*, i32 }
%struct.TYPE_2__ = type { %struct.vlan_priority_tci_mapping** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*)* @vlan_dev_get_egress_qos_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_dev_get_egress_qos_mask(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.vlan_priority_tci_mapping*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.TYPE_2__* @vlan_dev_info(%struct.net_device* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.vlan_priority_tci_mapping**, %struct.vlan_priority_tci_mapping*** %9, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 15
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %10, i64 %15
  %17 = load %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %16, align 8
  store %struct.vlan_priority_tci_mapping* %17, %struct.vlan_priority_tci_mapping** %6, align 8
  br label %18

18:                                               ; preds = %33, %2
  %19 = load %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %6, align 8
  %20 = icmp ne %struct.vlan_priority_tci_mapping* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %6, align 8
  %23 = getelementptr inbounds %struct.vlan_priority_tci_mapping, %struct.vlan_priority_tci_mapping* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %6, align 8
  %31 = getelementptr inbounds %struct.vlan_priority_tci_mapping, %struct.vlan_priority_tci_mapping* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %3, align 4
  br label %38

33:                                               ; preds = %21
  %34 = load %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %6, align 8
  %35 = getelementptr inbounds %struct.vlan_priority_tci_mapping, %struct.vlan_priority_tci_mapping* %34, i32 0, i32 1
  %36 = load %struct.vlan_priority_tci_mapping*, %struct.vlan_priority_tci_mapping** %35, align 8
  store %struct.vlan_priority_tci_mapping* %36, %struct.vlan_priority_tci_mapping** %6, align 8
  br label %18

37:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %29
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_2__* @vlan_dev_info(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
