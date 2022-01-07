; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_audio_src_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_audio_src_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.snd_pcxhr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@pcxhr_audio_src_info.texts = internal global [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Digital\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Digi+SRC\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Line+Mic\00", align 1
@SNDRV_CTL_ELEM_TYPE_ENUMERATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @pcxhr_audio_src_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_audio_src_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcxhr*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.snd_pcxhr* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.snd_pcxhr* %8, %struct.snd_pcxhr** %6, align 8
  store i32 2, i32* %5, align 4
  %9 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %6, align 8
  %10 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  store i32 3, i32* %5, align 4
  %16 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %6, align 8
  %17 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 5, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %15
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_ENUMERATED, align 4
  %26 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %32 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %24
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %47 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %24
  %51 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %52 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %57 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [5 x i8*], [5 x i8*]* @pcxhr_audio_src_info.texts, i64 0, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strcpy(i32 %55, i8* %63)
  ret i32 0
}

declare dso_local %struct.snd_pcxhr* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
