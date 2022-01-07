; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_vlan_transfer_features.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_vlan_transfer_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NETIF_F_HW_VLAN_TX = common dso_local global i32 0, align 4
@VLAN_FLAG_REORDER_HDR = common dso_local global i32 0, align 4
@NETIF_F_ALL_CSUM = common dso_local global i64 0, align 8
@NETIF_F_SG = common dso_local global i64 0, align 8
@NETIF_F_GSO = common dso_local global i64 0, align 8
@NETIF_F_GSO_MASK = common dso_local global i64 0, align 8
@NETIF_F_FCOE_CRC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlan_transfer_features(%struct.net_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = xor i64 %13, -1
  %15 = and i64 %10, %14
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = and i64 %18, %21
  %23 = or i64 %15, %22
  store i64 %23, i64* %6, align 8
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @NETIF_F_HW_VLAN_TX, align 4
  %28 = sext i32 %27 to i64
  %29 = and i64 %26, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %2
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = call %struct.TYPE_2__* @vlan_dev_info(%struct.net_device* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @VLAN_FLAG_REORDER_HDR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %31
  %40 = load i64, i64* @NETIF_F_ALL_CSUM, align 8
  %41 = load i64, i64* @NETIF_F_SG, align 8
  %42 = or i64 %40, %41
  %43 = load i64, i64* @NETIF_F_GSO, align 8
  %44 = or i64 %42, %43
  %45 = load i64, i64* @NETIF_F_GSO_MASK, align 8
  %46 = or i64 %44, %45
  %47 = load i64, i64* @NETIF_F_FCOE_CRC, align 8
  %48 = or i64 %46, %47
  %49 = xor i64 %48, -1
  %50 = load i64, i64* %6, align 8
  %51 = and i64 %50, %49
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %39, %31, %2
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %52
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = call i32 @netdev_features_change(%struct.net_device* %67)
  br label %69

69:                                               ; preds = %66, %52
  ret void
}

declare dso_local %struct.TYPE_2__* @vlan_dev_info(%struct.net_device*) #1

declare dso_local i32 @netdev_features_change(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
