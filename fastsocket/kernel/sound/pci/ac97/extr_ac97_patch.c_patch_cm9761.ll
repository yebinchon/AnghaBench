; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_cm9761.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_cm9761.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i64, %struct.TYPE_2__, i32*, i32, i32*, i32 }
%struct.TYPE_2__ = type { i16 }

@AC97_HAS_NO_PCM_VOL = common dso_local global i32 0, align 4
@AC97_MASTER = common dso_local global i32 0, align 4
@AC97_PCM = common dso_local global i32 0, align 4
@AC97_ID_CM9761_82 = common dso_local global i64 0, align 8
@AC97_INT_PAGING = common dso_local global i32 0, align 4
@AC97_ID_CM9761_83 = common dso_local global i64 0, align 8
@patch_cm9761_ops = common dso_local global i32 0, align 4
@AC97_EI_SPDIF = common dso_local global i32 0, align 4
@AC97_EXTENDED_STATUS = common dso_local global i32 0, align 4
@AC97_CM9761_SPDIF_CTRL = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_48000 = common dso_local global i32 0, align 4
@AC97_RATES_SPDIF = common dso_local global i64 0, align 8
@AC97_CM9761_MULTI_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_cm9761 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_cm9761(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %5 = load i32, i32* @AC97_HAS_NO_PCM_VOL, align 4
  %6 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %7 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 8
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %11 = load i32, i32* @AC97_MASTER, align 4
  %12 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %10, i32 %11, i32 34824)
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %14 = load i32, i32* @AC97_PCM, align 4
  %15 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %13, i32 %14, i32 34824)
  %16 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %17 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i16 0, i16* %18, align 8
  %19 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %20 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AC97_ID_CM9761_82, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %1
  %25 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %26 = load i32, i32* @AC97_INT_PAGING, align 4
  %27 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %25, i32 %26)
  store i16 %27, i16* %3, align 2
  %28 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %29 = load i32, i32* @AC97_INT_PAGING, align 4
  %30 = load i16, i16* %3, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, -16
  %33 = or i32 %32, 1
  %34 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %28, i32 %29, i32 %33)
  %35 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %36 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %35, i32 96)
  store i16 %36, i16* %4, align 2
  %37 = load i16, i16* %4, align 2
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, 1
  %40 = trunc i32 %39 to i16
  %41 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %42 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i16 %40, i16* %43, align 8
  %44 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %45 = load i32, i32* @AC97_INT_PAGING, align 4
  %46 = load i16, i16* %3, align 2
  %47 = zext i16 %46 to i32
  %48 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %44, i32 %45, i32 %47)
  br label %60

49:                                               ; preds = %1
  %50 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %51 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AC97_ID_CM9761_83, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %57 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i16 2, i16* %58, align 8
  br label %59

59:                                               ; preds = %55, %49
  br label %60

60:                                               ; preds = %59, %24
  %61 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %62 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %61, i32 0, i32 4
  store i32* @patch_cm9761_ops, i32** %62, align 8
  %63 = load i32, i32* @AC97_EI_SPDIF, align 4
  %64 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %65 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %69 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %70 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %68, i32 %69, i32 1472)
  %71 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %72 = load i32, i32* @AC97_CM9761_SPDIF_CTRL, align 4
  %73 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %71, i32 %72, i32 1)
  %74 = load i32, i32* @SNDRV_PCM_RATE_48000, align 4
  %75 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %76 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @AC97_RATES_SPDIF, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 %74, i32* %79, align 4
  %80 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %81 = load i32, i32* @AC97_CM9761_MULTI_CHAN, align 4
  %82 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %80, i32 %81)
  store i16 %82, i16* %3, align 2
  %83 = load i16, i16* %3, align 2
  %84 = zext i16 %83 to i32
  %85 = or i32 %84, 16
  %86 = trunc i32 %85 to i16
  store i16 %86, i16* %3, align 2
  %87 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %88 = load i32, i32* @AC97_CM9761_MULTI_CHAN, align 4
  %89 = load i16, i16* %3, align 2
  %90 = zext i16 %89 to i32
  %91 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %87, i32 %88, i32 %90)
  %92 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %93 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %92, i32 112, i32 256)
  %94 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %95 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %94, i32 114, i32 32)
  ret i32 0
}

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i32) #1

declare dso_local zeroext i16 @snd_ac97_read(%struct.snd_ac97*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
