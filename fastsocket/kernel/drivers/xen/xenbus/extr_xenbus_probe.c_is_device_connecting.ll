; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_probe.c_is_device_connecting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_probe.c_is_device_connecting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_driver* }
%struct.device_driver = type { i32 }
%struct.xenbus_device = type { i64 }
%struct.xenbus_driver = type { i32 (%struct.xenbus_device.0*)* }
%struct.xenbus_device.0 = type opaque

@XenbusStateConnected = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @is_device_connecting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_device_connecting(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xenbus_device*, align 8
  %7 = alloca %struct.device_driver*, align 8
  %8 = alloca %struct.xenbus_driver*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %9)
  store %struct.xenbus_device* %10, %struct.xenbus_device** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.device_driver*
  store %struct.device_driver* %12, %struct.device_driver** %7, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_driver*, %struct.device_driver** %14, align 8
  %16 = icmp ne %struct.device_driver* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

18:                                               ; preds = %2
  %19 = load %struct.device_driver*, %struct.device_driver** %7, align 8
  %20 = icmp ne %struct.device_driver* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load %struct.device_driver*, %struct.device_driver** %23, align 8
  %25 = load %struct.device_driver*, %struct.device_driver** %7, align 8
  %26 = icmp ne %struct.device_driver* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %63

28:                                               ; preds = %21, %18
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = load %struct.device_driver*, %struct.device_driver** %30, align 8
  %32 = call %struct.xenbus_driver* @to_xenbus_driver(%struct.device_driver* %31)
  store %struct.xenbus_driver* %32, %struct.xenbus_driver** %8, align 8
  %33 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %34 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @XenbusStateConnected, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %60, label %38

38:                                               ; preds = %28
  %39 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %40 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @XenbusStateConnected, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  %45 = load %struct.xenbus_driver*, %struct.xenbus_driver** %8, align 8
  %46 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %45, i32 0, i32 0
  %47 = load i32 (%struct.xenbus_device.0*)*, i32 (%struct.xenbus_device.0*)** %46, align 8
  %48 = icmp ne i32 (%struct.xenbus_device.0*)* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.xenbus_driver*, %struct.xenbus_driver** %8, align 8
  %51 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %50, i32 0, i32 0
  %52 = load i32 (%struct.xenbus_device.0*)*, i32 (%struct.xenbus_device.0*)** %51, align 8
  %53 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %54 = bitcast %struct.xenbus_device* %53 to %struct.xenbus_device.0*
  %55 = call i32 %52(%struct.xenbus_device.0* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %49, %44, %38
  %59 = phi i1 [ false, %44 ], [ false, %38 ], [ %57, %49 ]
  br label %60

60:                                               ; preds = %58, %28
  %61 = phi i1 [ true, %28 ], [ %59, %58 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %27, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.xenbus_device* @to_xenbus_device(%struct.device*) #1

declare dso_local %struct.xenbus_driver* @to_xenbus_driver(%struct.device_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
