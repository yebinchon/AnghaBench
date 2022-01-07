; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_playback_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_playback_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_ali_voice* }
%struct.snd_ali_voice = type { %struct.snd_ali_voice*, %struct.snd_pcm_substream* }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_ali = type { i32 }

@SNDRV_ALI_VOICE_TYPE_PCM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_ali_playback_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ali_playback_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_ali*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.snd_ali_voice*, align 8
  %9 = alloca %struct.snd_ali_voice*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = call %struct.snd_ali* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_ali* %12, %struct.snd_ali** %6, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %7, align 8
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 0
  %18 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %17, align 8
  store %struct.snd_ali_voice* %18, %struct.snd_ali_voice** %8, align 8
  %19 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %8, align 8
  %20 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %19, i32 0, i32 0
  %21 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %20, align 8
  store %struct.snd_ali_voice* %21, %struct.snd_ali_voice** %9, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %24 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %23)
  %25 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %22, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  br label %68

30:                                               ; preds = %2
  %31 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %32 = call i32 @params_buffer_size(%struct.snd_pcm_hw_params* %31)
  %33 = sdiv i32 %32, 2
  %34 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %35 = call i32 @params_period_size(%struct.snd_pcm_hw_params* %34)
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %30
  %38 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %9, align 8
  %39 = icmp ne %struct.snd_ali_voice* %38, null
  br i1 %39, label %56, label %40

40:                                               ; preds = %37
  %41 = load %struct.snd_ali*, %struct.snd_ali** %6, align 8
  %42 = load i32, i32* @SNDRV_ALI_VOICE_TYPE_PCM, align 4
  %43 = call %struct.snd_ali_voice* @snd_ali_alloc_voice(%struct.snd_ali* %41, i32 %42, i32 0, i32 -1)
  store %struct.snd_ali_voice* %43, %struct.snd_ali_voice** %9, align 8
  %44 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %9, align 8
  %45 = icmp ne %struct.snd_ali_voice* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %68

49:                                               ; preds = %40
  %50 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %9, align 8
  %51 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %8, align 8
  %52 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %51, i32 0, i32 0
  store %struct.snd_ali_voice* %50, %struct.snd_ali_voice** %52, align 8
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %54 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %9, align 8
  %55 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %54, i32 0, i32 1
  store %struct.snd_pcm_substream* %53, %struct.snd_pcm_substream** %55, align 8
  br label %56

56:                                               ; preds = %49, %37
  br label %67

57:                                               ; preds = %30
  %58 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %9, align 8
  %59 = icmp ne %struct.snd_ali_voice* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.snd_ali*, %struct.snd_ali** %6, align 8
  %62 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %9, align 8
  %63 = call i32 @snd_ali_free_voice(%struct.snd_ali* %61, %struct.snd_ali_voice* %62)
  store %struct.snd_ali_voice* null, %struct.snd_ali_voice** %9, align 8
  %64 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %8, align 8
  %65 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %64, i32 0, i32 0
  store %struct.snd_ali_voice* null, %struct.snd_ali_voice** %65, align 8
  br label %66

66:                                               ; preds = %60, %57
  br label %67

67:                                               ; preds = %66, %56
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %46, %28
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.snd_ali* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_buffer_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_period_size(%struct.snd_pcm_hw_params*) #1

declare dso_local %struct.snd_ali_voice* @snd_ali_alloc_voice(%struct.snd_ali*, i32, i32, i32) #1

declare dso_local i32 @snd_ali_free_voice(%struct.snd_ali*, %struct.snd_ali_voice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
