; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_create_hp_mic_jack_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_create_hp_mic_jack_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32 }
%struct.snd_kcontrol_new = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Headphone Mic Jack Mode\00", align 1
@hp_mic_jack_mode_enum = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32)* @create_hp_mic_jack_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_hp_mic_jack_mode(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_gen_spec*, align 8
  %7 = alloca %struct.snd_kcontrol_new*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %9, align 8
  store %struct.hda_gen_spec* %10, %struct.hda_gen_spec** %6, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @get_out_jack_num_items(%struct.hda_codec* %11, i32 %12)
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @get_in_jack_num_items(%struct.hda_codec* %16, i32 %17)
  %19 = icmp sle i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %35

21:                                               ; preds = %15, %2
  %22 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %23 = call %struct.snd_kcontrol_new* @snd_hda_gen_add_kctl(%struct.hda_gen_spec* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* @hp_mic_jack_mode_enum)
  store %struct.snd_kcontrol_new* %23, %struct.snd_kcontrol_new** %7, align 8
  %24 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %25 = icmp ne %struct.snd_kcontrol_new* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %35

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %32 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %34 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %29, %26, %20
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @get_out_jack_num_items(%struct.hda_codec*, i32) #1

declare dso_local i32 @get_in_jack_num_items(%struct.hda_codec*, i32) #1

declare dso_local %struct.snd_kcontrol_new* @snd_hda_gen_add_kctl(%struct.hda_gen_spec*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
