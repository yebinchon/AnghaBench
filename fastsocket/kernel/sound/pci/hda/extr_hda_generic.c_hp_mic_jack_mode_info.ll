; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_hp_mic_jack_mode_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_hp_mic_jack_mode_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.hda_codec = type { i32 }

@SNDRV_CTL_ELEM_TYPE_ENUMERATED = common dso_local global i32 0, align 4
@out_jack_texts = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [14 x i8] c"Headphone Out\00", align 1
@vref_texts = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Mic In\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @hp_mic_jack_mode_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_mic_jack_mode_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.hda_codec* %13, %struct.hda_codec** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @get_out_jack_num_items(%struct.hda_codec* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @get_in_jack_num_items(%struct.hda_codec* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %23 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_ENUMERATED, align 4
  %24 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %28, %29
  %31 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %32 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %41 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %39, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %2
  %47 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %48 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %54 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %46, %2
  %58 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %57
  %67 = load i32, i32* %7, align 4
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i8**, i8*** @out_jack_texts, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %9, align 8
  br label %76

75:                                               ; preds = %66
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %76

76:                                               ; preds = %75, %69
  br label %95

77:                                               ; preds = %57
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @get_vref_caps(%struct.hda_codec* %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i8**, i8*** @vref_texts, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i64 @get_vref_idx(i32 %88, i32 %89)
  %91 = getelementptr inbounds i8*, i8** %87, i64 %90
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %9, align 8
  br label %94

93:                                               ; preds = %77
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %94

94:                                               ; preds = %93, %83
  br label %95

95:                                               ; preds = %94, %76
  %96 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %97 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @strcpy(i32 %100, i8* %101)
  ret i32 0
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_out_jack_num_items(%struct.hda_codec*, i32) #1

declare dso_local i32 @get_in_jack_num_items(%struct.hda_codec*, i32) #1

declare dso_local i32 @get_vref_caps(%struct.hda_codec*, i32) #1

declare dso_local i64 @get_vref_idx(i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
