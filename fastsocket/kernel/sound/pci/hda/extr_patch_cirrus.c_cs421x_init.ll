; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_cirrus.c_cs421x_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_cirrus.c_cs421x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.cs_spec* }
%struct.cs_spec = type { i64, i64, i64, i64 }

@CS4210_VENDOR_NID = common dso_local global i64 0, align 8
@cs421x_coef_init_verbs = common dso_local global i32 0, align 4
@cs421x_coef_init_verbs_A1_silicon_fixes = common dso_local global i32 0, align 4
@AC_VERB_SET_GPIO_MASK = common dso_local global i32 0, align 4
@AC_VERB_SET_GPIO_DIRECTION = common dso_local global i32 0, align 4
@AC_VERB_SET_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @cs421x_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs421x_init(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.cs_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.cs_spec*, %struct.cs_spec** %5, align 8
  store %struct.cs_spec* %6, %struct.cs_spec** %3, align 8
  %7 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %8 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CS4210_VENDOR_NID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %14 = load i32, i32* @cs421x_coef_init_verbs, align 4
  %15 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %13, i32 %14)
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = load i32, i32* @cs421x_coef_init_verbs_A1_silicon_fixes, align 4
  %18 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %16, i32 %17)
  %19 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %20 = call i32 @cs4210_pinmux_init(%struct.hda_codec* %19)
  br label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %23 = call i32 @snd_hda_gen_init(%struct.hda_codec* %22)
  %24 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %25 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %21
  %29 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %30 = load i32, i32* @AC_VERB_SET_GPIO_MASK, align 4
  %31 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %32 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @snd_hda_codec_write(%struct.hda_codec* %29, i32 1, i32 0, i32 %30, i64 %33)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %36 = load i32, i32* @AC_VERB_SET_GPIO_DIRECTION, align 4
  %37 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %38 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @snd_hda_codec_write(%struct.hda_codec* %35, i32 1, i32 0, i32 %36, i64 %39)
  %41 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %42 = load i32, i32* @AC_VERB_SET_GPIO_DATA, align 4
  %43 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %44 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @snd_hda_codec_write(%struct.hda_codec* %41, i32 1, i32 0, i32 %42, i64 %45)
  br label %47

47:                                               ; preds = %28, %21
  %48 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %49 = call i32 @init_input_coef(%struct.hda_codec* %48)
  %50 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %51 = call i32 @cs4210_spdif_automute(%struct.hda_codec* %50, i32* null)
  ret i32 0
}

declare dso_local i32 @snd_hda_sequence_write(%struct.hda_codec*, i32) #1

declare dso_local i32 @cs4210_pinmux_init(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_gen_init(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i64) #1

declare dso_local i32 @init_input_coef(%struct.hda_codec*) #1

declare dso_local i32 @cs4210_spdif_automute(%struct.hda_codec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
