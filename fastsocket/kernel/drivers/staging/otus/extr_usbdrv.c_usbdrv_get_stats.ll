; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_usbdrv.c_usbdrv_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_usbdrv.c_usbdrv_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.net_device = type { %struct.usbdrv_private* }
%struct.usbdrv_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device_stats }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device_stats* @usbdrv_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.usbdrv_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load %struct.usbdrv_private*, %struct.usbdrv_private** %5, align 8
  store %struct.usbdrv_private* %6, %struct.usbdrv_private** %3, align 8
  %7 = load %struct.usbdrv_private*, %struct.usbdrv_private** %3, align 8
  %8 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.usbdrv_private*, %struct.usbdrv_private** %3, align 8
  %13 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %11, %16
  %18 = load %struct.usbdrv_private*, %struct.usbdrv_private** %3, align 8
  %19 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %20, i32 0, i32 6
  store i64 %17, i64* %21, align 8
  %22 = load %struct.usbdrv_private*, %struct.usbdrv_private** %3, align 8
  %23 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.usbdrv_private*, %struct.usbdrv_private** %3, align 8
  %28 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %26, %31
  %33 = load %struct.usbdrv_private*, %struct.usbdrv_private** %3, align 8
  %34 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %32, %37
  %39 = load %struct.usbdrv_private*, %struct.usbdrv_private** %3, align 8
  %40 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %41, i32 0, i32 3
  store i64 %38, i64* %42, align 8
  %43 = load %struct.usbdrv_private*, %struct.usbdrv_private** %3, align 8
  %44 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  ret %struct.net_device_stats* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
