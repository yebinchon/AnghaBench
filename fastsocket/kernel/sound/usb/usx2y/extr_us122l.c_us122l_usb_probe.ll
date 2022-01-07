; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_us122l.c_us122l_usb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_us122l.c_us122l_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.snd_card = type { i32 }
%struct.usb_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*, %struct.snd_card**)* @us122l_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us122l_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1, %struct.snd_card** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.usb_device_id*, align 8
  %7 = alloca %struct.snd_card**, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.snd_card*, align 8
  %10 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %5, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %6, align 8
  store %struct.snd_card** %2, %struct.snd_card*** %7, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %12 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %11)
  store %struct.usb_device* %12, %struct.usb_device** %8, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %14 = call i32 @usx2y_create_card(%struct.usb_device* %13, %struct.snd_card** %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %49

19:                                               ; preds = %3
  %20 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %21 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 0
  %23 = call i32 @snd_card_set_dev(%struct.snd_card* %20, i32* %22)
  %24 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %25 = call i32 @us122l_create_card(%struct.snd_card* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %19
  %28 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %29 = call i32 @snd_card_free(%struct.snd_card* %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %49

32:                                               ; preds = %19
  %33 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %34 = call i32 @snd_card_register(%struct.snd_card* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %39 = call i32 @snd_card_free(%struct.snd_card* %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %49

41:                                               ; preds = %32
  %42 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %43 = call i32 @usb_ifnum_to_if(%struct.usb_device* %42, i32 0)
  %44 = call i32 @usb_get_intf(i32 %43)
  %45 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %46 = call i32 @usb_get_dev(%struct.usb_device* %45)
  %47 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %48 = load %struct.snd_card**, %struct.snd_card*** %7, align 8
  store %struct.snd_card* %47, %struct.snd_card** %48, align 8
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %41, %37, %27, %17
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usx2y_create_card(%struct.usb_device*, %struct.snd_card**) #1

declare dso_local i32 @snd_card_set_dev(%struct.snd_card*, i32*) #1

declare dso_local i32 @us122l_create_card(%struct.snd_card*) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

declare dso_local i32 @snd_card_register(%struct.snd_card*) #1

declare dso_local i32 @usb_get_intf(i32) #1

declare dso_local i32 @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
