; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx_modem.c_snd_via82xx_codec_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx_modem.c_snd_via82xx_codec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, %struct.via82xx_modem* }
%struct.via82xx_modem = type { i32 }

@AC97_GPIO_STATUS = common dso_local global i16 0, align 2
@GPI_STATUS = common dso_local global i32 0, align 4
@VIA_REG_AC97_CODEC_ID_PRIMARY = common dso_local global i32 0, align 4
@VIA_REG_AC97_CODEC_ID_SECONDARY = common dso_local global i32 0, align 4
@VIA_REG_AC97_CODEC_ID_SHIFT = common dso_local global i32 0, align 4
@VIA_REG_AC97_CMD_SHIFT = common dso_local global i16 0, align 2
@VIA_REG_AC97_DATA_SHIFT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @snd_via82xx_codec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_via82xx_codec_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.via82xx_modem*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %9, i32 0, i32 1
  %11 = load %struct.via82xx_modem*, %struct.via82xx_modem** %10, align 8
  store %struct.via82xx_modem* %11, %struct.via82xx_modem** %7, align 8
  %12 = load i16, i16* %5, align 2
  %13 = zext i16 %12 to i32
  %14 = load i16, i16* @AC97_GPIO_STATUS, align 2
  %15 = zext i16 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i16, i16* %6, align 2
  %19 = load %struct.via82xx_modem*, %struct.via82xx_modem** %7, align 8
  %20 = load i32, i32* @GPI_STATUS, align 4
  %21 = call i32 @VIAREG(%struct.via82xx_modem* %19, i32 %20)
  %22 = call i32 @outl(i16 zeroext %18, i32 %21)
  br label %59

23:                                               ; preds = %3
  %24 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %25 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @VIA_REG_AC97_CODEC_ID_PRIMARY, align 4
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @VIA_REG_AC97_CODEC_ID_SECONDARY, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @VIA_REG_AC97_CODEC_ID_SHIFT, align 4
  %35 = load i32, i32* %8, align 4
  %36 = shl i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i16, i16* %5, align 2
  %38 = zext i16 %37 to i32
  %39 = load i16, i16* @VIA_REG_AC97_CMD_SHIFT, align 2
  %40 = zext i16 %39 to i32
  %41 = shl i32 %38, %40
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i16, i16* %6, align 2
  %45 = zext i16 %44 to i32
  %46 = load i16, i16* @VIA_REG_AC97_DATA_SHIFT, align 2
  %47 = zext i16 %46 to i32
  %48 = shl i32 %45, %47
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load %struct.via82xx_modem*, %struct.via82xx_modem** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @snd_via82xx_codec_xwrite(%struct.via82xx_modem* %51, i32 %52)
  %54 = load %struct.via82xx_modem*, %struct.via82xx_modem** %7, align 8
  %55 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %56 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @snd_via82xx_codec_ready(%struct.via82xx_modem* %54, i32 %57)
  br label %59

59:                                               ; preds = %32, %17
  ret void
}

declare dso_local i32 @outl(i16 zeroext, i32) #1

declare dso_local i32 @VIAREG(%struct.via82xx_modem*, i32) #1

declare dso_local i32 @snd_via82xx_codec_xwrite(%struct.via82xx_modem*, i32) #1

declare dso_local i32 @snd_via82xx_codec_ready(%struct.via82xx_modem*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
