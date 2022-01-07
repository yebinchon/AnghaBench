; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_reset.c_snd_gf1_clear_voices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_reset.c_snd_gf1_clear_voices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SNDRV_GF1_VB_ADDRESS_CONTROL = common dso_local global i32 0, align 4
@SNDRV_GF1_VB_VOLUME_CONTROL = common dso_local global i32 0, align 4
@SNDRV_GF1_VB_MODE = common dso_local global i32 0, align 4
@SNDRV_GF1_VW_FREQUENCY = common dso_local global i32 0, align 4
@SNDRV_GF1_VA_START = common dso_local global i32 0, align 4
@SNDRV_GF1_VA_END = common dso_local global i32 0, align 4
@SNDRV_GF1_VB_VOLUME_START = common dso_local global i32 0, align 4
@SNDRV_GF1_VB_VOLUME_END = common dso_local global i32 0, align 4
@SNDRV_GF1_VB_VOLUME_RATE = common dso_local global i32 0, align 4
@SNDRV_GF1_VW_VOLUME = common dso_local global i32 0, align 4
@SNDRV_GF1_VA_CURRENT = common dso_local global i32 0, align 4
@SNDRV_GF1_VB_PAN = common dso_local global i32 0, align 4
@SNDRV_GF1_VB_ACCUMULATOR = common dso_local global i32 0, align 4
@SNDRV_GF1_VW_EFFECT_VOLUME = common dso_local global i32 0, align 4
@SNDRV_GF1_VW_EFFECT_VOLUME_FINAL = common dso_local global i32 0, align 4
@ULTRA_LFO_TREMOLO = common dso_local global i32 0, align 4
@ULTRA_LFO_VIBRATO = common dso_local global i32 0, align 4
@VFLG_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_gus_card*, i16, i16)* @snd_gf1_clear_voices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_gf1_clear_voices(%struct.snd_gus_card* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_gus_card*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %11 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %12 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = shl i32 %14, 4
  store i32 %15, i32* %8, align 4
  %16 = load i16, i16* %5, align 2
  store i16 %16, i16* %9, align 2
  br label %17

17:                                               ; preds = %112, %3
  %18 = load i16, i16* %9, align 2
  %19 = zext i16 %18 to i32
  %20 = load i16, i16* %6, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp sle i32 %19, %21
  br i1 %22, label %23, label %115

23:                                               ; preds = %17
  %24 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %25 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %24, i32 0, i32 0
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %29 = load i16, i16* %9, align 2
  %30 = call i32 @snd_gf1_select_voice(%struct.snd_gus_card* %28, i16 zeroext %29)
  %31 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %32 = load i32, i32* @SNDRV_GF1_VB_ADDRESS_CONTROL, align 4
  %33 = call i32 @snd_gf1_ctrl_stop(%struct.snd_gus_card* %31, i32 %32)
  %34 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %35 = load i32, i32* @SNDRV_GF1_VB_VOLUME_CONTROL, align 4
  %36 = call i32 @snd_gf1_ctrl_stop(%struct.snd_gus_card* %34, i32 %35)
  %37 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %38 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %23
  %43 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %44 = load i32, i32* @SNDRV_GF1_VB_MODE, align 4
  %45 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %46 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 2, i32 130
  %52 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %43, i32 %44, i32 %51)
  br label %53

53:                                               ; preds = %42, %23
  %54 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %55 = load i32, i32* @SNDRV_GF1_VB_ADDRESS_CONTROL, align 4
  %56 = call i32 @snd_gf1_read8(%struct.snd_gus_card* %54, i32 %55)
  %57 = and i32 %56, 4
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %10, align 2
  %59 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %60 = load i32, i32* @SNDRV_GF1_VW_FREQUENCY, align 4
  %61 = call i32 @snd_gf1_write16(%struct.snd_gus_card* %59, i32 %60, i32 1024)
  %62 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %63 = load i32, i32* @SNDRV_GF1_VA_START, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i16, i16* %10, align 2
  %66 = call i32 @snd_gf1_write_addr(%struct.snd_gus_card* %62, i32 %63, i32 %64, i16 zeroext %65)
  %67 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %68 = load i32, i32* @SNDRV_GF1_VA_END, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i16, i16* %10, align 2
  %71 = call i32 @snd_gf1_write_addr(%struct.snd_gus_card* %67, i32 %68, i32 %69, i16 zeroext %70)
  %72 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %73 = load i32, i32* @SNDRV_GF1_VB_VOLUME_START, align 4
  %74 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %72, i32 %73, i32 0)
  %75 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %76 = load i32, i32* @SNDRV_GF1_VB_VOLUME_END, align 4
  %77 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %75, i32 %76, i32 0)
  %78 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %79 = load i32, i32* @SNDRV_GF1_VB_VOLUME_RATE, align 4
  %80 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %78, i32 %79, i32 0)
  %81 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %82 = load i32, i32* @SNDRV_GF1_VW_VOLUME, align 4
  %83 = call i32 @snd_gf1_write16(%struct.snd_gus_card* %81, i32 %82, i32 0)
  %84 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %85 = load i32, i32* @SNDRV_GF1_VA_CURRENT, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i16, i16* %10, align 2
  %88 = call i32 @snd_gf1_write_addr(%struct.snd_gus_card* %84, i32 %85, i32 %86, i16 zeroext %87)
  %89 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %90 = load i32, i32* @SNDRV_GF1_VB_PAN, align 4
  %91 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %89, i32 %90, i32 7)
  %92 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %93 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %53
  %98 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %99 = load i32, i32* @SNDRV_GF1_VB_ACCUMULATOR, align 4
  %100 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %98, i32 %99, i32 0)
  %101 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %102 = load i32, i32* @SNDRV_GF1_VW_EFFECT_VOLUME, align 4
  %103 = call i32 @snd_gf1_write16(%struct.snd_gus_card* %101, i32 %102, i32 0)
  %104 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %105 = load i32, i32* @SNDRV_GF1_VW_EFFECT_VOLUME_FINAL, align 4
  %106 = call i32 @snd_gf1_write16(%struct.snd_gus_card* %104, i32 %105, i32 0)
  br label %107

107:                                              ; preds = %97, %53
  %108 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %109 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %108, i32 0, i32 0
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  br label %112

112:                                              ; preds = %107
  %113 = load i16, i16* %9, align 2
  %114 = add i16 %113, 1
  store i16 %114, i16* %9, align 2
  br label %17

115:                                              ; preds = %17
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_gf1_select_voice(%struct.snd_gus_card*, i16 zeroext) #1

declare dso_local i32 @snd_gf1_ctrl_stop(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @snd_gf1_write8(%struct.snd_gus_card*, i32, i32) #1

declare dso_local i32 @snd_gf1_read8(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @snd_gf1_write16(%struct.snd_gus_card*, i32, i32) #1

declare dso_local i32 @snd_gf1_write_addr(%struct.snd_gus_card*, i32, i32, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
