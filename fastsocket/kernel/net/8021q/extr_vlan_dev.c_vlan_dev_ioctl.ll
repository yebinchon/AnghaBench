; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_dev.c_vlan_dev_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_dev.c_vlan_dev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*, %struct.ifreq*, i32)* }
%struct.net_device.0 = type opaque
%struct.ifreq = type opaque
%struct.ifreq.1 = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.net_device* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq.1*, i32)* @vlan_dev_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_dev_ioctl(%struct.net_device* %0, %struct.ifreq.1* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq.1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_device_ops*, align 8
  %9 = alloca %struct.ifreq.1, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq.1* %1, %struct.ifreq.1** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.TYPE_2__* @vlan_dev_info(%struct.net_device* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = load %struct.net_device_ops*, %struct.net_device_ops** %16, align 8
  store %struct.net_device_ops* %17, %struct.net_device_ops** %8, align 8
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  %20 = getelementptr inbounds %struct.ifreq.1, %struct.ifreq.1* %9, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IFNAMSIZ, align 4
  %26 = call i32 @strncpy(i32 %21, i32 %24, i32 %25)
  %27 = load %struct.ifreq.1*, %struct.ifreq.1** %5, align 8
  %28 = getelementptr inbounds %struct.ifreq.1, %struct.ifreq.1* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.ifreq.1, %struct.ifreq.1* %9, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %51 [
    i32 130, label %32
    i32 129, label %32
    i32 128, label %32
  ]

32:                                               ; preds = %3, %3, %3
  %33 = load %struct.net_device*, %struct.net_device** %7, align 8
  %34 = call i32 @netif_device_present(%struct.net_device* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load %struct.net_device_ops*, %struct.net_device_ops** %8, align 8
  %38 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %37, i32 0, i32 0
  %39 = load i32 (%struct.net_device.0*, %struct.ifreq*, i32)*, i32 (%struct.net_device.0*, %struct.ifreq*, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.net_device.0*, %struct.ifreq*, i32)* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.net_device_ops*, %struct.net_device_ops** %8, align 8
  %43 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %42, i32 0, i32 0
  %44 = load i32 (%struct.net_device.0*, %struct.ifreq*, i32)*, i32 (%struct.net_device.0*, %struct.ifreq*, i32)** %43, align 8
  %45 = load %struct.net_device*, %struct.net_device** %7, align 8
  %46 = bitcast %struct.net_device* %45 to %struct.net_device.0*
  %47 = bitcast %struct.ifreq.1* %9 to %struct.ifreq*
  %48 = load i32, i32* %6, align 4
  %49 = call i32 %44(%struct.net_device.0* %46, %struct.ifreq* %47, i32 %48)
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %41, %36, %32
  br label %51

51:                                               ; preds = %3, %50
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.ifreq.1, %struct.ifreq.1* %9, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ifreq.1*, %struct.ifreq.1** %5, align 8
  %58 = getelementptr inbounds %struct.ifreq.1, %struct.ifreq.1* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %51
  %60 = load i32, i32* %10, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_2__* @vlan_dev_info(%struct.net_device*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
