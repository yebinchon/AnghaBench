; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_jack_update_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_jack_update_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.sigmatel_spec* }
%struct.sigmatel_spec = type { i32, i32, i64* }
%struct.hda_jack_tbl = type { i64, i64 }

@STAC_PWR_EVENT = common dso_local global i64 0, align 8
@HDA_GEN_LAST_EVENT = common dso_local global i64 0, align 8
@AC_VERB_IDT_SET_POWER_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_jack_tbl*)* @jack_update_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jack_update_power(%struct.hda_codec* %0, %struct.hda_jack_tbl* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_jack_tbl*, align 8
  %5 = alloca %struct.sigmatel_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.hda_jack_tbl* %1, %struct.hda_jack_tbl** %4, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 1
  %10 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %9, align 8
  store %struct.sigmatel_spec* %10, %struct.sigmatel_spec** %5, align 8
  %11 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %12 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %94

16:                                               ; preds = %2
  %17 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %18 = icmp ne %struct.hda_jack_tbl* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %21 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %26 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %27 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %30 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %31 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %29, i64 %32)
  %34 = call i32 @stac_toggle_power_map(%struct.hda_codec* %25, i64 %28, i32 %33, i32 1)
  br label %94

35:                                               ; preds = %19, %16
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %81, %35
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %39 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %84

42:                                               ; preds = %36
  %43 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %44 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %7, align 8
  %50 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec* %50, i64 %51)
  store %struct.hda_jack_tbl* %52, %struct.hda_jack_tbl** %4, align 8
  %53 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %54 = icmp ne %struct.hda_jack_tbl* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %42
  %56 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %57 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55, %42
  br label %81

61:                                               ; preds = %55
  %62 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %63 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @STAC_PWR_EVENT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %4, align 8
  %69 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @HDA_GEN_LAST_EVENT, align 8
  %72 = icmp sle i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67, %61
  %74 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %76, i64 %77)
  %79 = call i32 @stac_toggle_power_map(%struct.hda_codec* %74, i64 %75, i32 %78, i32 0)
  br label %80

80:                                               ; preds = %73, %67
  br label %81

81:                                               ; preds = %80, %60
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %36

84:                                               ; preds = %36
  %85 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %86 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %87 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @AC_VERB_IDT_SET_POWER_MAP, align 4
  %90 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %91 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @snd_hda_codec_write(%struct.hda_codec* %85, i32 %88, i32 0, i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %84, %24, %15
  ret void
}

declare dso_local i32 @stac_toggle_power_map(%struct.hda_codec*, i64, i32, i32) #1

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i64) #1

declare dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
