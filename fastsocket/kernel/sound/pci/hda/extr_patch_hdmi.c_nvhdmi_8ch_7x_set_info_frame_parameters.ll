; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_nvhdmi_8ch_7x_set_info_frame_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_nvhdmi_8ch_7x_set_info_frame_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@Nv_VERB_SET_Channel_Allocation = common dso_local global i32 0, align 4
@Nv_VERB_SET_Info_Frame_Checksum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32)* @nvhdmi_8ch_7x_set_info_frame_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvhdmi_8ch_7x_set_info_frame_parameters(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = sub nsw i32 %10, 1
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi i32 [ %11, %9 ], [ 1, %12 ]
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %16 [
    i32 0, label %17
    i32 2, label %17
    i32 4, label %18
    i32 6, label %19
    i32 8, label %20
  ]

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %13, %13, %16
  store i32 0, i32* %5, align 4
  br label %21

18:                                               ; preds = %13
  store i32 8, i32* %5, align 4
  br label %21

19:                                               ; preds = %13
  store i32 11, i32* %5, align 4
  br label %21

20:                                               ; preds = %13
  store i32 19, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %19, %18, %17
  %22 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %23 = load i32, i32* @Nv_VERB_SET_Channel_Allocation, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @snd_hda_codec_write(%struct.hda_codec* %22, i32 1, i32 0, i32 %23, i32 %24)
  %26 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %27 = load i32, i32* @Nv_VERB_SET_Info_Frame_Checksum, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 113, %28
  %30 = load i32, i32* %5, align 4
  %31 = sub i32 %29, %30
  %32 = call i32 @snd_hda_codec_write(%struct.hda_codec* %26, i32 1, i32 0, i32 %27, i32 %31)
  ret void
}

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
