; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_find_port_owner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_find_port_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i32 }
%struct.TYPE_2__ = type { i8** }

@USB_STATE_NOTATTACHED = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i8***)* @find_port_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_port_owner(%struct.usb_device* %0, i32 %1, i8*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8***, align 8
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8*** %2, i8**** %7, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @USB_STATE_NOTATTACHED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %38

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ugt i32 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %16
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %38

28:                                               ; preds = %19
  %29 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %30 = call %struct.TYPE_2__* @hdev_to_hub(%struct.usb_device* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sub i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %32, i64 %35
  %37 = load i8***, i8**** %7, align 8
  store i8** %36, i8*** %37, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %28, %25, %13
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_2__* @hdev_to_hub(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
