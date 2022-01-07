; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_find_mute_led_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_find_mute_led_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, %struct.sigmatel_spec* }
%struct.sigmatel_spec = type { i32, i32, i32 }
%struct.dmi_device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"gpio_led\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"gpio_led_polarity\00", align 1
@DMI_DEV_TYPE_OEM_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"HP_Mute_LED_%d_%x\00", align 1
@AC_PAR_GPIO_CAP = common dso_local global i32 0, align 4
@AC_GPIO_IO_COUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"HP_Mute_LED_%d\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"HP_Mute_LED_P_G\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32)* @find_mute_led_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_mute_led_cfg(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sigmatel_spec*, align 8
  %7 = alloca %struct.dmi_device*, align 8
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 2
  %11 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %10, align 8
  store %struct.sigmatel_spec* %11, %struct.sigmatel_spec** %6, align 8
  store %struct.dmi_device* null, %struct.dmi_device** %7, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %13 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %14 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %13, i32 0, i32 0
  %15 = call i64 @get_int_hint(%struct.hda_codec* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %19 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %20 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %19, i32 0, i32 1
  %21 = call i64 @get_int_hint(%struct.hda_codec* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %20)
  store i32 1, i32* %3, align 4
  br label %117

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %97, %22
  %24 = load i32, i32* @DMI_DEV_TYPE_OEM_STRING, align 4
  %25 = load %struct.dmi_device*, %struct.dmi_device** %7, align 8
  %26 = call %struct.dmi_device* @dmi_find_device(i32 %24, i32* null, %struct.dmi_device* %25)
  store %struct.dmi_device* %26, %struct.dmi_device** %7, align 8
  %27 = icmp ne %struct.dmi_device* %26, null
  br i1 %27, label %28, label %98

28:                                               ; preds = %23
  %29 = load %struct.dmi_device*, %struct.dmi_device** %7, align 8
  %30 = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %33 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %32, i32 0, i32 1
  %34 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %35 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %34, i32 0, i32 0
  %36 = call i32 (i32, i8*, i32*, ...) @sscanf(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %33, i32* %35)
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %67

38:                                               ; preds = %28
  %39 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %40 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %41 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AC_PAR_GPIO_CAP, align 4
  %44 = call i32 @snd_hda_param_read(%struct.hda_codec* %39, i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @AC_GPIO_IO_COUNT, align 4
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %49 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %38
  %54 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %55 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 1, %56
  %58 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %59 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %66

60:                                               ; preds = %38
  %61 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %62 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %65 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %60, %53
  store i32 1, i32* %3, align 4
  br label %117

67:                                               ; preds = %28
  %68 = load %struct.dmi_device*, %struct.dmi_device** %7, align 8
  %69 = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %72 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %71, i32 0, i32 1
  %73 = call i32 (i32, i8*, i32*, ...) @sscanf(i32 %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %72)
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %77 = call i32 @set_hp_led_gpio(%struct.hda_codec* %76)
  store i32 1, i32* %3, align 4
  br label %117

78:                                               ; preds = %67
  %79 = load %struct.dmi_device*, %struct.dmi_device** %7, align 8
  %80 = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @strstr(i32 %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %86 = call i32 @set_hp_led_gpio(%struct.hda_codec* %85)
  %87 = load i32, i32* %5, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %92 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %96

93:                                               ; preds = %84
  %94 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %95 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %94, i32 0, i32 1
  store i32 1, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %89
  store i32 1, i32* %3, align 4
  br label %117

97:                                               ; preds = %78
  br label %23

98:                                               ; preds = %23
  %99 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %100 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @hp_blike_system(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %98
  %105 = load i32, i32* %5, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %5, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %116

110:                                              ; preds = %107, %104
  %111 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %112 = call i32 @set_hp_led_gpio(%struct.hda_codec* %111)
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  %115 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  store i32 1, i32* %3, align 4
  br label %117

116:                                              ; preds = %107, %98
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %110, %96, %75, %66, %17
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i64 @get_int_hint(%struct.hda_codec*, i8*, i32*) #1

declare dso_local %struct.dmi_device* @dmi_find_device(i32, i32*, %struct.dmi_device*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, ...) #1

declare dso_local i32 @snd_hda_param_read(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @set_hp_led_gpio(%struct.hda_codec*) #1

declare dso_local i64 @strstr(i32, i8*) #1

declare dso_local i32 @hp_blike_system(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
