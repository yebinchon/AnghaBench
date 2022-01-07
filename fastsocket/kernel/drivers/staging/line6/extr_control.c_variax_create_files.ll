; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_control.c_variax_create_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_control.c_variax_create_files.c"
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
define dso_local i32 @variax_create_files(i32 %0, i32 %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.device* %2, %struct.device** %6, align 8
  %8 = load %struct.device*, %struct.device** %6, align 8
  %9 = call i32 @device_create_file(%struct.device* %8, i32* @dev_attr_body)
  %10 = call i32 @CHECK_RETURN(i32 %9)
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call i32 @device_create_file(%struct.device* %11, i32* @dev_attr_pickup1_enable)
  %13 = call i32 @CHECK_RETURN(i32 %12)
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i32 @device_create_file(%struct.device* %14, i32* @dev_attr_pickup1_type)
  %16 = call i32 @CHECK_RETURN(i32 %15)
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 @device_create_file(%struct.device* %17, i32* @dev_attr_pickup1_position)
  %19 = call i32 @CHECK_RETURN(i32 %18)
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call i32 @device_create_file(%struct.device* %20, i32* @dev_attr_pickup1_angle)
  %22 = call i32 @CHECK_RETURN(i32 %21)
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i32 @device_create_file(%struct.device* %23, i32* @dev_attr_pickup1_level)
  %25 = call i32 @CHECK_RETURN(i32 %24)
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call i32 @device_create_file(%struct.device* %26, i32* @dev_attr_pickup2_enable)
  %28 = call i32 @CHECK_RETURN(i32 %27)
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call i32 @device_create_file(%struct.device* %29, i32* @dev_attr_pickup2_type)
  %31 = call i32 @CHECK_RETURN(i32 %30)
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = call i32 @device_create_file(%struct.device* %32, i32* @dev_attr_pickup2_position)
  %34 = call i32 @CHECK_RETURN(i32 %33)
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = call i32 @device_create_file(%struct.device* %35, i32* @dev_attr_pickup2_angle)
  %37 = call i32 @CHECK_RETURN(i32 %36)
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call i32 @device_create_file(%struct.device* %38, i32* @dev_attr_pickup2_level)
  %40 = call i32 @CHECK_RETURN(i32 %39)
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = call i32 @device_create_file(%struct.device* %41, i32* @dev_attr_pickup_phase)
  %43 = call i32 @CHECK_RETURN(i32 %42)
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = call i32 @device_create_file(%struct.device* %44, i32* @dev_attr_capacitance)
  %46 = call i32 @CHECK_RETURN(i32 %45)
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = call i32 @device_create_file(%struct.device* %47, i32* @dev_attr_tone_resistance)
  %49 = call i32 @CHECK_RETURN(i32 %48)
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = call i32 @device_create_file(%struct.device* %50, i32* @dev_attr_volume_resistance)
  %52 = call i32 @CHECK_RETURN(i32 %51)
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = call i32 @device_create_file(%struct.device* %53, i32* @dev_attr_taper)
  %55 = call i32 @CHECK_RETURN(i32 %54)
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = call i32 @device_create_file(%struct.device* %56, i32* @dev_attr_tone_dump)
  %58 = call i32 @CHECK_RETURN(i32 %57)
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = call i32 @device_create_file(%struct.device* %59, i32* @dev_attr_save_tone)
  %61 = call i32 @CHECK_RETURN(i32 %60)
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = call i32 @device_create_file(%struct.device* %62, i32* @dev_attr_volume_dump)
  %64 = call i32 @CHECK_RETURN(i32 %63)
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = call i32 @device_create_file(%struct.device* %65, i32* @dev_attr_tuning_enable)
  %67 = call i32 @CHECK_RETURN(i32 %66)
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = call i32 @device_create_file(%struct.device* %68, i32* @dev_attr_tuning6)
  %70 = call i32 @CHECK_RETURN(i32 %69)
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = call i32 @device_create_file(%struct.device* %71, i32* @dev_attr_tuning5)
  %73 = call i32 @CHECK_RETURN(i32 %72)
  %74 = load %struct.device*, %struct.device** %6, align 8
  %75 = call i32 @device_create_file(%struct.device* %74, i32* @dev_attr_tuning4)
  %76 = call i32 @CHECK_RETURN(i32 %75)
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = call i32 @device_create_file(%struct.device* %77, i32* @dev_attr_tuning3)
  %79 = call i32 @CHECK_RETURN(i32 %78)
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = call i32 @device_create_file(%struct.device* %80, i32* @dev_attr_tuning2)
  %82 = call i32 @CHECK_RETURN(i32 %81)
  %83 = load %struct.device*, %struct.device** %6, align 8
  %84 = call i32 @device_create_file(%struct.device* %83, i32* @dev_attr_tuning1)
  %85 = call i32 @CHECK_RETURN(i32 %84)
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = call i32 @device_create_file(%struct.device* %86, i32* @dev_attr_detune6)
  %88 = call i32 @CHECK_RETURN(i32 %87)
  %89 = load %struct.device*, %struct.device** %6, align 8
  %90 = call i32 @device_create_file(%struct.device* %89, i32* @dev_attr_detune5)
  %91 = call i32 @CHECK_RETURN(i32 %90)
  %92 = load %struct.device*, %struct.device** %6, align 8
  %93 = call i32 @device_create_file(%struct.device* %92, i32* @dev_attr_detune4)
  %94 = call i32 @CHECK_RETURN(i32 %93)
  %95 = load %struct.device*, %struct.device** %6, align 8
  %96 = call i32 @device_create_file(%struct.device* %95, i32* @dev_attr_detune3)
  %97 = call i32 @CHECK_RETURN(i32 %96)
  %98 = load %struct.device*, %struct.device** %6, align 8
  %99 = call i32 @device_create_file(%struct.device* %98, i32* @dev_attr_detune2)
  %100 = call i32 @CHECK_RETURN(i32 %99)
  %101 = load %struct.device*, %struct.device** %6, align 8
  %102 = call i32 @device_create_file(%struct.device* %101, i32* @dev_attr_detune1)
  %103 = call i32 @CHECK_RETURN(i32 %102)
  %104 = load %struct.device*, %struct.device** %6, align 8
  %105 = call i32 @device_create_file(%struct.device* %104, i32* @dev_attr_mix6)
  %106 = call i32 @CHECK_RETURN(i32 %105)
  %107 = load %struct.device*, %struct.device** %6, align 8
  %108 = call i32 @device_create_file(%struct.device* %107, i32* @dev_attr_mix5)
  %109 = call i32 @CHECK_RETURN(i32 %108)
  %110 = load %struct.device*, %struct.device** %6, align 8
  %111 = call i32 @device_create_file(%struct.device* %110, i32* @dev_attr_mix4)
  %112 = call i32 @CHECK_RETURN(i32 %111)
  %113 = load %struct.device*, %struct.device** %6, align 8
  %114 = call i32 @device_create_file(%struct.device* %113, i32* @dev_attr_mix3)
  %115 = call i32 @CHECK_RETURN(i32 %114)
  %116 = load %struct.device*, %struct.device** %6, align 8
  %117 = call i32 @device_create_file(%struct.device* %116, i32* @dev_attr_mix2)
  %118 = call i32 @CHECK_RETURN(i32 %117)
  %119 = load %struct.device*, %struct.device** %6, align 8
  %120 = call i32 @device_create_file(%struct.device* %119, i32* @dev_attr_mix1)
  %121 = call i32 @CHECK_RETURN(i32 %120)
  %122 = load %struct.device*, %struct.device** %6, align 8
  %123 = call i32 @device_create_file(%struct.device* %122, i32* @dev_attr_pickup_wiring)
  %124 = call i32 @CHECK_RETURN(i32 %123)
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
