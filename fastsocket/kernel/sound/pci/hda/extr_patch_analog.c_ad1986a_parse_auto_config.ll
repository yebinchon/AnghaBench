; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_analog.c_ad1986a_parse_auto_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_analog.c_ad1986a_parse_auto_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.ad198x_spec* }
%struct.ad198x_spec = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HDA_OUTPUT = common dso_local global i32 0, align 4
@ad1986a_fixup_tbl = common dso_local global i32 0, align 4
@ad1986a_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @ad1986a_parse_auto_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1986a_parse_auto_config(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad198x_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call i32 @alloc_ad_spec(%struct.hda_codec* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %50

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 1
  %15 = load %struct.ad198x_spec*, %struct.ad198x_spec** %14, align 8
  store %struct.ad198x_spec* %15, %struct.ad198x_spec** %5, align 8
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.ad198x_spec*, %struct.ad198x_spec** %5, align 8
  %19 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 7, i32* %20, align 4
  %21 = load %struct.ad198x_spec*, %struct.ad198x_spec** %5, align 8
  %22 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 25, i32* %23, align 4
  %24 = load %struct.ad198x_spec*, %struct.ad198x_spec** %5, align 8
  %25 = load i32, i32* @HDA_OUTPUT, align 4
  %26 = call i32 @set_beep_amp(%struct.ad198x_spec* %24, i32 24, i32 0, i32 %25)
  %27 = load %struct.ad198x_spec*, %struct.ad198x_spec** %5, align 8
  %28 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %32 = load i32, i32* @ad1986a_fixup_tbl, align 4
  %33 = load i32, i32* @ad1986a_fixups, align 4
  %34 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %31, i32* null, i32 %32, i32 %33)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %36 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %37 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %35, i32 %36)
  %38 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %39 = call i32 @ad198x_parse_auto_config(%struct.hda_codec* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %12
  %43 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %44 = call i32 @snd_hda_gen_free(%struct.hda_codec* %43)
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %50

46:                                               ; preds = %12
  %47 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %48 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %49 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %47, i32 %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %42, %10
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @alloc_ad_spec(%struct.hda_codec*) #1

declare dso_local i32 @set_beep_amp(%struct.ad198x_spec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32*, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @ad198x_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_gen_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
