; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_netdev.c_et131x_ioctl_mii.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_netdev.c_et131x_ioctl_mii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.et131x_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @et131x_ioctl_mii(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.et131x_adapter*, align 8
  %9 = alloca %struct.mii_ioctl_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.et131x_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.et131x_adapter* %11, %struct.et131x_adapter** %8, align 8
  %12 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %13 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %12)
  store %struct.mii_ioctl_data* %13, %struct.mii_ioctl_data** %9, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %55 [
    i32 130, label %15
    i32 129, label %22
    i32 128, label %38
  ]

15:                                               ; preds = %3
  %16 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %17 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %21 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  br label %58

22:                                               ; preds = %3
  %23 = load i32, i32* @CAP_NET_ADMIN, align 4
  %24 = call i32 @capable(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @EPERM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %37

29:                                               ; preds = %22
  %30 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %31 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %32 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %35 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %34, i32 0, i32 2
  %36 = call i32 @MiRead(%struct.et131x_adapter* %30, i32 %33, i32* %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %29, %26
  br label %58

38:                                               ; preds = %3
  %39 = load i32, i32* @CAP_NET_ADMIN, align 4
  %40 = call i32 @capable(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @EPERM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %54

45:                                               ; preds = %38
  %46 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %47 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %48 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %51 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @MiWrite(%struct.et131x_adapter* %46, i32 %49, i32 %52)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %45, %42
  br label %58

55:                                               ; preds = %3
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %54, %37, %15
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local %struct.et131x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @MiRead(%struct.et131x_adapter*, i32, i32*) #1

declare dso_local i32 @MiWrite(%struct.et131x_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
