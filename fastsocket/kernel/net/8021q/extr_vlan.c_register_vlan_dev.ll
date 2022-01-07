; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_register_vlan_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_register_vlan_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.vlan_group*)* }
%struct.vlan_group = type { i32, i32, i32 }
%struct.vlan_dev_info = type { i32, %struct.net_device* }

@ENOBUFS = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_FILTER = common dso_local global i32 0, align 4
@vlan_rcu_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_vlan_dev(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vlan_dev_info*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlan_group*, align 8
  %9 = alloca %struct.vlan_group*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.vlan_dev_info* @vlan_dev_info(%struct.net_device* %11)
  store %struct.vlan_dev_info* %12, %struct.vlan_dev_info** %4, align 8
  %13 = load %struct.vlan_dev_info*, %struct.vlan_dev_info** %4, align 8
  %14 = getelementptr inbounds %struct.vlan_dev_info, %struct.vlan_dev_info* %13, i32 0, i32 1
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = load %struct.net_device_ops*, %struct.net_device_ops** %17, align 8
  store %struct.net_device_ops* %18, %struct.net_device_ops** %6, align 8
  %19 = load %struct.vlan_dev_info*, %struct.vlan_dev_info** %4, align 8
  %20 = getelementptr inbounds %struct.vlan_dev_info, %struct.vlan_dev_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  store %struct.vlan_group* null, %struct.vlan_group** %9, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call %struct.vlan_group* @__vlan_find_group(%struct.net_device* %22)
  store %struct.vlan_group* %23, %struct.vlan_group** %8, align 8
  %24 = load %struct.vlan_group*, %struct.vlan_group** %8, align 8
  %25 = icmp ne %struct.vlan_group* %24, null
  br i1 %25, label %41, label %26

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call %struct.vlan_group* @vlan_group_alloc(%struct.net_device* %27)
  store %struct.vlan_group* %28, %struct.vlan_group** %8, align 8
  store %struct.vlan_group* %28, %struct.vlan_group** %9, align 8
  %29 = load %struct.vlan_group*, %struct.vlan_group** %8, align 8
  %30 = icmp ne %struct.vlan_group* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOBUFS, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %121

34:                                               ; preds = %26
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = call i32 @vlan_gvrp_init_applicant(%struct.net_device* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %108

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.vlan_group*, %struct.vlan_group** %8, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @vlan_group_prealloc_vid(%struct.vlan_group* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %101

48:                                               ; preds = %41
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = call i32 @register_netdevice(%struct.net_device* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %101

54:                                               ; preds = %48
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = call i32 @dev_hold(%struct.net_device* %55)
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = call i32 @netif_stacked_transfer_operstate(%struct.net_device* %57, %struct.net_device* %58)
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = call i32 @linkwatch_fire_event(%struct.net_device* %60)
  %62 = load %struct.vlan_group*, %struct.vlan_group** %8, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = call i32 @vlan_group_set_device(%struct.vlan_group* %62, i32 %63, %struct.net_device* %64)
  %66 = load %struct.vlan_group*, %struct.vlan_group** %8, align 8
  %67 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.vlan_group*, %struct.vlan_group** %9, align 8
  %71 = icmp ne %struct.vlan_group* %70, null
  br i1 %71, label %72, label %86

72:                                               ; preds = %54
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @NETIF_F_HW_VLAN_RX, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load %struct.net_device_ops*, %struct.net_device_ops** %6, align 8
  %81 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %80, i32 0, i32 1
  %82 = load i32 (%struct.net_device*, %struct.vlan_group*)*, i32 (%struct.net_device*, %struct.vlan_group*)** %81, align 8
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = load %struct.vlan_group*, %struct.vlan_group** %9, align 8
  %85 = call i32 %82(%struct.net_device* %83, %struct.vlan_group* %84)
  br label %86

86:                                               ; preds = %79, %72, %54
  %87 = load %struct.net_device*, %struct.net_device** %5, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @NETIF_F_HW_VLAN_FILTER, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load %struct.net_device_ops*, %struct.net_device_ops** %6, align 8
  %95 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %94, i32 0, i32 0
  %96 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %95, align 8
  %97 = load %struct.net_device*, %struct.net_device** %5, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 %96(%struct.net_device* %97, i32 %98)
  br label %100

100:                                              ; preds = %93, %86
  store i32 0, i32* %2, align 4
  br label %121

101:                                              ; preds = %53, %47
  %102 = load %struct.vlan_group*, %struct.vlan_group** %9, align 8
  %103 = icmp ne %struct.vlan_group* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.net_device*, %struct.net_device** %5, align 8
  %106 = call i32 @vlan_gvrp_uninit_applicant(%struct.net_device* %105)
  br label %107

107:                                              ; preds = %104, %101
  br label %108

108:                                              ; preds = %107, %39
  %109 = load %struct.vlan_group*, %struct.vlan_group** %9, align 8
  %110 = icmp ne %struct.vlan_group* %109, null
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load %struct.vlan_group*, %struct.vlan_group** %9, align 8
  %113 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %112, i32 0, i32 1
  %114 = call i32 @hlist_del_rcu(i32* %113)
  %115 = load %struct.vlan_group*, %struct.vlan_group** %9, align 8
  %116 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %115, i32 0, i32 0
  %117 = load i32, i32* @vlan_rcu_free, align 4
  %118 = call i32 @call_rcu(i32* %116, i32 %117)
  br label %119

119:                                              ; preds = %111, %108
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %119, %100, %31
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.vlan_dev_info* @vlan_dev_info(%struct.net_device*) #1

declare dso_local %struct.vlan_group* @__vlan_find_group(%struct.net_device*) #1

declare dso_local %struct.vlan_group* @vlan_group_alloc(%struct.net_device*) #1

declare dso_local i32 @vlan_gvrp_init_applicant(%struct.net_device*) #1

declare dso_local i32 @vlan_group_prealloc_vid(%struct.vlan_group*, i32) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @netif_stacked_transfer_operstate(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @linkwatch_fire_event(%struct.net_device*) #1

declare dso_local i32 @vlan_group_set_device(%struct.vlan_group*, i32, %struct.net_device*) #1

declare dso_local i32 @vlan_gvrp_uninit_applicant(%struct.net_device*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
