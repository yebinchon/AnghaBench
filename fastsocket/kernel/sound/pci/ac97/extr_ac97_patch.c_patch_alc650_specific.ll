; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_alc650_specific.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_alc650_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, i64 }

@snd_ac97_controls_alc650 = common dso_local global i32 0, align 4
@AC97_EI_SPDIF = common dso_local global i32 0, align 4
@snd_ac97_spdif_controls_alc650 = common dso_local global i32 0, align 4
@AC97_ID_ALC650F = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Master Playback Volume\00", align 1
@db_scale_5bit_3db_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_alc650_specific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_alc650_specific(%struct.snd_ac97* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  %5 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %6 = load i32, i32* @snd_ac97_controls_alc650, align 4
  %7 = load i32, i32* @snd_ac97_controls_alc650, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = call i32 @patch_build_controls(%struct.snd_ac97* %5, i32 %6, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %41

13:                                               ; preds = %1
  %14 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %15 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @AC97_EI_SPDIF, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %22 = load i32, i32* @snd_ac97_spdif_controls_alc650, align 4
  %23 = load i32, i32* @snd_ac97_spdif_controls_alc650, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = call i32 @patch_build_controls(%struct.snd_ac97* %21, i32 %22, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %41

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %13
  %31 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %32 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AC97_ID_ALC650F, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %38 = load i32, i32* @db_scale_5bit_3db_max, align 4
  %39 = call i32 @reset_tlv(%struct.snd_ac97* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %30
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %27, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @patch_build_controls(%struct.snd_ac97*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @reset_tlv(%struct.snd_ac97*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
