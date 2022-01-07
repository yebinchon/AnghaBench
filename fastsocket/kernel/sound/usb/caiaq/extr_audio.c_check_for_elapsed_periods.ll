; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_audio.c_check_for_elapsed_periods.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_audio.c_check_for_elapsed_periods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_caiaqdev = type { i32, i32*, i32* }
%struct.snd_pcm_substream = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_caiaqdev*, %struct.snd_pcm_substream**)* @check_for_elapsed_periods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_for_elapsed_periods(%struct.snd_usb_caiaqdev* %0, %struct.snd_pcm_substream** %1) #0 {
  %3 = alloca %struct.snd_usb_caiaqdev*, align 8
  %4 = alloca %struct.snd_pcm_substream**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.snd_usb_caiaqdev* %0, %struct.snd_usb_caiaqdev** %3, align 8
  store %struct.snd_pcm_substream** %1, %struct.snd_pcm_substream*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %60, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %12 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %63

15:                                               ; preds = %9
  %16 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %16, i64 %18
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %19, align 8
  store %struct.snd_pcm_substream* %20, %struct.snd_pcm_substream** %8, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %22 = icmp ne %struct.snd_pcm_substream* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %60

24:                                               ; preds = %15
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %26 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %34 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  br label %46

39:                                               ; preds = %24
  %40 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %41 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  br label %46

46:                                               ; preds = %39, %32
  %47 = phi i32* [ %38, %32 ], [ %45, %39 ]
  store i32* %47, i32** %7, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %54 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %53)
  %55 = load i32, i32* %6, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = srem i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %46
  br label %60

60:                                               ; preds = %59, %23
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %9

63:                                               ; preds = %9
  ret void
}

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
