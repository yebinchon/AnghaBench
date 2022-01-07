; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_if.c_br_del_vlans_from_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_if.c_br_del_vlans_from_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.TYPE_3__*, i32*)*, i32 (%struct.TYPE_3__*, i32)* }
%struct.net_device = type { i32 }

@NETIF_F_HW_VLAN_FILTER = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_RX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_del_vlans_from_port(%struct.net_bridge* %0, %struct.net_bridge_port* %1) #0 {
  %3 = alloca %struct.net_bridge*, align 8
  %4 = alloca %struct.net_bridge_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.net_device_ops*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %3, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %4, align 8
  %8 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %9 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.net_device_ops*, %struct.net_device_ops** %11, align 8
  store %struct.net_device_ops* %12, %struct.net_device_ops** %7, align 8
  %13 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %14 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %87

18:                                               ; preds = %2
  %19 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %20 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NETIF_F_HW_VLAN_FILTER, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.net_device_ops*, %struct.net_device_ops** %7, align 8
  %29 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %28, i32 0, i32 1
  %30 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.TYPE_3__*, i32)* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %18
  br label %65

33:                                               ; preds = %27
  store i32 1, i32* %5, align 4
  br label %34

34:                                               ; preds = %61, %33
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 4096
  br i1 %36, label %37, label %64

37:                                               ; preds = %34
  %38 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %39 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call %struct.net_device* @vlan_group_get_device(i32 %40, i32 %41)
  store %struct.net_device* %42, %struct.net_device** %6, align 8
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = icmp ne %struct.net_device* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %37
  %46 = load %struct.net_device_ops*, %struct.net_device_ops** %7, align 8
  %47 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %46, i32 0, i32 1
  %48 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %47, align 8
  %49 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %50 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 %48(%struct.TYPE_3__* %51, i32 %52)
  %54 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %55 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.net_device*, %struct.net_device** %6, align 8
  %59 = call i32 @vlan_group_set_device(i32 %56, i32 %57, %struct.net_device* %58)
  br label %60

60:                                               ; preds = %45, %37
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %34

64:                                               ; preds = %34
  br label %65

65:                                               ; preds = %64, %32
  %66 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %67 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @NETIF_F_HW_VLAN_RX, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %65
  %75 = load %struct.net_device_ops*, %struct.net_device_ops** %7, align 8
  %76 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_3__*, i32*)*, i32 (%struct.TYPE_3__*, i32*)** %76, align 8
  %78 = icmp ne i32 (%struct.TYPE_3__*, i32*)* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.net_device_ops*, %struct.net_device_ops** %7, align 8
  %81 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %80, i32 0, i32 0
  %82 = load i32 (%struct.TYPE_3__*, i32*)*, i32 (%struct.TYPE_3__*, i32*)** %81, align 8
  %83 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %84 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = call i32 %82(%struct.TYPE_3__* %85, i32* null)
  br label %87

87:                                               ; preds = %17, %79, %74, %65
  ret void
}

declare dso_local %struct.net_device* @vlan_group_get_device(i32, i32) #1

declare dso_local i32 @vlan_group_set_device(i32, i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
