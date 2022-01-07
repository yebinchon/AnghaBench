; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_timer.c_snd_pcm_timer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_timer.c_snd_pcm_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, i32, %struct.snd_timer*, %struct.TYPE_3__* }
%struct.snd_timer = type { i32, %struct.snd_pcm_substream*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_timer_id = type { i32, i32, i32, i32, i32 }

@SNDRV_TIMER_SCLASS_NONE = common dso_local global i32 0, align 4
@SNDRV_TIMER_CLASS_PCM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"PCM\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"PCM %s %i-%i-%i\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"playback\00", align 1
@snd_pcm_timer = common dso_local global i32 0, align 4
@snd_pcm_timer_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_pcm_timer_init(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_timer_id, align 4
  %4 = alloca %struct.snd_timer*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load i32, i32* @SNDRV_TIMER_SCLASS_NONE, align 4
  %6 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %3, i32 0, i32 4
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @SNDRV_TIMER_CLASS_PCM, align 4
  %8 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %3, i32 0, i32 3
  store i32 %7, i32* %8, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %3, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %3, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %25, 1
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 1
  %31 = or i32 %26, %30
  %32 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %3, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i64 @snd_timer_new(%struct.TYPE_4__* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.snd_timer_id* %3, %struct.snd_timer** %4)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %1
  br label %84

41:                                               ; preds = %1
  %42 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %43 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %52 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %3, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %3, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %3, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sprintf(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %51, i32 %53, i32 %55, i32 %57)
  %59 = load i32, i32* @snd_pcm_timer, align 4
  %60 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %61 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %63 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %66 = call i64 @snd_device_register(i32 %64, %struct.snd_timer* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %41
  %69 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %70 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %73 = call i32 @snd_device_free(i32 %71, %struct.snd_timer* %72)
  br label %84

74:                                               ; preds = %41
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %76 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %77 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %76, i32 0, i32 1
  store %struct.snd_pcm_substream* %75, %struct.snd_pcm_substream** %77, align 8
  %78 = load i32, i32* @snd_pcm_timer_free, align 4
  %79 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %80 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %82 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %83 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %82, i32 0, i32 2
  store %struct.snd_timer* %81, %struct.snd_timer** %83, align 8
  br label %84

84:                                               ; preds = %74, %68, %40
  ret void
}

declare dso_local i64 @snd_timer_new(%struct.TYPE_4__*, i8*, %struct.snd_timer_id*, %struct.snd_timer**) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i64 @snd_device_register(i32, %struct.snd_timer*) #1

declare dso_local i32 @snd_device_free(i32, %struct.snd_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
