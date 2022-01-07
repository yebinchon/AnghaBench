; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_ad1888.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_ad1888.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, i32, i32, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@patch_ad1888_build_ops = common dso_local global i32 0, align 4
@AC97_AD_MISC = common dso_local global i32 0, align 4
@AC97_AD198X_MSPLT = common dso_local global i16 0, align 2
@AC97_AD198X_AC97NC = common dso_local global i16 0, align 2
@AC97_AD198X_LOSEL = common dso_local global i16 0, align 2
@AC97_AD198X_HPSEL = common dso_local global i16 0, align 2
@AC97_STEREO_MUTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_ad1888 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_ad1888(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %4 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %5 = call i32 @patch_ad1881(%struct.snd_ac97* %4)
  %6 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %7 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %6, i32 0, i32 4
  store i32* @patch_ad1888_build_ops, i32** %7, align 8
  %8 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %9 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 4163
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %14 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 4499
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %19 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %22

22:                                               ; preds = %17, %12, %1
  %23 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %24 = load i32, i32* @AC97_AD_MISC, align 4
  %25 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %23, i32 %24)
  store i16 %25, i16* %3, align 2
  %26 = load i16, i16* @AC97_AD198X_MSPLT, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* @AC97_AD198X_AC97NC, align 2
  %29 = zext i16 %28 to i32
  %30 = or i32 %27, %29
  %31 = load i16, i16* %3, align 2
  %32 = zext i16 %31 to i32
  %33 = or i32 %32, %30
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %3, align 2
  %35 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %36 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %22
  %42 = load i16, i16* @AC97_AD198X_LOSEL, align 2
  %43 = zext i16 %42 to i32
  %44 = load i16, i16* @AC97_AD198X_HPSEL, align 2
  %45 = zext i16 %44 to i32
  %46 = or i32 %43, %45
  %47 = load i16, i16* %3, align 2
  %48 = zext i16 %47 to i32
  %49 = or i32 %48, %46
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %3, align 2
  br label %51

51:                                               ; preds = %41, %22
  %52 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %53 = load i32, i32* @AC97_AD_MISC, align 4
  %54 = load i16, i16* %3, align 2
  %55 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %52, i32 %53, i16 zeroext %54)
  %56 = load i32, i32* @AC97_STEREO_MUTES, align 4
  %57 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %58 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  ret i32 0
}

declare dso_local i32 @patch_ad1881(%struct.snd_ac97*) #1

declare dso_local zeroext i16 @snd_ac97_read(%struct.snd_ac97*, i32) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
