; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pod.c_pod_create_files2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pod.c_pod_create_files2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @pod_create_files2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pod_create_files2(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call i32 @device_create_file(%struct.device* %4, i32* @dev_attr_channel)
  %6 = call i32 @CHECK_RETURN(i32 %5)
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call i32 @device_create_file(%struct.device* %7, i32* @dev_attr_clip)
  %9 = call i32 @CHECK_RETURN(i32 %8)
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call i32 @device_create_file(%struct.device* %10, i32* @dev_attr_device_id)
  %12 = call i32 @CHECK_RETURN(i32 %11)
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = call i32 @device_create_file(%struct.device* %13, i32* @dev_attr_dirty)
  %15 = call i32 @CHECK_RETURN(i32 %14)
  %16 = load %struct.device*, %struct.device** %2, align 8
  %17 = call i32 @device_create_file(%struct.device* %16, i32* @dev_attr_dump)
  %18 = call i32 @CHECK_RETURN(i32 %17)
  %19 = load %struct.device*, %struct.device** %2, align 8
  %20 = call i32 @device_create_file(%struct.device* %19, i32* @dev_attr_dump_buf)
  %21 = call i32 @CHECK_RETURN(i32 %20)
  %22 = load %struct.device*, %struct.device** %2, align 8
  %23 = call i32 @device_create_file(%struct.device* %22, i32* @dev_attr_finish)
  %24 = call i32 @CHECK_RETURN(i32 %23)
  %25 = load %struct.device*, %struct.device** %2, align 8
  %26 = call i32 @device_create_file(%struct.device* %25, i32* @dev_attr_firmware_version)
  %27 = call i32 @CHECK_RETURN(i32 %26)
  %28 = load %struct.device*, %struct.device** %2, align 8
  %29 = call i32 @device_create_file(%struct.device* %28, i32* @dev_attr_midi_postprocess)
  %30 = call i32 @CHECK_RETURN(i32 %29)
  %31 = load %struct.device*, %struct.device** %2, align 8
  %32 = call i32 @device_create_file(%struct.device* %31, i32* @dev_attr_monitor_level)
  %33 = call i32 @CHECK_RETURN(i32 %32)
  %34 = load %struct.device*, %struct.device** %2, align 8
  %35 = call i32 @device_create_file(%struct.device* %34, i32* @dev_attr_name)
  %36 = call i32 @CHECK_RETURN(i32 %35)
  %37 = load %struct.device*, %struct.device** %2, align 8
  %38 = call i32 @device_create_file(%struct.device* %37, i32* @dev_attr_name_buf)
  %39 = call i32 @CHECK_RETURN(i32 %38)
  %40 = load %struct.device*, %struct.device** %2, align 8
  %41 = call i32 @device_create_file(%struct.device* %40, i32* @dev_attr_retrieve_amp_setup)
  %42 = call i32 @CHECK_RETURN(i32 %41)
  %43 = load %struct.device*, %struct.device** %2, align 8
  %44 = call i32 @device_create_file(%struct.device* %43, i32* @dev_attr_retrieve_channel)
  %45 = call i32 @CHECK_RETURN(i32 %44)
  %46 = load %struct.device*, %struct.device** %2, align 8
  %47 = call i32 @device_create_file(%struct.device* %46, i32* @dev_attr_retrieve_effects_setup)
  %48 = call i32 @CHECK_RETURN(i32 %47)
  %49 = load %struct.device*, %struct.device** %2, align 8
  %50 = call i32 @device_create_file(%struct.device* %49, i32* @dev_attr_routing)
  %51 = call i32 @CHECK_RETURN(i32 %50)
  %52 = load %struct.device*, %struct.device** %2, align 8
  %53 = call i32 @device_create_file(%struct.device* %52, i32* @dev_attr_serial_number)
  %54 = call i32 @CHECK_RETURN(i32 %53)
  %55 = load %struct.device*, %struct.device** %2, align 8
  %56 = call i32 @device_create_file(%struct.device* %55, i32* @dev_attr_store_amp_setup)
  %57 = call i32 @CHECK_RETURN(i32 %56)
  %58 = load %struct.device*, %struct.device** %2, align 8
  %59 = call i32 @device_create_file(%struct.device* %58, i32* @dev_attr_store_channel)
  %60 = call i32 @CHECK_RETURN(i32 %59)
  %61 = load %struct.device*, %struct.device** %2, align 8
  %62 = call i32 @device_create_file(%struct.device* %61, i32* @dev_attr_store_effects_setup)
  %63 = call i32 @CHECK_RETURN(i32 %62)
  %64 = load %struct.device*, %struct.device** %2, align 8
  %65 = call i32 @device_create_file(%struct.device* %64, i32* @dev_attr_tuner_freq)
  %66 = call i32 @CHECK_RETURN(i32 %65)
  %67 = load %struct.device*, %struct.device** %2, align 8
  %68 = call i32 @device_create_file(%struct.device* %67, i32* @dev_attr_tuner_mute)
  %69 = call i32 @CHECK_RETURN(i32 %68)
  %70 = load %struct.device*, %struct.device** %2, align 8
  %71 = call i32 @device_create_file(%struct.device* %70, i32* @dev_attr_tuner_note)
  %72 = call i32 @CHECK_RETURN(i32 %71)
  %73 = load %struct.device*, %struct.device** %2, align 8
  %74 = call i32 @device_create_file(%struct.device* %73, i32* @dev_attr_tuner_pitch)
  %75 = call i32 @CHECK_RETURN(i32 %74)
  ret i32 0
}

declare dso_local i32 @CHECK_RETURN(i32) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
