; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd.c_snd_msnd_playback_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd.c_snd_msnd_playback_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_msnd = type { i32, i32, i32, i8* }

@DAPQ_DATA_BUFF = common dso_local global i32 0, align 4
@DAQDS_wSampleSize = common dso_local global i32 0, align 4
@DAQDS_wChannels = common dso_local global i32 0, align 4
@DAQDS_wSampleRate = common dso_local global i32 0, align 4
@DAQDS__size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_msnd_playback_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_msnd_playback_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_msnd*, align 8
  %7 = alloca i8*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.snd_msnd* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_msnd* %9, %struct.snd_msnd** %6, align 8
  %10 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %11 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %10, i32 0, i32 3
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* @DAPQ_DATA_BUFF, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr i8, i8* %12, i64 %14
  store i8* %15, i8** %7, align 8
  %16 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %17 = call i32 @params_format(%struct.snd_pcm_hw_params* %16)
  %18 = call i32 @snd_pcm_format_width(i32 %17)
  %19 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %20 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %22 = call i32 @params_channels(%struct.snd_pcm_hw_params* %21)
  %23 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %24 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %26 = call i32 @params_rate(%struct.snd_pcm_hw_params* %25)
  %27 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %28 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %57, %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %64

32:                                               ; preds = %29
  %33 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %34 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @DAQDS_wSampleSize, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr i8, i8* %36, i64 %38
  %40 = call i32 @writew(i32 %35, i8* %39)
  %41 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %42 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* @DAQDS_wChannels, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr i8, i8* %44, i64 %46
  %48 = call i32 @writew(i32 %43, i8* %47)
  %49 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %50 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* @DAQDS_wSampleRate, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr i8, i8* %52, i64 %54
  %56 = call i32 @writew(i32 %51, i8* %55)
  br label %57

57:                                               ; preds = %32
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @DAQDS__size, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr i8, i8* %61, i64 %62
  store i8* %63, i8** %7, align 8
  br label %29

64:                                               ; preds = %29
  ret i32 0
}

declare dso_local %struct.snd_msnd* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @writew(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
