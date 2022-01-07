; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device = type { i32, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usbdevfs_hub_portinfo = type { i32, i32* }

@device_state_lock = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32, i8*)* @hub_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_ioctl(%struct.usb_interface* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.usbdevfs_hub_portinfo*, align 8
  %10 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %12 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %11)
  store %struct.usb_device* %12, %struct.usb_device** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %80 [
    i32 128, label %14
  ]

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.usbdevfs_hub_portinfo*
  store %struct.usbdevfs_hub_portinfo* %16, %struct.usbdevfs_hub_portinfo** %9, align 8
  %17 = call i32 @spin_lock_irq(i32* @device_state_lock)
  %18 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.usbdevfs_hub_portinfo*, %struct.usbdevfs_hub_portinfo** %9, align 8
  %24 = getelementptr inbounds %struct.usbdevfs_hub_portinfo, %struct.usbdevfs_hub_portinfo* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %74

25:                                               ; preds = %14
  %26 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.usbdevfs_hub_portinfo*, %struct.usbdevfs_hub_portinfo** %9, align 8
  %30 = getelementptr inbounds %struct.usbdevfs_hub_portinfo, %struct.usbdevfs_hub_portinfo* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %70, %25
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.usbdevfs_hub_portinfo*, %struct.usbdevfs_hub_portinfo** %9, align 8
  %34 = getelementptr inbounds %struct.usbdevfs_hub_portinfo, %struct.usbdevfs_hub_portinfo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %73

37:                                               ; preds = %31
  %38 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %39 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = icmp eq %struct.TYPE_2__* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load %struct.usbdevfs_hub_portinfo*, %struct.usbdevfs_hub_portinfo** %9, align 8
  %48 = getelementptr inbounds %struct.usbdevfs_hub_portinfo, %struct.usbdevfs_hub_portinfo* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 0, i32* %52, align 4
  br label %69

53:                                               ; preds = %37
  %54 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %55 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %56, i64 %58
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.usbdevfs_hub_portinfo*, %struct.usbdevfs_hub_portinfo** %9, align 8
  %64 = getelementptr inbounds %struct.usbdevfs_hub_portinfo, %struct.usbdevfs_hub_portinfo* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %53, %46
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %31

73:                                               ; preds = %31
  br label %74

74:                                               ; preds = %73, %22
  %75 = call i32 @spin_unlock_irq(i32* @device_state_lock)
  %76 = load %struct.usbdevfs_hub_portinfo*, %struct.usbdevfs_hub_portinfo** %9, align 8
  %77 = getelementptr inbounds %struct.usbdevfs_hub_portinfo, %struct.usbdevfs_hub_portinfo* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %83

80:                                               ; preds = %3
  %81 = load i32, i32* @ENOSYS, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %80, %74
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
