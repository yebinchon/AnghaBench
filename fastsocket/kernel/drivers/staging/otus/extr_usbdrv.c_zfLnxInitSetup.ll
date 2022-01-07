; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_usbdrv.c_zfLnxInitSetup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_usbdrv.c_zfLnxInitSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32, i32*, %struct.iw_handler_def* }
%struct.iw_handler_def = type { i32 }
%struct.usbdrv_private = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i8* }

@p80211wext_handler_def = common dso_local global i32 0, align 4
@otus_netdev_ops = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@zfLnx10msTimer = common dso_local global i32 0, align 4
@addr = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfLnxInitSetup(%struct.net_device* %0, %struct.usbdrv_private* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.usbdrv_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.usbdrv_private* %1, %struct.usbdrv_private** %4, align 8
  %5 = load %struct.usbdrv_private*, %struct.usbdrv_private** %4, align 8
  %6 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %5, i32 0, i32 1
  %7 = call i32 @spin_lock_init(i32* %6)
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 3
  store %struct.iw_handler_def* bitcast (i32* @p80211wext_handler_def to %struct.iw_handler_def*), %struct.iw_handler_def** %9, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 2
  store i32* @otus_netdev_ops, i32** %11, align 8
  %12 = load i32, i32* @IFF_MULTICAST, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 3, i32* %24, align 4
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 127, i32* %28, align 4
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 17, i32* %32, align 4
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  store i32 34, i32* %36, align 4
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 5
  store i32 51, i32* %40, align 4
  %41 = load %struct.usbdrv_private*, %struct.usbdrv_private** %4, align 8
  %42 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %41, i32 0, i32 0
  %43 = call i32 @init_timer(%struct.TYPE_2__* %42)
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = ptrtoint %struct.net_device* %44 to i64
  %46 = load %struct.usbdrv_private*, %struct.usbdrv_private** %4, align 8
  %47 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load %struct.usbdrv_private*, %struct.usbdrv_private** %4, align 8
  %50 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i8* bitcast (i32* @zfLnx10msTimer to i8*), i8** %51, align 8
  %52 = call i32 (...) @zfLnxInitVapStruct()
  ret i32 1
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @zfLnxInitVapStruct(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
