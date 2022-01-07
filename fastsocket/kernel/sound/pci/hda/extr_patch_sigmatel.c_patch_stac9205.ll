; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_patch_stac9205.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_patch_stac9205.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, %struct.sigmatel_spec* }
%struct.sigmatel_spec = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@stac9205_core_init = common dso_local global i32 0, align 4
@stac9205_loopback = common dso_local global i32 0, align 4
@stac_patch_ops = common dso_local global i32 0, align 4
@stac9205_models = common dso_local global i32 0, align 4
@stac9205_fixup_tbl = common dso_local global i32 0, align 4
@stac9205_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@stac9205_proc_hook = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_stac9205 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_stac9205(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.sigmatel_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call i32 @alloc_stac_spec(%struct.hda_codec* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %71

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 2
  %15 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %14, align 8
  store %struct.sigmatel_spec* %15, %struct.sigmatel_spec** %4, align 8
  %16 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %17 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %19 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %18, i32 0, i32 10
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %22 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %24 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %23, i32 0, i32 10
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 35, i32* %25, align 4
  %26 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %27 = load i32, i32* @stac9205_core_init, align 4
  %28 = call i32 @snd_hda_add_verbs(%struct.hda_codec* %26, i32 %27)
  %29 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %30 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %29, i32 0, i32 9
  store i32* @stac9205_loopback, i32** %30, align 8
  %31 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %32 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %31, i32 0, i32 2
  store i32 64, i32* %32, align 8
  %33 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %34 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %33, i32 0, i32 8
  store i64 0, i64* %34, align 8
  %35 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %36 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %35, i32 0, i32 5
  store i32 1, i32* %36, align 4
  %37 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %38 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %37, i32 0, i32 4
  store i32 1, i32* %38, align 8
  %39 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %40 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %39, i32 0, i32 3
  store i32 1, i32* %40, align 4
  %41 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %42 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %41, i32 0, i32 6
  store i32 1, i32* %42, align 8
  %43 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %44 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %43, i32 0, i32 7
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* @stac_patch_ops, align 4
  %46 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %47 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %49 = load i32, i32* @stac9205_models, align 4
  %50 = load i32, i32* @stac9205_fixup_tbl, align 4
  %51 = load i32, i32* @stac9205_fixups, align 4
  %52 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %54 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %55 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %53, i32 %54)
  %56 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %57 = call i32 @stac_parse_auto_config(%struct.hda_codec* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %12
  %61 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %62 = call i32 @stac_free(%struct.hda_codec* %61)
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %71

64:                                               ; preds = %12
  %65 = load i32, i32* @stac9205_proc_hook, align 4
  %66 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %67 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %69 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %70 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %68, i32 %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %64, %60, %10
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @alloc_stac_spec(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_add_verbs(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @stac_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @stac_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
