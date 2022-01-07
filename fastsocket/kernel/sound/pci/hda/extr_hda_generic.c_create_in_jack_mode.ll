; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_create_in_jack_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_create_in_jack_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64 }
%struct.snd_kcontrol_new = type { i64 }

@INPUT_PIN_ATTR_INT = common dso_local global i64 0, align 8
@in_jack_mode_enum = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i64)* @create_in_jack_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_in_jack_mode(%struct.hda_codec* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hda_gen_spec*, align 8
  %7 = alloca %struct.snd_kcontrol_new*, align 8
  %8 = alloca [44 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %11, align 8
  store %struct.hda_gen_spec* %12, %struct.hda_gen_spec** %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %15 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

19:                                               ; preds = %2
  %20 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %20, i64 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @snd_hda_get_input_pin_attr(i32 %23)
  %25 = load i64, i64* @INPUT_PIN_ATTR_INT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %51

28:                                               ; preds = %19
  %29 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @get_in_jack_num_items(%struct.hda_codec* %29, i64 %30)
  %32 = icmp sle i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %51

34:                                               ; preds = %28
  %35 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds [44 x i8], [44 x i8]* %8, i64 0, i64 0
  %38 = call i32 @get_jack_mode_name(%struct.hda_codec* %35, i64 %36, i8* %37, i32 44)
  %39 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %40 = getelementptr inbounds [44 x i8], [44 x i8]* %8, i64 0, i64 0
  %41 = call %struct.snd_kcontrol_new* @snd_hda_gen_add_kctl(%struct.hda_gen_spec* %39, i8* %40, i32* @in_jack_mode_enum)
  store %struct.snd_kcontrol_new* %41, %struct.snd_kcontrol_new** %7, align 8
  %42 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %43 = icmp ne %struct.snd_kcontrol_new* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %51

47:                                               ; preds = %34
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %50 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %44, %33, %27, %18
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i64) #1

declare dso_local i64 @snd_hda_get_input_pin_attr(i32) #1

declare dso_local i32 @get_in_jack_num_items(%struct.hda_codec*, i64) #1

declare dso_local i32 @get_jack_mode_name(%struct.hda_codec*, i64, i8*, i32) #1

declare dso_local %struct.snd_kcontrol_new* @snd_hda_gen_add_kctl(%struct.hda_gen_spec*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
