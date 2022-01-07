; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_lc.c_i1480u_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_lc.c_i1480u_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.net_device = type { i32 }
%struct.i1480u = type { %struct.net_device* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"wlp%d\00", align 1
@i1480u_netdev_setup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"no memory for network device instance\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot add i1480u device: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"cannot register network device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @i1480u_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i1480u_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.i1480u*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %8, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @i1480u_netdev_setup, align 4
  %15 = call %struct.net_device* @alloc_netdev(i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %14)
  store %struct.net_device* %15, %struct.net_device** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = icmp eq %struct.net_device* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %8, align 8
  %20 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %64

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = load %struct.device*, %struct.device** %8, align 8
  %24 = call i32 @SET_NETDEV_DEV(%struct.net_device* %22, %struct.device* %23)
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = call %struct.i1480u* @netdev_priv(%struct.net_device* %25)
  store %struct.i1480u* %26, %struct.i1480u** %9, align 8
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = load %struct.i1480u*, %struct.i1480u** %9, align 8
  %29 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %28, i32 0, i32 0
  store %struct.net_device* %27, %struct.net_device** %29, align 8
  %30 = load %struct.i1480u*, %struct.i1480u** %9, align 8
  %31 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %32 = call i32 @i1480u_add(%struct.i1480u* %30, %struct.usb_interface* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = load %struct.device*, %struct.device** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %61

39:                                               ; preds = %21
  %40 = load %struct.net_device*, %struct.net_device** %7, align 8
  %41 = call i32 @register_netdev(%struct.net_device* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.device*, %struct.device** %8, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  br label %58

48:                                               ; preds = %39
  %49 = load %struct.i1480u*, %struct.i1480u** %9, align 8
  %50 = call i32 @i1480u_sysfs_setup(%struct.i1480u* %49)
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %55

54:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %66

55:                                               ; preds = %53
  %56 = load %struct.net_device*, %struct.net_device** %7, align 8
  %57 = call i32 @unregister_netdev(%struct.net_device* %56)
  br label %58

58:                                               ; preds = %55, %44
  %59 = load %struct.i1480u*, %struct.i1480u** %9, align 8
  %60 = call i32 @i1480u_rm(%struct.i1480u* %59)
  br label %61

61:                                               ; preds = %58, %35
  %62 = load %struct.net_device*, %struct.net_device** %7, align 8
  %63 = call i32 @free_netdev(%struct.net_device* %62)
  br label %64

64:                                               ; preds = %61, %18
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %54
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local %struct.i1480u* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @i1480u_add(%struct.i1480u*, %struct.usb_interface*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @i1480u_sysfs_setup(%struct.i1480u*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @i1480u_rm(%struct.i1480u*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
