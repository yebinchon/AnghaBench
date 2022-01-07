; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_sysfs.c_vhci_port_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_sysfs.c_vhci_port_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.vhci_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@the_controller = common dso_local global %struct.TYPE_4__* null, align 8
@VDEV_ST_NULL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"not connected %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VDEV_EVENT_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vhci_port_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhci_port_disconnect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.vhci_device*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 @usbip_dbg_vhci_sysfs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_controller, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.vhci_device* @port_to_vdev(i32 %9)
  store %struct.vhci_device* %10, %struct.vhci_device** %4, align 8
  %11 = load %struct.vhci_device*, %struct.vhci_device** %4, align 8
  %12 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.vhci_device*, %struct.vhci_device** %4, align 8
  %16 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VDEV_ST_NULL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %1
  %22 = load %struct.vhci_device*, %struct.vhci_device** %4, align 8
  %23 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @usbip_uerr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load %struct.vhci_device*, %struct.vhci_device** %4, align 8
  %28 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_controller, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %48

36:                                               ; preds = %1
  %37 = load %struct.vhci_device*, %struct.vhci_device** %4, align 8
  %38 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_controller, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load %struct.vhci_device*, %struct.vhci_device** %4, align 8
  %45 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %44, i32 0, i32 0
  %46 = load i32, i32* @VDEV_EVENT_DOWN, align 4
  %47 = call i32 @usbip_event_add(%struct.TYPE_3__* %45, i32 %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %36, %21
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @usbip_dbg_vhci_sysfs(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.vhci_device* @port_to_vdev(i32) #1

declare dso_local i32 @usbip_uerr(i8*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usbip_event_add(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
