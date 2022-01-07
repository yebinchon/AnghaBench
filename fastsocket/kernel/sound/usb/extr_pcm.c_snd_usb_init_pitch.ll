; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_pcm.c_snd_usb_init_pitch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_pcm.c_snd_usb_init_pitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32 }
%struct.usb_host_interface = type { i32 }
%struct.audioformat = type { i32 }
%struct.usb_interface_descriptor = type { i32 }

@UAC_EP_CS_ATTR_PITCH_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_init_pitch(%struct.snd_usb_audio* %0, i32 %1, %struct.usb_host_interface* %2, %struct.audioformat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_audio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.audioformat*, align 8
  %10 = alloca %struct.usb_interface_descriptor*, align 8
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.usb_host_interface* %2, %struct.usb_host_interface** %8, align 8
  store %struct.audioformat* %3, %struct.audioformat** %9, align 8
  %11 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %12 = call %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface* %11)
  store %struct.usb_interface_descriptor* %12, %struct.usb_interface_descriptor** %10, align 8
  %13 = load %struct.audioformat*, %struct.audioformat** %9, align 8
  %14 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @UAC_EP_CS_ATTR_PITCH_CONTROL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %37

20:                                               ; preds = %4
  %21 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %10, align 8
  %22 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %25 [
    i32 129, label %24
    i32 128, label %31
  ]

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %20, %24
  %26 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %29 = load %struct.audioformat*, %struct.audioformat** %9, align 8
  %30 = call i32 @init_pitch_v1(%struct.snd_usb_audio* %26, i32 %27, %struct.usb_host_interface* %28, %struct.audioformat* %29)
  store i32 %30, i32* %5, align 4
  br label %37

31:                                               ; preds = %20
  %32 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %35 = load %struct.audioformat*, %struct.audioformat** %9, align 8
  %36 = call i32 @init_pitch_v2(%struct.snd_usb_audio* %32, i32 %33, %struct.usb_host_interface* %34, %struct.audioformat* %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %31, %25, %19
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface*) #1

declare dso_local i32 @init_pitch_v1(%struct.snd_usb_audio*, i32, %struct.usb_host_interface*, %struct.audioformat*) #1

declare dso_local i32 @init_pitch_v2(%struct.snd_usb_audio*, i32, %struct.usb_host_interface*, %struct.audioformat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
