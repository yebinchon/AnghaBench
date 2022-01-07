; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_control.c_variax_remove_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_control.c_variax_remove_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@dev_attr_body = common dso_local global i32 0, align 4
@dev_attr_pickup1_enable = common dso_local global i32 0, align 4
@dev_attr_pickup1_type = common dso_local global i32 0, align 4
@dev_attr_pickup1_position = common dso_local global i32 0, align 4
@dev_attr_pickup1_angle = common dso_local global i32 0, align 4
@dev_attr_pickup1_level = common dso_local global i32 0, align 4
@dev_attr_pickup2_enable = common dso_local global i32 0, align 4
@dev_attr_pickup2_type = common dso_local global i32 0, align 4
@dev_attr_pickup2_position = common dso_local global i32 0, align 4
@dev_attr_pickup2_angle = common dso_local global i32 0, align 4
@dev_attr_pickup2_level = common dso_local global i32 0, align 4
@dev_attr_pickup_phase = common dso_local global i32 0, align 4
@dev_attr_capacitance = common dso_local global i32 0, align 4
@dev_attr_tone_resistance = common dso_local global i32 0, align 4
@dev_attr_volume_resistance = common dso_local global i32 0, align 4
@dev_attr_taper = common dso_local global i32 0, align 4
@dev_attr_tone_dump = common dso_local global i32 0, align 4
@dev_attr_save_tone = common dso_local global i32 0, align 4
@dev_attr_volume_dump = common dso_local global i32 0, align 4
@dev_attr_tuning_enable = common dso_local global i32 0, align 4
@dev_attr_tuning6 = common dso_local global i32 0, align 4
@dev_attr_tuning5 = common dso_local global i32 0, align 4
@dev_attr_tuning4 = common dso_local global i32 0, align 4
@dev_attr_tuning3 = common dso_local global i32 0, align 4
@dev_attr_tuning2 = common dso_local global i32 0, align 4
@dev_attr_tuning1 = common dso_local global i32 0, align 4
@dev_attr_detune6 = common dso_local global i32 0, align 4
@dev_attr_detune5 = common dso_local global i32 0, align 4
@dev_attr_detune4 = common dso_local global i32 0, align 4
@dev_attr_detune3 = common dso_local global i32 0, align 4
@dev_attr_detune2 = common dso_local global i32 0, align 4
@dev_attr_detune1 = common dso_local global i32 0, align 4
@dev_attr_mix6 = common dso_local global i32 0, align 4
@dev_attr_mix5 = common dso_local global i32 0, align 4
@dev_attr_mix4 = common dso_local global i32 0, align 4
@dev_attr_mix3 = common dso_local global i32 0, align 4
@dev_attr_mix2 = common dso_local global i32 0, align 4
@dev_attr_mix1 = common dso_local global i32 0, align 4
@dev_attr_pickup_wiring = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @variax_remove_files(i32 %0, i32 %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.device* %2, %struct.device** %6, align 8
  %7 = load %struct.device*, %struct.device** %6, align 8
  %8 = call i32 @device_remove_file(%struct.device* %7, i32* @dev_attr_body)
  %9 = load %struct.device*, %struct.device** %6, align 8
  %10 = call i32 @device_remove_file(%struct.device* %9, i32* @dev_attr_pickup1_enable)
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call i32 @device_remove_file(%struct.device* %11, i32* @dev_attr_pickup1_type)
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call i32 @device_remove_file(%struct.device* %13, i32* @dev_attr_pickup1_position)
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call i32 @device_remove_file(%struct.device* %15, i32* @dev_attr_pickup1_angle)
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 @device_remove_file(%struct.device* %17, i32* @dev_attr_pickup1_level)
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call i32 @device_remove_file(%struct.device* %19, i32* @dev_attr_pickup2_enable)
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call i32 @device_remove_file(%struct.device* %21, i32* @dev_attr_pickup2_type)
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i32 @device_remove_file(%struct.device* %23, i32* @dev_attr_pickup2_position)
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = call i32 @device_remove_file(%struct.device* %25, i32* @dev_attr_pickup2_angle)
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call i32 @device_remove_file(%struct.device* %27, i32* @dev_attr_pickup2_level)
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call i32 @device_remove_file(%struct.device* %29, i32* @dev_attr_pickup_phase)
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i32 @device_remove_file(%struct.device* %31, i32* @dev_attr_capacitance)
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = call i32 @device_remove_file(%struct.device* %33, i32* @dev_attr_tone_resistance)
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = call i32 @device_remove_file(%struct.device* %35, i32* @dev_attr_volume_resistance)
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = call i32 @device_remove_file(%struct.device* %37, i32* @dev_attr_taper)
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = call i32 @device_remove_file(%struct.device* %39, i32* @dev_attr_tone_dump)
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = call i32 @device_remove_file(%struct.device* %41, i32* @dev_attr_save_tone)
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = call i32 @device_remove_file(%struct.device* %43, i32* @dev_attr_volume_dump)
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = call i32 @device_remove_file(%struct.device* %45, i32* @dev_attr_tuning_enable)
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = call i32 @device_remove_file(%struct.device* %47, i32* @dev_attr_tuning6)
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = call i32 @device_remove_file(%struct.device* %49, i32* @dev_attr_tuning5)
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i32 @device_remove_file(%struct.device* %51, i32* @dev_attr_tuning4)
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = call i32 @device_remove_file(%struct.device* %53, i32* @dev_attr_tuning3)
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = call i32 @device_remove_file(%struct.device* %55, i32* @dev_attr_tuning2)
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = call i32 @device_remove_file(%struct.device* %57, i32* @dev_attr_tuning1)
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = call i32 @device_remove_file(%struct.device* %59, i32* @dev_attr_detune6)
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = call i32 @device_remove_file(%struct.device* %61, i32* @dev_attr_detune5)
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = call i32 @device_remove_file(%struct.device* %63, i32* @dev_attr_detune4)
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = call i32 @device_remove_file(%struct.device* %65, i32* @dev_attr_detune3)
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = call i32 @device_remove_file(%struct.device* %67, i32* @dev_attr_detune2)
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = call i32 @device_remove_file(%struct.device* %69, i32* @dev_attr_detune1)
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = call i32 @device_remove_file(%struct.device* %71, i32* @dev_attr_mix6)
  %73 = load %struct.device*, %struct.device** %6, align 8
  %74 = call i32 @device_remove_file(%struct.device* %73, i32* @dev_attr_mix5)
  %75 = load %struct.device*, %struct.device** %6, align 8
  %76 = call i32 @device_remove_file(%struct.device* %75, i32* @dev_attr_mix4)
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = call i32 @device_remove_file(%struct.device* %77, i32* @dev_attr_mix3)
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = call i32 @device_remove_file(%struct.device* %79, i32* @dev_attr_mix2)
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = call i32 @device_remove_file(%struct.device* %81, i32* @dev_attr_mix1)
  %83 = load %struct.device*, %struct.device** %6, align 8
  %84 = call i32 @device_remove_file(%struct.device* %83, i32* @dev_attr_pickup_wiring)
  ret void
}

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
