; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd.c_snd_msnd_pcm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd.c_snd_msnd_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { %struct.snd_msnd* }
%struct.snd_msnd = type { i32 }
%struct.snd_pcm = type { i32, %struct.snd_msnd* }

@.str = private unnamed_addr constant [13 x i8] c"MSNDPINNACLE\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_msnd_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_msnd_capture_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Hurricane\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_msnd_pcm(%struct.snd_card* %0, i32 %1, %struct.snd_pcm** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm**, align 8
  %8 = alloca %struct.snd_msnd*, align 8
  %9 = alloca %struct.snd_pcm*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_pcm** %2, %struct.snd_pcm*** %7, align 8
  %11 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %12 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %11, i32 0, i32 0
  %13 = load %struct.snd_msnd*, %struct.snd_msnd** %12, align 8
  store %struct.snd_msnd* %13, %struct.snd_msnd** %8, align 8
  %14 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @snd_pcm_new(%struct.snd_card* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15, i32 1, i32 1, %struct.snd_pcm** %9)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %41

21:                                               ; preds = %3
  %22 = load %struct.snd_pcm*, %struct.snd_pcm** %9, align 8
  %23 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %24 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %22, i32 %23, i32* @snd_msnd_playback_ops)
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %9, align 8
  %26 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %27 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %25, i32 %26, i32* @snd_msnd_capture_ops)
  %28 = load %struct.snd_msnd*, %struct.snd_msnd** %8, align 8
  %29 = load %struct.snd_pcm*, %struct.snd_pcm** %9, align 8
  %30 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %29, i32 0, i32 1
  store %struct.snd_msnd* %28, %struct.snd_msnd** %30, align 8
  %31 = load %struct.snd_pcm*, %struct.snd_pcm** %9, align 8
  %32 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @strcpy(i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.snd_pcm**, %struct.snd_pcm*** %7, align 8
  %36 = icmp ne %struct.snd_pcm** %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %21
  %38 = load %struct.snd_pcm*, %struct.snd_pcm** %9, align 8
  %39 = load %struct.snd_pcm**, %struct.snd_pcm*** %7, align 8
  store %struct.snd_pcm* %38, %struct.snd_pcm** %39, align 8
  br label %40

40:                                               ; preds = %37, %21
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %19
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @snd_pcm_new(%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
