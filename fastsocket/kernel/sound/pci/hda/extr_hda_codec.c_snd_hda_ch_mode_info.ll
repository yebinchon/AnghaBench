; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_ch_mode_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_ch_mode_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.hda_channel_mode = type { i32 }

@SNDRV_CTL_ELEM_TYPE_ENUMERATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%dch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_ch_mode_info(%struct.hda_codec* %0, %struct.snd_ctl_elem_info* %1, %struct.hda_channel_mode* %2, i32 %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.snd_ctl_elem_info*, align 8
  %7 = alloca %struct.hda_channel_mode*, align 8
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %6, align 8
  store %struct.hda_channel_mode* %2, %struct.hda_channel_mode** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_ENUMERATED, align 4
  %10 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %11 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %13 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 4
  %19 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %30 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  br label %33

33:                                               ; preds = %26, %4
  %34 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %35 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hda_channel_mode*, %struct.hda_channel_mode** %7, align 8
  %40 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %41 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.hda_channel_mode, %struct.hda_channel_mode* %39, i64 %45
  %47 = getelementptr inbounds %struct.hda_channel_mode, %struct.hda_channel_mode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sprintf(i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %48)
  ret i32 0
}

declare dso_local i32 @sprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
