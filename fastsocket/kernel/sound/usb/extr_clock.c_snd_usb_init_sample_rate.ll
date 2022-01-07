; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_clock.c_snd_usb_init_sample_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_clock.c_snd_usb_init_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32 }
%struct.usb_host_interface = type { i32 }
%struct.audioformat = type { i32 }
%struct.usb_interface_descriptor = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_init_sample_rate(%struct.snd_usb_audio* %0, i32 %1, %struct.usb_host_interface* %2, %struct.audioformat* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_usb_audio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_host_interface*, align 8
  %10 = alloca %struct.audioformat*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_interface_descriptor*, align 8
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.usb_host_interface* %2, %struct.usb_host_interface** %9, align 8
  store %struct.audioformat* %3, %struct.audioformat** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %14 = call %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface* %13)
  store %struct.usb_interface_descriptor* %14, %struct.usb_interface_descriptor** %12, align 8
  %15 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %12, align 8
  %16 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %19 [
    i32 129, label %18
    i32 128, label %26
  ]

18:                                               ; preds = %5
  br label %19

19:                                               ; preds = %5, %18
  %20 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %23 = load %struct.audioformat*, %struct.audioformat** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @set_sample_rate_v1(%struct.snd_usb_audio* %20, i32 %21, %struct.usb_host_interface* %22, %struct.audioformat* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %33

26:                                               ; preds = %5
  %27 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %30 = load %struct.audioformat*, %struct.audioformat** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @set_sample_rate_v2(%struct.snd_usb_audio* %27, i32 %28, %struct.usb_host_interface* %29, %struct.audioformat* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %26, %19
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface*) #1

declare dso_local i32 @set_sample_rate_v1(%struct.snd_usb_audio*, i32, %struct.usb_host_interface*, %struct.audioformat*, i32) #1

declare dso_local i32 @set_sample_rate_v2(%struct.snd_usb_audio*, i32, %struct.usb_host_interface*, %struct.audioformat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
