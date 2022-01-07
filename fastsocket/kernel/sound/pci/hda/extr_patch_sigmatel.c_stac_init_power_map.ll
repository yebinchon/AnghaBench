; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_stac_init_power_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_stac_init_power_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.sigmatel_spec* }
%struct.sigmatel_spec = type { i32, i64*, i64 }

@AC_JACK_PORT_COMPLEX = common dso_local global i32 0, align 4
@STAC_PWR_EVENT = common dso_local global i32 0, align 4
@jack_update_power = common dso_local global i32 0, align 4
@AC_JACK_PORT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @stac_init_power_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stac_init_power_map(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.sigmatel_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %8, align 8
  store %struct.sigmatel_spec* %9, %struct.sigmatel_spec** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %69, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %13 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %72

16:                                               ; preds = %10
  %17 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %18 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %24, i64 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @get_defcfg_connect(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @snd_hda_jack_tbl_get(%struct.hda_codec* %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  br label %69

34:                                               ; preds = %16
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @AC_JACK_PORT_COMPLEX, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %40 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %55, label %44

44:                                               ; preds = %38
  %45 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @is_jack_detectable(%struct.hda_codec* %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i32, i32* @STAC_PWR_EVENT, align 4
  %53 = load i32, i32* @jack_update_power, align 4
  %54 = call i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec* %50, i64 %51, i32 %52, i32 %53)
  br label %68

55:                                               ; preds = %44, %38, %34
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @AC_JACK_PORT_NONE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @stac_toggle_power_map(%struct.hda_codec* %60, i64 %61, i32 0, i32 0)
  br label %67

63:                                               ; preds = %55
  %64 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @stac_toggle_power_map(%struct.hda_codec* %64, i64 %65, i32 1, i32 0)
  br label %67

67:                                               ; preds = %63, %59
  br label %68

68:                                               ; preds = %67, %49
  br label %69

69:                                               ; preds = %68, %33
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %10

72:                                               ; preds = %10
  ret void
}

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i64) #1

declare dso_local i32 @get_defcfg_connect(i32) #1

declare dso_local i64 @snd_hda_jack_tbl_get(%struct.hda_codec*, i64) #1

declare dso_local i64 @is_jack_detectable(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec*, i64, i32, i32) #1

declare dso_local i32 @stac_toggle_power_map(%struct.hda_codec*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
