; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pod.c_pod_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pod.c_pod_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_line6_pod = type { %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.snd_line6_pcm* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_line6_pcm = type { i32 }

@dev_attr_channel = common dso_local global i32 0, align 4
@dev_attr_clip = common dso_local global i32 0, align 4
@dev_attr_device_id = common dso_local global i32 0, align 4
@dev_attr_dirty = common dso_local global i32 0, align 4
@dev_attr_dump = common dso_local global i32 0, align 4
@dev_attr_dump_buf = common dso_local global i32 0, align 4
@dev_attr_finish = common dso_local global i32 0, align 4
@dev_attr_firmware_version = common dso_local global i32 0, align 4
@dev_attr_midi_postprocess = common dso_local global i32 0, align 4
@dev_attr_monitor_level = common dso_local global i32 0, align 4
@dev_attr_name = common dso_local global i32 0, align 4
@dev_attr_name_buf = common dso_local global i32 0, align 4
@dev_attr_retrieve_amp_setup = common dso_local global i32 0, align 4
@dev_attr_retrieve_channel = common dso_local global i32 0, align 4
@dev_attr_retrieve_effects_setup = common dso_local global i32 0, align 4
@dev_attr_routing = common dso_local global i32 0, align 4
@dev_attr_serial_number = common dso_local global i32 0, align 4
@dev_attr_store_amp_setup = common dso_local global i32 0, align 4
@dev_attr_store_channel = common dso_local global i32 0, align 4
@dev_attr_store_effects_setup = common dso_local global i32 0, align 4
@dev_attr_tuner_freq = common dso_local global i32 0, align 4
@dev_attr_tuner_mute = common dso_local global i32 0, align 4
@dev_attr_tuner_note = common dso_local global i32 0, align 4
@dev_attr_tuner_pitch = common dso_local global i32 0, align 4
@dev_attr_raw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pod_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_line6_pod*, align 8
  %4 = alloca %struct.snd_line6_pcm*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = icmp eq %struct.usb_interface* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %101

9:                                                ; preds = %1
  %10 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %11 = call %struct.usb_line6_pod* @usb_get_intfdata(%struct.usb_interface* %10)
  store %struct.usb_line6_pod* %11, %struct.usb_line6_pod** %3, align 8
  %12 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %3, align 8
  %13 = icmp ne %struct.usb_line6_pod* %12, null
  br i1 %13, label %14, label %98

14:                                               ; preds = %9
  %15 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %3, align 8
  %16 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %17, align 8
  store %struct.snd_line6_pcm* %18, %struct.snd_line6_pcm** %4, align 8
  %19 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %5, align 8
  %21 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %22 = icmp ne %struct.snd_line6_pcm* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %25 = call i32 @unlink_wait_clear_audio_out_urbs(%struct.snd_line6_pcm* %24)
  %26 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %27 = call i32 @unlink_wait_clear_audio_in_urbs(%struct.snd_line6_pcm* %26)
  br label %28

28:                                               ; preds = %23, %14
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = icmp ne %struct.device* %29, null
  br i1 %30, label %31, label %97

31:                                               ; preds = %28
  %32 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %3, align 8
  %33 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %3, align 8
  %38 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %3, align 8
  %41 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = call i32 @pod_remove_files(i32 %39, i32 %45, %struct.device* %46)
  br label %48

48:                                               ; preds = %36, %31
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = call i32 @device_remove_file(%struct.device* %49, i32* @dev_attr_channel)
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = call i32 @device_remove_file(%struct.device* %51, i32* @dev_attr_clip)
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = call i32 @device_remove_file(%struct.device* %53, i32* @dev_attr_device_id)
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = call i32 @device_remove_file(%struct.device* %55, i32* @dev_attr_dirty)
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = call i32 @device_remove_file(%struct.device* %57, i32* @dev_attr_dump)
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = call i32 @device_remove_file(%struct.device* %59, i32* @dev_attr_dump_buf)
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = call i32 @device_remove_file(%struct.device* %61, i32* @dev_attr_finish)
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = call i32 @device_remove_file(%struct.device* %63, i32* @dev_attr_firmware_version)
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = call i32 @device_remove_file(%struct.device* %65, i32* @dev_attr_midi_postprocess)
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = call i32 @device_remove_file(%struct.device* %67, i32* @dev_attr_monitor_level)
  %69 = load %struct.device*, %struct.device** %5, align 8
  %70 = call i32 @device_remove_file(%struct.device* %69, i32* @dev_attr_name)
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = call i32 @device_remove_file(%struct.device* %71, i32* @dev_attr_name_buf)
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = call i32 @device_remove_file(%struct.device* %73, i32* @dev_attr_retrieve_amp_setup)
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = call i32 @device_remove_file(%struct.device* %75, i32* @dev_attr_retrieve_channel)
  %77 = load %struct.device*, %struct.device** %5, align 8
  %78 = call i32 @device_remove_file(%struct.device* %77, i32* @dev_attr_retrieve_effects_setup)
  %79 = load %struct.device*, %struct.device** %5, align 8
  %80 = call i32 @device_remove_file(%struct.device* %79, i32* @dev_attr_routing)
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = call i32 @device_remove_file(%struct.device* %81, i32* @dev_attr_serial_number)
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = call i32 @device_remove_file(%struct.device* %83, i32* @dev_attr_store_amp_setup)
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = call i32 @device_remove_file(%struct.device* %85, i32* @dev_attr_store_channel)
  %87 = load %struct.device*, %struct.device** %5, align 8
  %88 = call i32 @device_remove_file(%struct.device* %87, i32* @dev_attr_store_effects_setup)
  %89 = load %struct.device*, %struct.device** %5, align 8
  %90 = call i32 @device_remove_file(%struct.device* %89, i32* @dev_attr_tuner_freq)
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = call i32 @device_remove_file(%struct.device* %91, i32* @dev_attr_tuner_mute)
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = call i32 @device_remove_file(%struct.device* %93, i32* @dev_attr_tuner_note)
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = call i32 @device_remove_file(%struct.device* %95, i32* @dev_attr_tuner_pitch)
  br label %97

97:                                               ; preds = %48, %28
  br label %98

98:                                               ; preds = %97, %9
  %99 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %100 = call i32 @pod_destruct(%struct.usb_interface* %99)
  br label %101

101:                                              ; preds = %98, %8
  ret void
}

declare dso_local %struct.usb_line6_pod* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @unlink_wait_clear_audio_out_urbs(%struct.snd_line6_pcm*) #1

declare dso_local i32 @unlink_wait_clear_audio_in_urbs(%struct.snd_line6_pcm*) #1

declare dso_local i32 @pod_remove_files(i32, i32, %struct.device*) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

declare dso_local i32 @pod_destruct(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
