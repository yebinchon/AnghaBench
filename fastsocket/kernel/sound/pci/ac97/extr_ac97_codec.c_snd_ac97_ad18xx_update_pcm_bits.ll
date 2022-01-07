; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_ad18xx_update_pcm_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_ad18xx_update_pcm_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.snd_ac97*, i32, i16)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i16*, i16*, i16* }

@AC97_AD_SERIAL_CFG = common dso_local global i32 0, align 4
@AC97_PCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*, i32, i16, i16)* @snd_ac97_ad18xx_update_pcm_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ac97_ad18xx_update_pcm_bits(%struct.snd_ac97* %0, i32 %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %5, align 8
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i16*, i16** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %20, i64 %22
  %24 = load i16, i16* %23, align 2
  store i16 %24, i16* %10, align 2
  %25 = load i16, i16* %10, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* %7, align 2
  %28 = zext i16 %27 to i32
  %29 = xor i32 %28, -1
  %30 = and i32 %26, %29
  %31 = load i16, i16* %8, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, i16* %7, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %32, %34
  %36 = or i32 %30, %35
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %11, align 2
  %38 = load i16, i16* %10, align 2
  %39 = zext i16 %38 to i32
  %40 = load i16, i16* %11, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp ne i32 %39, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %126

46:                                               ; preds = %4
  %47 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %48 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %47, i32 0, i32 1
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %51 = load i32, i32* @AC97_AD_SERIAL_CFG, align 4
  %52 = call zeroext i16 @snd_ac97_read_cache(%struct.snd_ac97* %50, i32 %51)
  store i16 %52, i16* %12, align 2
  %53 = load i16, i16* %11, align 2
  %54 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %55 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i16*, i16** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i16, i16* %58, i64 %60
  store i16 %53, i16* %61, align 2
  %62 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %63 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %62, i32 0, i32 2
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32 (%struct.snd_ac97*, i32, i16)*, i32 (%struct.snd_ac97*, i32, i16)** %67, align 8
  %69 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %70 = load i32, i32* @AC97_AD_SERIAL_CFG, align 4
  %71 = load i16, i16* %12, align 2
  %72 = zext i16 %71 to i32
  %73 = and i32 %72, -28673
  %74 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %75 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i16*, i16** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i16, i16* %78, i64 %80
  %82 = load i16, i16* %81, align 2
  %83 = zext i16 %82 to i32
  %84 = or i32 %73, %83
  %85 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %86 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i16*, i16** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i16, i16* %89, i64 %91
  %93 = load i16, i16* %92, align 2
  %94 = zext i16 %93 to i32
  %95 = or i32 %84, %94
  %96 = trunc i32 %95 to i16
  %97 = call i32 %68(%struct.snd_ac97* %69, i32 %70, i16 zeroext %96)
  %98 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %99 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %98, i32 0, i32 2
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32 (%struct.snd_ac97*, i32, i16)*, i32 (%struct.snd_ac97*, i32, i16)** %103, align 8
  %105 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %106 = load i32, i32* @AC97_PCM, align 4
  %107 = load i16, i16* %11, align 2
  %108 = call i32 %104(%struct.snd_ac97* %105, i32 %106, i16 zeroext %107)
  %109 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %110 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %109, i32 0, i32 2
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32 (%struct.snd_ac97*, i32, i16)*, i32 (%struct.snd_ac97*, i32, i16)** %114, align 8
  %116 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %117 = load i32, i32* @AC97_AD_SERIAL_CFG, align 4
  %118 = load i16, i16* %12, align 2
  %119 = zext i16 %118 to i32
  %120 = or i32 %119, 28672
  %121 = trunc i32 %120 to i16
  %122 = call i32 %115(%struct.snd_ac97* %116, i32 %117, i16 zeroext %121)
  %123 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %124 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %123, i32 0, i32 1
  %125 = call i32 @mutex_unlock(i32* %124)
  br label %126

126:                                              ; preds = %46, %4
  %127 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %128 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %127, i32 0, i32 0
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load i32, i32* %9, align 4
  ret i32 %130
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local zeroext i16 @snd_ac97_read_cache(%struct.snd_ac97*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
