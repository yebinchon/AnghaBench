; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_emu10k1_pcm* }
%struct.snd_emu10k1_pcm = type { i32, i32* }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_emu10k1 = type { i32 }
%struct.snd_emu10k1_memblk = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_emu10k1_playback_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_playback_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_emu10k1*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.snd_emu10k1_pcm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_emu10k1* %12, %struct.snd_emu10k1** %6, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %7, align 8
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 0
  %18 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %17, align 8
  store %struct.snd_emu10k1_pcm* %18, %struct.snd_emu10k1_pcm** %8, align 8
  %19 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %8, align 8
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %21 = call i32 @params_channels(%struct.snd_pcm_hw_params* %20)
  %22 = call i32 @snd_emu10k1_pcm_channel_alloc(%struct.snd_emu10k1_pcm* %19, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %82

26:                                               ; preds = %2
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %28 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %29 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %28)
  %30 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %27, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %82

34:                                               ; preds = %26
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %81

37:                                               ; preds = %34
  %38 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %8, align 8
  %39 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %44 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %8, align 8
  %45 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @snd_emu10k1_free_pages(%struct.snd_emu10k1* %43, i32* %46)
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %51 = call i32* @snd_emu10k1_alloc_pages(%struct.snd_emu10k1* %49, %struct.snd_pcm_substream* %50)
  %52 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %8, align 8
  %53 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %8, align 8
  %55 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %8, align 8
  %57 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %48
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %82

63:                                               ; preds = %48
  %64 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %8, align 8
  %65 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = bitcast i32* %66 to %struct.snd_emu10k1_memblk*
  %68 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %82

75:                                               ; preds = %63
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @PAGE_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %8, align 8
  %80 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %75, %34
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %72, %60, %32, %24
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_emu10k1_pcm_channel_alloc(%struct.snd_emu10k1_pcm*, i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_emu10k1_free_pages(%struct.snd_emu10k1*, i32*) #1

declare dso_local i32* @snd_emu10k1_alloc_pages(%struct.snd_emu10k1*, %struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
