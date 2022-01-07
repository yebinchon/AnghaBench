; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_toneport.c_toneport_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_toneport.c_toneport_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_line6_toneport = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.snd_line6_pcm*, %struct.TYPE_5__* }
%struct.snd_line6_pcm = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@LINE6_DEVID_GUITARPORT = common dso_local global i64 0, align 8
@dev_attr_led_red = common dso_local global i32 0, align 4
@dev_attr_led_green = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @toneport_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_line6_toneport*, align 8
  %4 = alloca %struct.snd_line6_pcm*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = icmp eq %struct.usb_interface* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %46

8:                                                ; preds = %1
  %9 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %10 = call %struct.usb_line6_toneport* @usb_get_intfdata(%struct.usb_interface* %9)
  store %struct.usb_line6_toneport* %10, %struct.usb_line6_toneport** %3, align 8
  %11 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %3, align 8
  %12 = getelementptr inbounds %struct.usb_line6_toneport, %struct.usb_line6_toneport* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LINE6_DEVID_GUITARPORT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %8
  %21 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 0
  %23 = call i32 @device_remove_file(i32* %22, i32* @dev_attr_led_red)
  %24 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %25 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %24, i32 0, i32 0
  %26 = call i32 @device_remove_file(i32* %25, i32* @dev_attr_led_green)
  br label %27

27:                                               ; preds = %20, %8
  %28 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %3, align 8
  %29 = icmp ne %struct.usb_line6_toneport* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %3, align 8
  %32 = getelementptr inbounds %struct.usb_line6_toneport, %struct.usb_line6_toneport* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %33, align 8
  store %struct.snd_line6_pcm* %34, %struct.snd_line6_pcm** %4, align 8
  %35 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %36 = icmp ne %struct.snd_line6_pcm* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %39 = call i32 @unlink_wait_clear_audio_out_urbs(%struct.snd_line6_pcm* %38)
  %40 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %41 = call i32 @unlink_wait_clear_audio_in_urbs(%struct.snd_line6_pcm* %40)
  br label %42

42:                                               ; preds = %37, %30
  br label %43

43:                                               ; preds = %42, %27
  %44 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %45 = call i32 @toneport_destruct(%struct.usb_interface* %44)
  br label %46

46:                                               ; preds = %43, %7
  ret void
}

declare dso_local %struct.usb_line6_toneport* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @unlink_wait_clear_audio_out_urbs(%struct.snd_line6_pcm*) #1

declare dso_local i32 @unlink_wait_clear_audio_in_urbs(%struct.snd_line6_pcm*) #1

declare dso_local i32 @toneport_destruct(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
