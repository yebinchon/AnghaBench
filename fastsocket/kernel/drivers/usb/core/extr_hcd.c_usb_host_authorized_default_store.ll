; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_host_authorized_default_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_host_authorized_default_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_device = type { %struct.usb_bus* }
%struct.usb_bus = type { i32 }
%struct.usb_hcd = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @usb_host_authorized_default_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_host_authorized_default_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_device*, align 8
  %13 = alloca %struct.usb_bus*, align 8
  %14 = alloca %struct.usb_hcd*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.usb_device* @to_usb_device(%struct.device* %15)
  store %struct.usb_device* %16, %struct.usb_device** %12, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 0
  %19 = load %struct.usb_bus*, %struct.usb_bus** %18, align 8
  store %struct.usb_bus* %19, %struct.usb_bus** %13, align 8
  %20 = load %struct.usb_bus*, %struct.usb_bus** %13, align 8
  %21 = icmp eq %struct.usb_bus* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %46

25:                                               ; preds = %4
  %26 = load %struct.usb_bus*, %struct.usb_bus** %13, align 8
  %27 = call %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %26)
  store %struct.usb_hcd* %27, %struct.usb_hcd** %14, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @sscanf(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  %37 = load %struct.usb_hcd*, %struct.usb_hcd** %14, align 8
  %38 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* %9, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %10, align 4
  br label %44

41:                                               ; preds = %25
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %41, %32
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %22
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.usb_device* @to_usb_device(%struct.device*) #1

declare dso_local %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
