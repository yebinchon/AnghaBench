; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_snd_echo_preallocate_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_snd_echo_preallocate_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_substream* }
%struct.device = type { i32 }

@SNDRV_DMA_TYPE_DEV_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm*, %struct.device*)* @snd_echo_preallocate_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_echo_preallocate_pages(%struct.snd_pcm* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm* %0, %struct.snd_pcm** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %45, %2
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %48

12:                                               ; preds = %9
  %13 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %19, align 8
  store %struct.snd_pcm_substream* %20, %struct.snd_pcm_substream** %6, align 8
  br label %21

21:                                               ; preds = %40, %12
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %23 = icmp ne %struct.snd_pcm_substream* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %26 = load i32, i32* @SNDRV_DMA_TYPE_DEV_SG, align 4
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 0, i32 131072
  %34 = call i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream* %25, i32 %26, %struct.device* %27, i32 %33, i32 262144)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %49

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %41, i32 0, i32 1
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %42, align 8
  store %struct.snd_pcm_substream* %43, %struct.snd_pcm_substream** %6, align 8
  br label %21

44:                                               ; preds = %21
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %9

48:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %37
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream*, i32, %struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
