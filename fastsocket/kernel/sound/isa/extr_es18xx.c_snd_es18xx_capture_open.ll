; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_capture_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_es18xx = type { i32, %struct.snd_pcm_substream*, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@ES18XX_DUPLEX_MONO = common dso_local global i32 0, align 4
@snd_es18xx_capture = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@ES18XX_NEW_RATE = common dso_local global i32 0, align 4
@new_hw_constraints_clocks = common dso_local global i32 0, align 4
@old_hw_constraints_clocks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_es18xx_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_es18xx*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 0
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  store %struct.snd_pcm_runtime* %8, %struct.snd_pcm_runtime** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.snd_es18xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_es18xx* %10, %struct.snd_es18xx** %5, align 8
  %11 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %12 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EAGAIN, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %62

18:                                               ; preds = %1
  %19 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %20 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ES18XX_DUPLEX_MONO, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %18
  %26 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %27 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %32 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %62

42:                                               ; preds = %30, %25, %18
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %44 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %45 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %44, i32 0, i32 1
  store %struct.snd_pcm_substream* %43, %struct.snd_pcm_substream** %45, align 8
  %46 = load i32, i32* @snd_es18xx_capture, align 4
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %47, i32 0, i32 0
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %48, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  %51 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %52 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %53 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %54 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ES18XX_NEW_RATE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32* @new_hw_constraints_clocks, i32* @old_hw_constraints_clocks
  %61 = call i32 @snd_pcm_hw_constraint_ratnums(%struct.snd_pcm_runtime* %51, i32 0, i32 %52, i32* %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %42, %39, %15
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.snd_es18xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_ratnums(%struct.snd_pcm_runtime*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
