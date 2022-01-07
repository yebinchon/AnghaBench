; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_headset_mode_omtp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_headset_mode_omtp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Headset jack set to Nokia-style headset mode.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc_headset_mode_omtp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_headset_mode_omtp(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %3 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %4 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %25 [
    i32 283902595, label %6
    i32 283902610, label %13
    i32 283903592, label %20
  ]

6:                                                ; preds = %1
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = call i32 @alc_write_coef_idx(%struct.hda_codec* %7, i32 69, i32 58409)
  %9 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %10 = call i32 @alc_write_coef_idx(%struct.hda_codec* %9, i32 27, i32 3115)
  %11 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %12 = call i32 @alc_write_coef_idx(%struct.hda_codec* %11, i32 50, i32 20131)
  br label %25

13:                                               ; preds = %1
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = call i32 @alc_write_coef_idx(%struct.hda_codec* %14, i32 107, i32 58409)
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = call i32 @alc_write_coef_idx(%struct.hda_codec* %16, i32 118, i32 8)
  %18 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %19 = call i32 @alc_write_coef_idx(%struct.hda_codec* %18, i32 24, i32 29576)
  br label %25

20:                                               ; preds = %1
  %21 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %22 = call i32 @alc_write_coef_idx(%struct.hda_codec* %21, i32 21, i32 3408)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = call i32 @alc_write_coef_idx(%struct.hda_codec* %23, i32 195, i32 0)
  br label %25

25:                                               ; preds = %1, %20, %13, %6
  %26 = call i32 @snd_printdd(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @alc_write_coef_idx(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_printdd(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
