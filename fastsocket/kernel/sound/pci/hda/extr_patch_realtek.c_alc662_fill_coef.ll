; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc662_fill_coef.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc662_fill_coef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc662_fill_coef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc662_fill_coef(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = call i32 @alc_get_coef0(%struct.hda_codec* %5)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %29 [
    i32 283903586, label %10
    i32 283902578, label %22
    i32 283902579, label %22
    i32 283903587, label %22
    i32 283903589, label %22
    i32 283903600, label %22
    i32 283903601, label %22
    i32 283903602, label %22
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 240
  %13 = icmp eq i32 %12, 48
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %16 = call i32 @alc_read_coef_idx(%struct.hda_codec* %15, i32 4)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, -1025
  %20 = call i32 @alc_write_coef_idx(%struct.hda_codec* %17, i32 4, i32 %19)
  br label %21

21:                                               ; preds = %14, %10
  br label %29

22:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = call i32 @alc_read_coef_idx(%struct.hda_codec* %23, i32 13)
  store i32 %24, i32* %3, align 4
  %25 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, 16384
  %28 = call i32 @alc_write_coef_idx(%struct.hda_codec* %25, i32 13, i32 %27)
  br label %29

29:                                               ; preds = %1, %22, %21
  ret void
}

declare dso_local i32 @alc_get_coef0(%struct.hda_codec*) #1

declare dso_local i32 @alc_read_coef_idx(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_write_coef_idx(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
