; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_card.c_usb_audio_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_card.c_usb_audio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.snd_usb_audio = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usb_audio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_audio_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.snd_usb_audio*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %8 = call i32 @interface_to_usbdev(%struct.usb_interface* %7)
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %11 = call %struct.snd_usb_audio* @snd_usb_audio_probe(i32 %8, %struct.usb_interface* %9, %struct.usb_device_id* %10)
  store %struct.snd_usb_audio* %11, %struct.snd_usb_audio** %6, align 8
  %12 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %13 = icmp ne %struct.snd_usb_audio* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %17 = call i32 @usb_set_intfdata(%struct.usb_interface* %15, %struct.snd_usb_audio* %16)
  store i32 0, i32* %3, align 4
  br label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.snd_usb_audio* @snd_usb_audio_probe(i32, %struct.usb_interface*, %struct.usb_device_id*) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.snd_usb_audio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
