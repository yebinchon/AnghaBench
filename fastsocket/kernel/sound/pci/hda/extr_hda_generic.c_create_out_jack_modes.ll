; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_create_out_jack_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_create_out_jack_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64 }
%struct.snd_kcontrol_new = type { i64 }

@out_jack_mode_enum = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i64*)* @create_out_jack_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_out_jack_modes(%struct.hda_codec* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.hda_gen_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_kcontrol_new*, align 8
  %13 = alloca [44 x i8], align 16
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %15, align 8
  store %struct.hda_gen_spec* %16, %struct.hda_gen_spec** %8, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %64, %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %67

21:                                               ; preds = %17
  %22 = load i64*, i64** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %29 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %21
  %33 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @create_hp_mic_jack_mode(%struct.hda_codec* %33, i64 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %4, align 4
  br label %68

40:                                               ; preds = %32
  br label %64

41:                                               ; preds = %21
  %42 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @get_out_jack_num_items(%struct.hda_codec* %42, i64 %43)
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %63

46:                                               ; preds = %41
  %47 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds [44 x i8], [44 x i8]* %13, i64 0, i64 0
  %50 = call i32 @get_jack_mode_name(%struct.hda_codec* %47, i64 %48, i8* %49, i32 44)
  %51 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %52 = getelementptr inbounds [44 x i8], [44 x i8]* %13, i64 0, i64 0
  %53 = call %struct.snd_kcontrol_new* @snd_hda_gen_add_kctl(%struct.hda_gen_spec* %51, i8* %52, i32* @out_jack_mode_enum)
  store %struct.snd_kcontrol_new* %53, %struct.snd_kcontrol_new** %12, align 8
  %54 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %12, align 8
  %55 = icmp ne %struct.snd_kcontrol_new* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %46
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %68

59:                                               ; preds = %46
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %12, align 8
  %62 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %41
  br label %64

64:                                               ; preds = %63, %40
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %17

67:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %56, %38
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @create_hp_mic_jack_mode(%struct.hda_codec*, i64) #1

declare dso_local i32 @get_out_jack_num_items(%struct.hda_codec*, i64) #1

declare dso_local i32 @get_jack_mode_name(%struct.hda_codec*, i64, i8*, i32) #1

declare dso_local %struct.snd_kcontrol_new* @snd_hda_gen_add_kctl(%struct.hda_gen_spec*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
