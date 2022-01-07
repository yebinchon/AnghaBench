; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_sysfs.c_store_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_sysfs.c_store_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vhci_device = type { %struct.TYPE_3__, i8*, i8* }
%struct.TYPE_3__ = type { i64, i32, %struct.socket* }
%struct.socket = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%u %u %u %u\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"rhport(%u) sockfd(%u) devid(%u) speed(%u)\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@the_controller = common dso_local global %struct.TYPE_4__* null, align 8
@VDEV_ST_NULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"port %d already used\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"rhport(%u) sockfd(%d) devid(%u) speed(%u)\0A\00", align 1
@VDEV_ST_NOTASSIGNED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_attach(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vhci_device*, align 8
  %11 = alloca %struct.socket*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @sscanf(i8* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %13, i32* %12, i8** %14, i8** %15)
  %18 = load i8*, i8** %13, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i8*, i8** %14, align 8
  %21 = load i8*, i8** %15, align 8
  %22 = call i32 @usbip_dbg_vhci_sysfs(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %18, i32 %19, i8* %20, i8* %21)
  %23 = load i8*, i8** %13, align 8
  %24 = load i8*, i8** %15, align 8
  %25 = call i64 @valid_args(i8* %23, i8* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %100

30:                                               ; preds = %4
  %31 = load i32, i32* %12, align 4
  %32 = call %struct.socket* @sockfd_to_socket(i32 %31)
  store %struct.socket* %32, %struct.socket** %11, align 8
  %33 = load %struct.socket*, %struct.socket** %11, align 8
  %34 = icmp ne %struct.socket* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* @EINVAL, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %100

38:                                               ; preds = %30
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_controller, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load i8*, i8** %13, align 8
  %43 = call %struct.vhci_device* @port_to_vdev(i8* %42)
  store %struct.vhci_device* %43, %struct.vhci_device** %10, align 8
  %44 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %45 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %49 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VDEV_ST_NULL, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %38
  %55 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %56 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_controller, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock(i32* %60)
  %62 = load i8*, i8** %13, align 8
  %63 = call i32 @usbip_uerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = load i64, i64* @EINVAL, align 8
  %65 = sub i64 0, %64
  store i64 %65, i64* %5, align 8
  br label %100

66:                                               ; preds = %38
  %67 = load i8*, i8** %13, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i8*, i8** %14, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = call i32 @usbip_uinfo(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %67, i32 %68, i8* %69, i8* %70)
  %72 = load i8*, i8** %14, align 8
  %73 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %74 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %77 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.socket*, %struct.socket** %11, align 8
  %79 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %80 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store %struct.socket* %78, %struct.socket** %81, align 8
  %82 = load i64, i64* @VDEV_ST_NOTASSIGNED, align 8
  %83 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %84 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  %86 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %87 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = call i32 @spin_unlock(i32* %88)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_controller, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = call i32 @spin_unlock(i32* %91)
  %93 = load %struct.vhci_device*, %struct.vhci_device** %10, align 8
  %94 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %93, i32 0, i32 0
  %95 = call i32 @usbip_start_threads(%struct.TYPE_3__* %94)
  %96 = load i8*, i8** %13, align 8
  %97 = load i8*, i8** %15, align 8
  %98 = call i32 @rh_port_connect(i8* %96, i8* %97)
  %99 = load i64, i64* %9, align 8
  store i64 %99, i64* %5, align 8
  br label %100

100:                                              ; preds = %66, %54, %35, %27
  %101 = load i64, i64* %5, align 8
  ret i64 %101
}

declare dso_local i32 @sscanf(i8*, i8*, i8**, i32*, i8**, i8**) #1

declare dso_local i32 @usbip_dbg_vhci_sysfs(i8*, i8*, i32, i8*, i8*) #1

declare dso_local i64 @valid_args(i8*, i8*) #1

declare dso_local %struct.socket* @sockfd_to_socket(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.vhci_device* @port_to_vdev(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usbip_uerr(i8*, i8*) #1

declare dso_local i32 @usbip_uinfo(i8*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @usbip_start_threads(%struct.TYPE_3__*) #1

declare dso_local i32 @rh_port_connect(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
