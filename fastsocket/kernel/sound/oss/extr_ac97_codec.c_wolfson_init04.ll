; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_wolfson_init04.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_wolfson_init04.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_codec = type { i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32, i32)* }

@AC97_WM97XX_FMIXER_VOL = common dso_local global i32 0, align 4
@AC97_WM97XX_RMIXER_VOL = common dso_local global i32 0, align 4
@AC97_WM97XX_TEST = common dso_local global i32 0, align 4
@AC97_WM9704_RPCM_VOL = common dso_local global i32 0, align 4
@AC97_PCMOUT_VOL = common dso_local global i32 0, align 4
@AC97_SURROUND_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ac97_codec*)* @wolfson_init04 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wolfson_init04(%struct.ac97_codec* %0) #0 {
  %2 = alloca %struct.ac97_codec*, align 8
  store %struct.ac97_codec* %0, %struct.ac97_codec** %2, align 8
  %3 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %4 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %3, i32 0, i32 1
  %5 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %4, align 8
  %6 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %7 = load i32, i32* @AC97_WM97XX_FMIXER_VOL, align 4
  %8 = call i32 %5(%struct.ac97_codec* %6, i32 %7, i32 2056)
  %9 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %10 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %9, i32 0, i32 1
  %11 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %10, align 8
  %12 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %13 = load i32, i32* @AC97_WM97XX_RMIXER_VOL, align 4
  %14 = call i32 %11(%struct.ac97_codec* %12, i32 %13, i32 2056)
  %15 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %16 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %15, i32 0, i32 1
  %17 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %16, align 8
  %18 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %19 = load i32, i32* @AC97_WM97XX_TEST, align 4
  %20 = call i32 %17(%struct.ac97_codec* %18, i32 %19, i32 512)
  %21 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %22 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %21, i32 0, i32 1
  %23 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %22, align 8
  %24 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %25 = load i32, i32* @AC97_WM9704_RPCM_VOL, align 4
  %26 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %27 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %26, i32 0, i32 0
  %28 = load i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32)** %27, align 8
  %29 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %30 = load i32, i32* @AC97_PCMOUT_VOL, align 4
  %31 = call i32 %28(%struct.ac97_codec* %29, i32 %30)
  %32 = call i32 %23(%struct.ac97_codec* %24, i32 %25, i32 %31)
  %33 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %34 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %33, i32 0, i32 1
  %35 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %34, align 8
  %36 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %37 = load i32, i32* @AC97_SURROUND_MASTER, align 4
  %38 = call i32 %35(%struct.ac97_codec* %36, i32 %37, i32 0)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
