; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_allocate_evoice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_allocate_evoice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_trident_voice* }
%struct.snd_trident_voice = type { %struct.snd_trident_voice*, %struct.snd_pcm_substream* }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_trident = type { i32 }

@SNDRV_TRIDENT_VOICE_TYPE_PCM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_trident_allocate_evoice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_allocate_evoice(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_trident*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.snd_trident_voice*, align 8
  %9 = alloca %struct.snd_trident_voice*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = call %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_trident* %11, %struct.snd_trident** %6, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %7, align 8
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 0
  %17 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %16, align 8
  store %struct.snd_trident_voice* %17, %struct.snd_trident_voice** %8, align 8
  %18 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %8, align 8
  %19 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %18, i32 0, i32 0
  %20 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %19, align 8
  store %struct.snd_trident_voice* %20, %struct.snd_trident_voice** %9, align 8
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %22 = call i32 @params_buffer_size(%struct.snd_pcm_hw_params* %21)
  %23 = sdiv i32 %22, 2
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %25 = call i32 @params_period_size(%struct.snd_pcm_hw_params* %24)
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %2
  %28 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %9, align 8
  %29 = icmp eq %struct.snd_trident_voice* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %32 = load i32, i32* @SNDRV_TRIDENT_VOICE_TYPE_PCM, align 4
  %33 = call %struct.snd_trident_voice* @snd_trident_alloc_voice(%struct.snd_trident* %31, i32 %32, i32 0, i32 0)
  store %struct.snd_trident_voice* %33, %struct.snd_trident_voice** %9, align 8
  %34 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %9, align 8
  %35 = icmp eq %struct.snd_trident_voice* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %58

39:                                               ; preds = %30
  %40 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %9, align 8
  %41 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %8, align 8
  %42 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %41, i32 0, i32 0
  store %struct.snd_trident_voice* %40, %struct.snd_trident_voice** %42, align 8
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %44 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %9, align 8
  %45 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %44, i32 0, i32 1
  store %struct.snd_pcm_substream* %43, %struct.snd_pcm_substream** %45, align 8
  br label %46

46:                                               ; preds = %39, %27
  br label %57

47:                                               ; preds = %2
  %48 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %9, align 8
  %49 = icmp ne %struct.snd_trident_voice* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %52 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %9, align 8
  %53 = call i32 @snd_trident_free_voice(%struct.snd_trident* %51, %struct.snd_trident_voice* %52)
  store %struct.snd_trident_voice* null, %struct.snd_trident_voice** %9, align 8
  %54 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %8, align 8
  %55 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %54, i32 0, i32 0
  store %struct.snd_trident_voice* null, %struct.snd_trident_voice** %55, align 8
  br label %56

56:                                               ; preds = %50, %47
  br label %57

57:                                               ; preds = %56, %46
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %36
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @params_buffer_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_period_size(%struct.snd_pcm_hw_params*) #1

declare dso_local %struct.snd_trident_voice* @snd_trident_alloc_voice(%struct.snd_trident*, i32, i32, i32) #1

declare dso_local i32 @snd_trident_free_voice(%struct.snd_trident*, %struct.snd_trident_voice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
