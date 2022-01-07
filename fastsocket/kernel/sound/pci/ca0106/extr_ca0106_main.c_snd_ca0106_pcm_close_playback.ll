; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm_close_playback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm_close_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_ca0106_pcm* }
%struct.snd_ca0106_pcm = type { i64 }
%struct.snd_ca0106 = type { i32*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@PCM_FRONT_CHANNEL = common dso_local global i64 0, align 8
@spi_dacd_reg = common dso_local global i32* null, align 8
@spi_dacd_bit = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ca0106_pcm_close_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ca0106_pcm_close_playback(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ca0106*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_ca0106_pcm*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.snd_ca0106* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_ca0106* %8, %struct.snd_ca0106** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 0
  %14 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %13, align 8
  store %struct.snd_ca0106_pcm* %14, %struct.snd_ca0106_pcm** %5, align 8
  %15 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %16 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %5, align 8
  %19 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %24 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %5, align 8
  %25 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @restore_spdif_bits(%struct.snd_ca0106* %23, i64 %26)
  %28 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %29 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %70

34:                                               ; preds = %1
  %35 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %5, align 8
  %36 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PCM_FRONT_CHANNEL, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %34
  %41 = load i32*, i32** @spi_dacd_reg, align 8
  %42 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %5, align 8
  %43 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  %47 = load i32*, i32** @spi_dacd_bit, align 8
  %48 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %5, align 8
  %49 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %54 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %52
  store i32 %60, i32* %58, align 4
  %61 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %62 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %63 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @snd_ca0106_spi_write(%struct.snd_ca0106* %61, i32 %68)
  br label %70

70:                                               ; preds = %40, %34, %1
  ret i32 0
}

declare dso_local %struct.snd_ca0106* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @restore_spdif_bits(%struct.snd_ca0106*, i64) #1

declare dso_local i32 @snd_ca0106_spi_write(%struct.snd_ca0106*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
