; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_playback_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_es18xx = type { i32, %struct.snd_pcm_substream*, %struct.TYPE_4__*, %struct.snd_pcm_substream* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ES18XX_PCM2 = common dso_local global i32 0, align 4
@ES18XX_DUPLEX_MONO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@snd_es18xx_playback = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@ES18XX_NEW_RATE = common dso_local global i32 0, align 4
@new_hw_constraints_clocks = common dso_local global i32 0, align 4
@old_hw_constraints_clocks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_es18xx_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_es18xx*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 1
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  store %struct.snd_pcm_runtime* %8, %struct.snd_pcm_runtime** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.snd_es18xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_es18xx* %10, %struct.snd_es18xx** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %1
  %16 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %17 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ES18XX_PCM2, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %15
  %23 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %24 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ES18XX_DUPLEX_MONO, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %22
  %30 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %31 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %36 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %89

46:                                               ; preds = %34, %29, %22
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %48 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %49 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %48, i32 0, i32 3
  store %struct.snd_pcm_substream* %47, %struct.snd_pcm_substream** %49, align 8
  br label %72

50:                                               ; preds = %15, %1
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sle i32 %53, 1
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %57 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = icmp ne %struct.TYPE_4__* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EAGAIN, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %89

63:                                               ; preds = %55
  %64 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %65 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %66 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %65, i32 0, i32 1
  store %struct.snd_pcm_substream* %64, %struct.snd_pcm_substream** %66, align 8
  br label %71

67:                                               ; preds = %50
  %68 = call i32 (...) @snd_BUG()
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %89

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %46
  %73 = load i32, i32* @snd_es18xx_playback, align 4
  %74 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %74, i32 0, i32 1
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %75, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %76, i32 0, i32 0
  store i32 %73, i32* %77, align 4
  %78 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %79 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %80 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %81 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ES18XX_NEW_RATE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32* @new_hw_constraints_clocks, i32* @old_hw_constraints_clocks
  %88 = call i32 @snd_pcm_hw_constraint_ratnums(%struct.snd_pcm_runtime* %78, i32 0, i32 %79, i32* %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %72, %67, %60, %43
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.snd_es18xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @snd_pcm_hw_constraint_ratnums(%struct.snd_pcm_runtime*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
