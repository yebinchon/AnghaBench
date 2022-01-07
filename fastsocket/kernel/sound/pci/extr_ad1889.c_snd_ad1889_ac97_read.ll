; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ad1889.c_snd_ad1889_ac97_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ad1889.c_snd_ad1889_ac97_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.snd_ad1889* }
%struct.snd_ad1889 = type { i32 }

@AD_AC97_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*, i16)* @snd_ad1889_ac97_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ad1889_ac97_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.snd_ad1889*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %6, i32 0, i32 0
  %8 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  store %struct.snd_ad1889* %8, %struct.snd_ad1889** %5, align 8
  %9 = load %struct.snd_ad1889*, %struct.snd_ad1889** %5, align 8
  %10 = load i64, i64* @AD_AC97_BASE, align 8
  %11 = load i16, i16* %4, align 2
  %12 = zext i16 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = call i32 @ad1889_readw(%struct.snd_ad1889* %9, i64 %13)
  ret i32 %14
}

declare dso_local i32 @ad1889_readw(%struct.snd_ad1889*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
