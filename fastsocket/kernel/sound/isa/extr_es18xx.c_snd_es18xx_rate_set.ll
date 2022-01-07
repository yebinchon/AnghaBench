; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_rate_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_rate_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.snd_es18xx = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i32, i32 }

@ES18XX_NEW_RATE = common dso_local global i32 0, align 4
@new_clocks = common dso_local global %struct.TYPE_4__* null, align 8
@old_clocks = common dso_local global %struct.TYPE_3__* null, align 8
@ES18XX_PCM2 = common dso_local global i32 0, align 4
@DAC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_es18xx*, %struct.snd_pcm_substream*, i32)* @snd_es18xx_rate_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es18xx_rate_set(%struct.snd_es18xx* %0, %struct.snd_pcm_substream* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_es18xx*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_es18xx* %0, %struct.snd_es18xx** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %9, align 8
  %13 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %14 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ES18XX_NEW_RATE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %3
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @new_clocks, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %22, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 128, %31
  store i32 %32, i32* %7, align 4
  br label %38

33:                                               ; preds = %19
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 256, %36
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %33, %28
  br label %59

39:                                               ; preds = %3
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @old_clocks, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %42, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 256, %51
  store i32 %52, i32* %7, align 4
  br label %58

53:                                               ; preds = %39
  %54 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 128, %56
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %53, %48
  br label %59

59:                                               ; preds = %58, %38
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 656, %62
  %64 = sdiv i32 143200000, %63
  %65 = sub nsw i32 256, %64
  store i32 %65, i32* %8, align 4
  %66 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %67 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ES18XX_PCM2, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %59
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @DAC2, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @snd_es18xx_mixer_write(%struct.snd_es18xx* %77, i32 112, i32 %78)
  %80 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %80, i32 162, i32 %81)
  %83 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @snd_es18xx_mixer_write(%struct.snd_es18xx* %83, i32 114, i32 %84)
  br label %93

86:                                               ; preds = %72, %59
  %87 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %87, i32 161, i32 %88)
  %90 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %90, i32 162, i32 %91)
  br label %93

93:                                               ; preds = %86, %76
  ret void
}

declare dso_local i32 @snd_es18xx_mixer_write(%struct.snd_es18xx*, i32, i32) #1

declare dso_local i32 @snd_es18xx_write(%struct.snd_es18xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
