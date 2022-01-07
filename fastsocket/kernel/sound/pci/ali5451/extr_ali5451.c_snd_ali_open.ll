; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_pcm_hardware, i32, %struct.snd_ali_voice* }
%struct.snd_pcm_hardware = type { i32 }
%struct.snd_ali_voice = type { %struct.snd_pcm_substream* }
%struct.snd_ali = type { i32 }

@SNDRV_ALI_VOICE_TYPE_PCM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@snd_ali_pcm_free_substream = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, i32, %struct.snd_pcm_hardware*)* @snd_ali_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ali_open(%struct.snd_pcm_substream* %0, i32 %1, i32 %2, %struct.snd_pcm_hardware* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_pcm_hardware*, align 8
  %10 = alloca %struct.snd_ali*, align 8
  %11 = alloca %struct.snd_pcm_runtime*, align 8
  %12 = alloca %struct.snd_ali_voice*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.snd_pcm_hardware* %3, %struct.snd_pcm_hardware** %9, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %14 = call %struct.snd_ali* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %13)
  store %struct.snd_ali* %14, %struct.snd_ali** %10, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  store %struct.snd_pcm_runtime* %17, %struct.snd_pcm_runtime** %11, align 8
  %18 = load %struct.snd_ali*, %struct.snd_ali** %10, align 8
  %19 = load i32, i32* @SNDRV_ALI_VOICE_TYPE_PCM, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.snd_ali_voice* @snd_ali_alloc_voice(%struct.snd_ali* %18, i32 %19, i32 %20, i32 %21)
  store %struct.snd_ali_voice* %22, %struct.snd_ali_voice** %12, align 8
  %23 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %12, align 8
  %24 = icmp ne %struct.snd_ali_voice* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %48

28:                                               ; preds = %4
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %30 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %12, align 8
  %31 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %30, i32 0, i32 0
  store %struct.snd_pcm_substream* %29, %struct.snd_pcm_substream** %31, align 8
  %32 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %12, align 8
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 2
  store %struct.snd_ali_voice* %32, %struct.snd_ali_voice** %34, align 8
  %35 = load i32, i32* @snd_ali_pcm_free_substream, align 4
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 0
  %40 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %9, align 8
  %41 = bitcast %struct.snd_pcm_hardware* %39 to i8*
  %42 = bitcast %struct.snd_pcm_hardware* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %44 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %43)
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %46 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %47 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %45, i32 %46, i32 0, i32 65536)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %28, %25
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.snd_ali* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_ali_voice* @snd_ali_alloc_voice(%struct.snd_ali*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
