; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_analog.c_ad1981_parse_auto_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_analog.c_ad1981_parse_auto_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ad198x_spec* }
%struct.ad198x_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@HDA_OUTPUT = common dso_local global i32 0, align 4
@ad1981_fixup_tbl = common dso_local global i32 0, align 4
@ad1981_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @ad1981_parse_auto_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1981_parse_auto_config(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.ad198x_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call i32 @alloc_ad_spec(%struct.hda_codec* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %52

13:                                               ; preds = %1
  %14 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = load %struct.ad198x_spec*, %struct.ad198x_spec** %15, align 8
  store %struct.ad198x_spec* %16, %struct.ad198x_spec** %4, align 8
  %17 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %18 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 14, i32* %19, align 4
  %20 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %21 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 16, i32* %22, align 4
  %23 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %24 = load i32, i32* @HDA_OUTPUT, align 4
  %25 = call i32 @set_beep_amp(%struct.ad198x_spec* %23, i32 13, i32 0, i32 %24)
  %26 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %27 = load i32, i32* @ad1981_fixup_tbl, align 4
  %28 = load i32, i32* @ad1981_fixups, align 4
  %29 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %26, i32* null, i32 %27, i32 %28)
  %30 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %31 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %32 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %30, i32 %31)
  %33 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %34 = call i32 @ad198x_parse_auto_config(%struct.hda_codec* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %13
  br label %48

38:                                               ; preds = %13
  %39 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %40 = call i32 @ad1983_add_spdif_mux_ctl(%struct.hda_codec* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %48

44:                                               ; preds = %38
  %45 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %46 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %47 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %45, i32 %46)
  store i32 0, i32* %2, align 4
  br label %52

48:                                               ; preds = %43, %37
  %49 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %50 = call i32 @snd_hda_gen_free(%struct.hda_codec* %49)
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %44, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @alloc_ad_spec(%struct.hda_codec*) #1

declare dso_local i32 @set_beep_amp(%struct.ad198x_spec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32*, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @ad198x_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @ad1983_add_spdif_mux_ctl(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_gen_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
