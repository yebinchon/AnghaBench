; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1938.c_snd_es1938_rate_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1938.c_snd_es1938_rate_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.es1938 = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i32, i32 }

@clocks = common dso_local global %struct.TYPE_2__* null, align 8
@DAC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1938*, %struct.snd_pcm_substream*, i32)* @snd_es1938_rate_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1938_rate_set(%struct.es1938* %0, %struct.snd_pcm_substream* %1, i32 %2) #0 {
  %4 = alloca %struct.es1938*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.es1938* %0, %struct.es1938** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %9, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clocks, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %15, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 128, %24
  store i32 %25, i32* %7, align 4
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 256, %29
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 656, %34
  %36 = sdiv i32 143200000, %35
  %37 = sub nsw i32 256, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @DAC2, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load %struct.es1938*, %struct.es1938** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @snd_es1938_mixer_write(%struct.es1938* %42, i32 112, i32 %43)
  %45 = load %struct.es1938*, %struct.es1938** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @snd_es1938_mixer_write(%struct.es1938* %45, i32 114, i32 %46)
  br label %55

48:                                               ; preds = %31
  %49 = load %struct.es1938*, %struct.es1938** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @snd_es1938_write(%struct.es1938* %49, i32 161, i32 %50)
  %52 = load %struct.es1938*, %struct.es1938** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @snd_es1938_write(%struct.es1938* %52, i32 162, i32 %53)
  br label %55

55:                                               ; preds = %48, %41
  ret void
}

declare dso_local i32 @snd_es1938_mixer_write(%struct.es1938*, i32, i32) #1

declare dso_local i32 @snd_es1938_write(%struct.es1938*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
