; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_file.c_usb_devnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_file.c_usb_devnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usb_class_driver = type { i8* (%struct.device.0*, i32*)* }
%struct.device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i32*)* @usb_devnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @usb_devnode(%struct.device* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.usb_class_driver*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.usb_class_driver* @dev_get_drvdata(%struct.device* %7)
  store %struct.usb_class_driver* %8, %struct.usb_class_driver** %6, align 8
  %9 = load %struct.usb_class_driver*, %struct.usb_class_driver** %6, align 8
  %10 = icmp ne %struct.usb_class_driver* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.usb_class_driver*, %struct.usb_class_driver** %6, align 8
  %13 = getelementptr inbounds %struct.usb_class_driver, %struct.usb_class_driver* %12, i32 0, i32 0
  %14 = load i8* (%struct.device.0*, i32*)*, i8* (%struct.device.0*, i32*)** %13, align 8
  %15 = icmp ne i8* (%struct.device.0*, i32*)* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %2
  store i8* null, i8** %3, align 8
  br label %25

17:                                               ; preds = %11
  %18 = load %struct.usb_class_driver*, %struct.usb_class_driver** %6, align 8
  %19 = getelementptr inbounds %struct.usb_class_driver, %struct.usb_class_driver* %18, i32 0, i32 0
  %20 = load i8* (%struct.device.0*, i32*)*, i8* (%struct.device.0*, i32*)** %19, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = bitcast %struct.device* %21 to %struct.device.0*
  %23 = load i32*, i32** %5, align 8
  %24 = call i8* %20(%struct.device.0* %22, i32* %23)
  store i8* %24, i8** %3, align 8
  br label %25

25:                                               ; preds = %17, %16
  %26 = load i8*, i8** %3, align 8
  ret i8* %26
}

declare dso_local %struct.usb_class_driver* @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
