; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_it2646_specific.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_it2646_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }

@snd_ac97_controls_it2646 = common dso_local global i32 0, align 4
@snd_ac97_spdif_controls_it2646 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_it2646_specific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_it2646_specific(%struct.snd_ac97* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  %5 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %6 = load i32, i32* @snd_ac97_controls_it2646, align 4
  %7 = load i32, i32* @snd_ac97_controls_it2646, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = call i32 @patch_build_controls(%struct.snd_ac97* %5, i32 %6, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %23

13:                                               ; preds = %1
  %14 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %15 = load i32, i32* @snd_ac97_spdif_controls_it2646, align 4
  %16 = load i32, i32* @snd_ac97_spdif_controls_it2646, align 4
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = call i32 @patch_build_controls(%struct.snd_ac97* %14, i32 %15, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %20, %11
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @patch_build_controls(%struct.snd_ac97*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
