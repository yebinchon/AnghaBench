; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vx_pipe* }
%struct.vx_pipe = type { i32, i32, i32 }
%struct.vx_core = type { i32, i32 }

@VX_STAT_IS_STALE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @vx_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vx_core*, align 8
  %7 = alloca %struct.vx_pipe*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.vx_core* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.vx_core* %10, %struct.vx_core** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.vx_pipe*, %struct.vx_pipe** %14, align 8
  store %struct.vx_pipe* %15, %struct.vx_pipe** %7, align 8
  %16 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %17 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @VX_STAT_IS_STALE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %83

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %79 [
    i32 130, label %27
    i32 131, label %27
    i32 129, label %47
    i32 128, label %47
    i32 133, label %63
    i32 132, label %71
  ]

27:                                               ; preds = %25, %25
  %28 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %29 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %35 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %36 = call i32 @vx_pcm_playback_transfer(%struct.vx_core* %33, %struct.snd_pcm_substream* %34, %struct.vx_pipe* %35, i32 2)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %39 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %38, i32 0, i32 1
  %40 = call i32 @tasklet_schedule(i32* %39)
  %41 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %42 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %46 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  br label %82

47:                                               ; preds = %25, %25
  %48 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %49 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %50 = call i32 @vx_toggle_pipe(%struct.vx_core* %48, %struct.vx_pipe* %49, i32 0)
  %51 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %52 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %53 = call i32 @vx_stop_pipe(%struct.vx_core* %51, %struct.vx_pipe* %52)
  %54 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %55 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %56 = call i32 @vx_stop_stream(%struct.vx_core* %54, %struct.vx_pipe* %55)
  %57 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %58 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %62 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  br label %82

63:                                               ; preds = %25
  %64 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %65 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %66 = call i32 @vx_toggle_pipe(%struct.vx_core* %64, %struct.vx_pipe* %65, i32 0)
  store i32 %66, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %83

70:                                               ; preds = %63
  br label %82

71:                                               ; preds = %25
  %72 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %73 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %74 = call i32 @vx_toggle_pipe(%struct.vx_core* %72, %struct.vx_pipe* %73, i32 1)
  store i32 %74, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %83

78:                                               ; preds = %71
  br label %82

79:                                               ; preds = %25
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %83

82:                                               ; preds = %78, %70, %47, %37
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %79, %76, %68, %22
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.vx_core* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @vx_pcm_playback_transfer(%struct.vx_core*, %struct.snd_pcm_substream*, %struct.vx_pipe*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @vx_toggle_pipe(%struct.vx_core*, %struct.vx_pipe*, i32) #1

declare dso_local i32 @vx_stop_pipe(%struct.vx_core*, %struct.vx_pipe*) #1

declare dso_local i32 @vx_stop_stream(%struct.vx_core*, %struct.vx_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
