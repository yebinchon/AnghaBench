; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_via_parse_auto_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_via_parse_auto_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.via_spec* }
%struct.via_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32* }

@via_main_out_badness = common dso_local global i32 0, align 4
@via_extra_out_badness = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @via_parse_auto_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_parse_auto_config(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.via_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = load %struct.via_spec*, %struct.via_spec** %7, align 8
  store %struct.via_spec* %8, %struct.via_spec** %4, align 8
  %9 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %10 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store i32* @via_main_out_badness, i32** %11, align 8
  %12 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %13 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32* @via_extra_out_badness, i32** %14, align 8
  %15 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %16 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %17 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec* %15, i32* %18, i32* null, i32 0)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %37

24:                                               ; preds = %1
  %25 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %26 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %27 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec* %25, i32* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %37

34:                                               ; preds = %24
  %35 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %36 = call i32 @via_set_jack_unsol_events(%struct.hda_codec* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %32, %22
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec*, i32*, i32*, i32) #1

declare dso_local i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec*, i32*) #1

declare dso_local i32 @via_set_jack_unsol_events(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
