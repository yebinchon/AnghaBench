; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___dev_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___dev_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*)*, i32 (%struct.net_device.1*)* }
%struct.net_device.0 = type opaque
%struct.net_device.1 = type opaque
%struct.TYPE_2__ = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_NO_UNICAST_FLT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dev_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_device_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 2
  %6 = load %struct.net_device_ops*, %struct.net_device_ops** %5, align 8
  store %struct.net_device_ops* %6, %struct.net_device_ops** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IFF_UP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %81

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @netif_device_present(%struct.net_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %81

19:                                               ; preds = %14
  %20 = load %struct.net_device_ops*, %struct.net_device_ops** %3, align 8
  %21 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %20, i32 0, i32 1
  %22 = load i32 (%struct.net_device.1*)*, i32 (%struct.net_device.1*)** %21, align 8
  %23 = icmp ne i32 (%struct.net_device.1*)* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = call %struct.TYPE_2__* @netdev_extended(%struct.net_device* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFF_NO_UNICAST_FLT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %24
  %33 = load %struct.net_device_ops*, %struct.net_device_ops** %3, align 8
  %34 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %33, i32 0, i32 1
  %35 = load i32 (%struct.net_device.1*)*, i32 (%struct.net_device.1*)** %34, align 8
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = bitcast %struct.net_device* %36 to %struct.net_device.1*
  %38 = call i32 %35(%struct.net_device.1* %37)
  br label %81

39:                                               ; preds = %24, %19
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i64 @netdev_uc_empty(%struct.net_device* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %39
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = call i32 @__dev_set_promiscuity(%struct.net_device* %49, i32 1)
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  br label %68

53:                                               ; preds = %43, %39
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = call i64 @netdev_uc_empty(%struct.net_device* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.net_device*, %struct.net_device** %2, align 8
  %64 = call i32 @__dev_set_promiscuity(%struct.net_device* %63, i32 -1)
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %57, %53
  br label %68

68:                                               ; preds = %67, %48
  %69 = load %struct.net_device_ops*, %struct.net_device_ops** %3, align 8
  %70 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %69, i32 0, i32 0
  %71 = load i32 (%struct.net_device.0*)*, i32 (%struct.net_device.0*)** %70, align 8
  %72 = icmp ne i32 (%struct.net_device.0*)* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.net_device_ops*, %struct.net_device_ops** %3, align 8
  %75 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %74, i32 0, i32 0
  %76 = load i32 (%struct.net_device.0*)*, i32 (%struct.net_device.0*)** %75, align 8
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = bitcast %struct.net_device* %77 to %struct.net_device.0*
  %79 = call i32 %76(%struct.net_device.0* %78)
  br label %80

80:                                               ; preds = %73, %68
  br label %81

81:                                               ; preds = %13, %18, %80, %32
  ret void
}

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local %struct.TYPE_2__* @netdev_extended(%struct.net_device*) #1

declare dso_local i64 @netdev_uc_empty(%struct.net_device*) #1

declare dso_local i32 @__dev_set_promiscuity(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
