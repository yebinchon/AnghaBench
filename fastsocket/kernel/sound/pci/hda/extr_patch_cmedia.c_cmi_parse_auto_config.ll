; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_cmedia.c_cmi_parse_auto_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_cmedia.c_cmi_parse_auto_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.cmi_spec* }
%struct.cmi_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32 }

@cmi_auto_patch_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @cmi_parse_auto_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmi_parse_auto_config(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.cmi_spec*, align 8
  %5 = alloca %struct.auto_pin_cfg*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 1
  %9 = load %struct.cmi_spec*, %struct.cmi_spec** %8, align 8
  store %struct.cmi_spec* %9, %struct.cmi_spec** %4, align 8
  %10 = load %struct.cmi_spec*, %struct.cmi_spec** %4, align 8
  %11 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.auto_pin_cfg* %12, %struct.auto_pin_cfg** %5, align 8
  %13 = load %struct.cmi_spec*, %struct.cmi_spec** %4, align 8
  %14 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %13, i32 0, i32 0
  %15 = call i32 @snd_hda_gen_spec_init(%struct.TYPE_2__* %14)
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %18 = call i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec* %16, %struct.auto_pin_cfg* %17, i32* null, i32 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %35

23:                                               ; preds = %1
  %24 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %25 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %26 = call i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec* %24, %struct.auto_pin_cfg* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %35

31:                                               ; preds = %23
  %32 = load i32, i32* @cmi_auto_patch_ops, align 4
  %33 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %34 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %29, %21
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @snd_hda_gen_spec_init(%struct.TYPE_2__*) #1

declare dso_local i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec*, %struct.auto_pin_cfg*, i32*, i32) #1

declare dso_local i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec*, %struct.auto_pin_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
