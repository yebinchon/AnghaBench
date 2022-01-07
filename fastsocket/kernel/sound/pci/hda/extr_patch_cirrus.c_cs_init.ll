; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_cirrus.c_cs_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_cirrus.c_cs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.cs_spec* }
%struct.cs_spec = type { i64, i64, i64 }

@cs_errata_init_verbs = common dso_local global i32 0, align 4
@cs_coef_init_verbs = common dso_local global i32 0, align 4
@AC_VERB_SET_GPIO_MASK = common dso_local global i32 0, align 4
@AC_VERB_SET_GPIO_DIRECTION = common dso_local global i32 0, align 4
@AC_VERB_SET_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @cs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_init(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.cs_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.cs_spec*, %struct.cs_spec** %5, align 8
  store %struct.cs_spec* %6, %struct.cs_spec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = load i32, i32* @cs_errata_init_verbs, align 4
  %9 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %7, i32 %8)
  %10 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %11 = load i32, i32* @cs_coef_init_verbs, align 4
  %12 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %10, i32 %11)
  %13 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %14 = call i32 @snd_hda_gen_init(%struct.hda_codec* %13)
  %15 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %16 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %1
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = load i32, i32* @AC_VERB_SET_GPIO_MASK, align 4
  %22 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %23 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @snd_hda_codec_write(%struct.hda_codec* %20, i32 1, i32 0, i32 %21, i64 %24)
  %26 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %27 = load i32, i32* @AC_VERB_SET_GPIO_DIRECTION, align 4
  %28 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %29 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @snd_hda_codec_write(%struct.hda_codec* %26, i32 1, i32 0, i32 %27, i64 %30)
  %32 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %33 = load i32, i32* @AC_VERB_SET_GPIO_DATA, align 4
  %34 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %35 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @snd_hda_codec_write(%struct.hda_codec* %32, i32 1, i32 0, i32 %33, i64 %36)
  br label %38

38:                                               ; preds = %19, %1
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = call i32 @init_input_coef(%struct.hda_codec* %39)
  %41 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %42 = call i32 @init_digital_coef(%struct.hda_codec* %41)
  ret i32 0
}

declare dso_local i32 @snd_hda_sequence_write(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_gen_init(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i64) #1

declare dso_local i32 @init_input_coef(%struct.hda_codec*) #1

declare dso_local i32 @init_digital_coef(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
