; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_dev_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_dev_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*, %struct.sockaddr*)* }
%struct.net_device.0 = type opaque
%struct.sockaddr = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NETDEV_CHANGEADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_set_mac_address(%struct.net_device* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.net_device_ops*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = load %struct.net_device_ops*, %struct.net_device_ops** %9, align 8
  store %struct.net_device_ops* %10, %struct.net_device_ops** %6, align 8
  %11 = load %struct.net_device_ops*, %struct.net_device_ops** %6, align 8
  %12 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %11, i32 0, i32 0
  %13 = load i32 (%struct.net_device.0*, %struct.sockaddr*)*, i32 (%struct.net_device.0*, %struct.sockaddr*)** %12, align 8
  %14 = icmp ne i32 (%struct.net_device.0*, %struct.sockaddr*)* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %52

18:                                               ; preds = %2
  %19 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %20 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %52

29:                                               ; preds = %18
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call i32 @netif_device_present(%struct.net_device* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %52

36:                                               ; preds = %29
  %37 = load %struct.net_device_ops*, %struct.net_device_ops** %6, align 8
  %38 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %37, i32 0, i32 0
  %39 = load i32 (%struct.net_device.0*, %struct.sockaddr*)*, i32 (%struct.net_device.0*, %struct.sockaddr*)** %38, align 8
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = bitcast %struct.net_device* %40 to %struct.net_device.0*
  %42 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %43 = call i32 %39(%struct.net_device.0* %41, %struct.sockaddr* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @NETDEV_CHANGEADDR, align 4
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = call i32 @call_netdevice_notifiers(i32 %47, %struct.net_device* %48)
  br label %50

50:                                               ; preds = %46, %36
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %33, %26, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
