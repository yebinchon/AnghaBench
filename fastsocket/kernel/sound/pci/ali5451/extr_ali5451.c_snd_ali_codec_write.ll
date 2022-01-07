; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_codec_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_codec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, %struct.snd_ali* }
%struct.snd_ali = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"codec_write: reg=%xh data=%xh.\0A\00", align 1
@AC97_GPIO_STATUS = common dso_local global i16 0, align 2
@ALI_AC97_GPIO_DATA_SHIFT = common dso_local global i16 0, align 2
@ALI_AC97_GPIO_ENABLE = common dso_local global i16 0, align 2
@ALI_AC97_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @snd_ali_codec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ali_codec_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.snd_ali*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %8 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %8, i32 0, i32 1
  %10 = load %struct.snd_ali*, %struct.snd_ali** %9, align 8
  store %struct.snd_ali* %10, %struct.snd_ali** %7, align 8
  %11 = load i16, i16* %5, align 2
  %12 = load i16, i16* %6, align 2
  %13 = call i32 @snd_ali_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i16 zeroext %11, i16 zeroext %12)
  %14 = load i16, i16* %5, align 2
  %15 = zext i16 %14 to i32
  %16 = load i16, i16* @AC97_GPIO_STATUS, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load i16, i16* %6, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* @ALI_AC97_GPIO_DATA_SHIFT, align 2
  %23 = zext i16 %22 to i32
  %24 = shl i32 %21, %23
  %25 = load i16, i16* @ALI_AC97_GPIO_ENABLE, align 2
  %26 = zext i16 %25 to i32
  %27 = or i32 %24, %26
  %28 = trunc i32 %27 to i16
  %29 = load %struct.snd_ali*, %struct.snd_ali** %7, align 8
  %30 = load i32, i32* @ALI_AC97_GPIO, align 4
  %31 = call i32 @ALI_REG(%struct.snd_ali* %29, i32 %30)
  %32 = call i32 @outl(i16 zeroext %28, i32 %31)
  br label %41

33:                                               ; preds = %3
  %34 = load %struct.snd_ali*, %struct.snd_ali** %7, align 8
  %35 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i16, i16* %5, align 2
  %39 = load i16, i16* %6, align 2
  %40 = call i32 @snd_ali_codec_poke(%struct.snd_ali* %34, i32 %37, i16 zeroext %38, i16 zeroext %39)
  br label %41

41:                                               ; preds = %33, %19
  ret void
}

declare dso_local i32 @snd_ali_printk(i8*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @outl(i16 zeroext, i32) #1

declare dso_local i32 @ALI_REG(%struct.snd_ali*, i32) #1

declare dso_local i32 @snd_ali_codec_poke(%struct.snd_ali*, i32, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
