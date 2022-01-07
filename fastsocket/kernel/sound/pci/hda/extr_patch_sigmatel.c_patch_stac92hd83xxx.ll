; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_patch_stac92hd83xxx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_patch_stac92hd83xxx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, %struct.sigmatel_spec*, i64 }
%struct.sigmatel_spec = type { i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@stac92hd83xxx_pwr_nids = common dso_local global i32 0, align 4
@stac_patch_ops = common dso_local global i32 0, align 4
@stac92hd83xxx_core_init = common dso_local global i32 0, align 4
@stac92hd83xxx_models = common dso_local global i32 0, align 4
@stac92hd83xxx_fixup_tbl = common dso_local global i32 0, align 4
@stac92hd83xxx_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@stac92hd_proc_hook = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_stac92hd83xxx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_stac92hd83xxx(%struct.hda_codec* %0) #0 {
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
  br label %72

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %16 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %15, i32 0, i32 2
  %17 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %16, align 8
  store %struct.sigmatel_spec* %17, %struct.sigmatel_spec** %4, align 8
  %18 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %19 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %21 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %24 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %27 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 27, i32* %28, align 4
  %29 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %30 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i32 33, i32* %31, align 4
  %32 = load i32, i32* @stac92hd83xxx_pwr_nids, align 4
  %33 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %34 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @stac92hd83xxx_pwr_nids, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %38 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %40 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %39, i32 0, i32 0
  store i32 -1, i32* %40, align 8
  %41 = load i32, i32* @stac_patch_ops, align 4
  %42 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %43 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %45 = load i32, i32* @stac92hd83xxx_core_init, align 4
  %46 = call i32 @snd_hda_add_verbs(%struct.hda_codec* %44, i32 %45)
  %47 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %48 = load i32, i32* @stac92hd83xxx_models, align 4
  %49 = load i32, i32* @stac92hd83xxx_fixup_tbl, align 4
  %50 = load i32, i32* @stac92hd83xxx_fixups, align 4
  %51 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %53 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %54 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %52, i32 %53)
  %55 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %56 = call i32 @stac_setup_gpio(%struct.hda_codec* %55)
  %57 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %58 = call i32 @stac_parse_auto_config(%struct.hda_codec* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %12
  %62 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %63 = call i32 @stac_free(%struct.hda_codec* %62)
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %72

65:                                               ; preds = %12
  %66 = load i32, i32* @stac92hd_proc_hook, align 4
  %67 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %68 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %70 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %71 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %69, i32 %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %65, %61, %10
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @alloc_stac_spec(%struct.hda_codec*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_hda_add_verbs(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @stac_setup_gpio(%struct.hda_codec*) #1

declare dso_local i32 @stac_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @stac_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
