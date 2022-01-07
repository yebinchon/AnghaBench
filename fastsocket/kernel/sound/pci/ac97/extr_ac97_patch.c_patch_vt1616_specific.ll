; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_vt1616_specific.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_vt1616_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }
%struct.snd_kcontrol = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@snd_ac97_controls_vt1616 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Master Playback Volume\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Master Playback\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Front Playback\00", align 1
@slave_vols_vt1616 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Master Playback Switch\00", align 1
@slave_sws_vt1616 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_vt1616_specific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_vt1616_specific(%struct.snd_ac97* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  %6 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %7 = call i64 @snd_ac97_try_bit(%struct.snd_ac97* %6, i32 90, i32 9)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %11 = load i32*, i32** @snd_ac97_controls_vt1616, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = call i32 @patch_build_controls(%struct.snd_ac97* %10, i32* %12, i32 1)
  store i32 %13, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %60

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %20 = load i32*, i32** @snd_ac97_controls_vt1616, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32*, i32** @snd_ac97_controls_vt1616, align 8
  %23 = call i32 @ARRAY_SIZE(i32* %22)
  %24 = sub nsw i32 %23, 1
  %25 = call i32 @patch_build_controls(%struct.snd_ac97* %19, i32* %21, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %60

29:                                               ; preds = %18
  %30 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %31 = call %struct.snd_kcontrol* @snd_ac97_find_mixer_ctl(%struct.snd_ac97* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.snd_kcontrol* %31, %struct.snd_kcontrol** %4, align 8
  %32 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %33 = icmp ne %struct.snd_kcontrol* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %60

37:                                               ; preds = %29
  %38 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %39 = call i32 @snd_ac97_rename_vol_ctl(%struct.snd_ac97* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %41 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %42 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @slave_vols_vt1616, align 4
  %46 = call i32 @snd_ac97_add_vmaster(%struct.snd_ac97* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %60

51:                                               ; preds = %37
  %52 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %53 = load i32, i32* @slave_sws_vt1616, align 4
  %54 = call i32 @snd_ac97_add_vmaster(%struct.snd_ac97* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %57, %49, %34, %27, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @snd_ac97_try_bit(%struct.snd_ac97*, i32, i32) #1

declare dso_local i32 @patch_build_controls(%struct.snd_ac97*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ac97_find_mixer_ctl(%struct.snd_ac97*, i8*) #1

declare dso_local i32 @snd_ac97_rename_vol_ctl(%struct.snd_ac97*, i8*, i8*) #1

declare dso_local i32 @snd_ac97_add_vmaster(%struct.snd_ac97*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
