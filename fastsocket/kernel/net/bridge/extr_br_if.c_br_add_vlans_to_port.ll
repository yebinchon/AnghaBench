; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_if.c_br_add_vlans_to_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_if.c_br_add_vlans_to_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)* }
%struct.net_device = type { i32 }

@NETIF_F_HW_VLAN_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_FILTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_add_vlans_to_port(%struct.net_bridge* %0, %struct.net_bridge_port* %1) #0 {
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
  br label %83

18:                                               ; preds = %2
  %19 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %20 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NETIF_F_HW_VLAN_RX, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %18
  %28 = load %struct.net_device_ops*, %struct.net_device_ops** %7, align 8
  %29 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %28, i32 0, i32 1
  %30 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.TYPE_3__*, i32)* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.net_device_ops*, %struct.net_device_ops** %7, align 8
  %34 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %33, i32 0, i32 1
  %35 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %34, align 8
  %36 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %37 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %40 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 %35(%struct.TYPE_3__* %38, i32 %41)
  br label %43

43:                                               ; preds = %32, %27, %18
  %44 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %45 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @NETIF_F_HW_VLAN_FILTER, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.net_device_ops*, %struct.net_device_ops** %7, align 8
  %54 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %54, align 8
  %56 = icmp ne i32 (%struct.TYPE_3__*, i32)* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52, %43
  br label %83

58:                                               ; preds = %52
  store i32 1, i32* %5, align 4
  br label %59

59:                                               ; preds = %80, %58
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 4096
  br i1 %61, label %62, label %83

62:                                               ; preds = %59
  %63 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %64 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call %struct.net_device* @vlan_group_get_device(i32 %65, i32 %66)
  store %struct.net_device* %67, %struct.net_device** %6, align 8
  %68 = load %struct.net_device*, %struct.net_device** %6, align 8
  %69 = icmp ne %struct.net_device* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %62
  %71 = load %struct.net_device_ops*, %struct.net_device_ops** %7, align 8
  %72 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %72, align 8
  %74 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %75 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 %73(%struct.TYPE_3__* %76, i32 %77)
  br label %79

79:                                               ; preds = %70, %62
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %59

83:                                               ; preds = %17, %57, %59
  ret void
}

declare dso_local %struct.net_device* @vlan_group_get_device(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
