; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_parse_auto_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_parse_auto_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32*, i32*)* @alc_parse_auto_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc_parse_auto_config(%struct.hda_codec* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.alc_spec*, align 8
  %9 = alloca %struct.auto_pin_cfg*, align 8
  %10 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = load %struct.alc_spec*, %struct.alc_spec** %12, align 8
  store %struct.alc_spec* %13, %struct.alc_spec** %8, align 8
  %14 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %15 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.auto_pin_cfg* %16, %struct.auto_pin_cfg** %9, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %18 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  %21 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec* %17, %struct.auto_pin_cfg* %18, i32* %19, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %44

28:                                               ; preds = %3
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @alc_ssid_check(%struct.hda_codec* %32, i32* %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %37 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %38 = call i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec* %36, %struct.auto_pin_cfg* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %44

43:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %41, %26
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec*, %struct.auto_pin_cfg*, i32*, i32) #1

declare dso_local i32 @alc_ssid_check(%struct.hda_codec*, i32*) #1

declare dso_local i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec*, %struct.auto_pin_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
