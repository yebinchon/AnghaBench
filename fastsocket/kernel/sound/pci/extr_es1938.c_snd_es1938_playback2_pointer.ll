; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1938.c_snd_es1938_playback2_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1938.c_snd_es1938_playback2_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.es1938 = type { i32, i64, i64 }

@DMACOUNT = common dso_local global i32 0, align 4
@DMAADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*)* @snd_es1938_playback2_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_es1938_playback2_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.es1938*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.es1938* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.es1938* %8, %struct.es1938** %3, align 8
  %9 = load %struct.es1938*, %struct.es1938** %3, align 8
  %10 = load i32, i32* @DMACOUNT, align 4
  %11 = call i32 @SLDM_REG(%struct.es1938* %9, i32 %10)
  %12 = call i64 @inw(i32 %11)
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %20, %1
  %14 = load %struct.es1938*, %struct.es1938** %3, align 8
  %15 = load i32, i32* @DMACOUNT, align 4
  %16 = call i32 @SLDM_REG(%struct.es1938* %14, i32 %15)
  %17 = call i64 @inw(i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* %5, align 8
  br label %13

22:                                               ; preds = %13
  %23 = load %struct.es1938*, %struct.es1938** %3, align 8
  %24 = getelementptr inbounds %struct.es1938, %struct.es1938* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %6, align 8
  %29 = sub i64 %27, %28
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.es1938*, %struct.es1938** %3, align 8
  %32 = getelementptr inbounds %struct.es1938, %struct.es1938* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = lshr i64 %30, %33
  ret i64 %34
}

declare dso_local %struct.es1938* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @inw(i32) #1

declare dso_local i32 @SLDM_REG(%struct.es1938*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
