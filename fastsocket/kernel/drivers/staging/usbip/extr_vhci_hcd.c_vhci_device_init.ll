; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_hcd.c_vhci_device_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_hcd.c_vhci_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhci_device = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"vhci_rx\00", align 1
@vhci_rx_loop = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"vhci_tx\00", align 1
@vhci_tx_loop = common dso_local global i32 0, align 4
@USBIP_VHCI = common dso_local global i32 0, align 4
@VDEV_ST_NULL = common dso_local global i32 0, align 4
@vhci_shutdown_connection = common dso_local global i32 0, align 4
@vhci_device_reset = common dso_local global i32 0, align 4
@vhci_device_unusable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhci_device*)* @vhci_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhci_device_init(%struct.vhci_device* %0) #0 {
  %2 = alloca %struct.vhci_device*, align 8
  store %struct.vhci_device* %0, %struct.vhci_device** %2, align 8
  %3 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %4 = call i32 @memset(%struct.vhci_device* %3, i32 0, i32 56)
  %5 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %6 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 5
  %8 = load i32, i32* @vhci_rx_loop, align 4
  %9 = call i32 @usbip_task_init(i32* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %11 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %13 = load i32, i32* @vhci_tx_loop, align 4
  %14 = call i32 @usbip_task_init(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @USBIP_VHCI, align 4
  %16 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %17 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @VDEV_ST_NULL, align 4
  %20 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %21 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  %23 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %24 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %28 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %27, i32 0, i32 6
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %31 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %30, i32 0, i32 5
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %34 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %33, i32 0, i32 4
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %37 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %36, i32 0, i32 3
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %40 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %39, i32 0, i32 2
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %43 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %42, i32 0, i32 1
  %44 = call i32 @init_waitqueue_head(i32* %43)
  %45 = load i32, i32* @vhci_shutdown_connection, align 4
  %46 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %47 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* @vhci_device_reset, align 4
  %51 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %52 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* @vhci_device_unusable, align 4
  %56 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %57 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  %60 = load %struct.vhci_device*, %struct.vhci_device** %2, align 8
  %61 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %60, i32 0, i32 0
  %62 = call i32 @usbip_start_eh(%struct.TYPE_4__* %61)
  ret void
}

declare dso_local i32 @memset(%struct.vhci_device*, i32, i32) #1

declare dso_local i32 @usbip_task_init(i32*, i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usbip_start_eh(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
