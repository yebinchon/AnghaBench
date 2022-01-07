; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, %struct.snd_emu10k1_pcm* }
%struct.snd_emu10k1_pcm = type { %struct.snd_pcm_substream*, i32, %struct.snd_emu10k1* }
%struct.snd_emu10k1 = type { %struct.snd_emu10k1_pcm_mixer* }
%struct.snd_emu10k1_pcm_mixer = type { i32**, i32**, i32*, %struct.snd_emu10k1_pcm* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PLAYBACK_EMUVOICE = common dso_local global i32 0, align 4
@snd_emu10k1_pcm_free_substream = common dso_local global i32 0, align 4
@snd_emu10k1_playback = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_emu10k1_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_emu10k1_pcm*, align 8
  %6 = alloca %struct.snd_emu10k1_pcm_mixer*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_emu10k1* %11, %struct.snd_emu10k1** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 1
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %7, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.snd_emu10k1_pcm* @kzalloc(i32 24, i32 %15)
  store %struct.snd_emu10k1_pcm* %16, %struct.snd_emu10k1_pcm** %5, align 8
  %17 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %18 = icmp eq %struct.snd_emu10k1_pcm* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %147

22:                                               ; preds = %1
  %23 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %24 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %25 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %24, i32 0, i32 2
  store %struct.snd_emu10k1* %23, %struct.snd_emu10k1** %25, align 8
  %26 = load i32, i32* @PLAYBACK_EMUVOICE, align 4
  %27 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %28 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %30 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %31 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %30, i32 0, i32 0
  store %struct.snd_pcm_substream* %29, %struct.snd_pcm_substream** %31, align 8
  %32 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 2
  store %struct.snd_emu10k1_pcm* %32, %struct.snd_emu10k1_pcm** %34, align 8
  %35 = load i32, i32* @snd_emu10k1_pcm_free_substream, align 4
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @snd_emu10k1_playback, align 4
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %42 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %43 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %22
  %46 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %47 = call i32 @kfree(%struct.snd_emu10k1_pcm* %46)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %2, align 4
  br label %147

49:                                               ; preds = %22
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %51 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %52 = load i32, i32* @UINT_MAX, align 4
  %53 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %50, i32 %51, i32 256, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %57 = call i32 @kfree(%struct.snd_emu10k1_pcm* %56)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %2, align 4
  br label %147

59:                                               ; preds = %49
  %60 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %61 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %60, i32 0, i32 0
  %62 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %61, align 8
  %63 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %62, i64 %65
  store %struct.snd_emu10k1_pcm_mixer* %66, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %96, %59
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %70, label %99

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %73 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %72, i32 0, i32 0
  %74 = load i32**, i32*** %73, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %71, i32* %79, align 4
  %80 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %81 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %80, i32 0, i32 0
  %82 = load i32**, i32*** %81, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %71, i32* %87, align 4
  %88 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %89 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %88, i32 0, i32 0
  %90 = load i32**, i32*** %89, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %71, i32* %95, align 4
  br label %96

96:                                               ; preds = %70
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %67

99:                                               ; preds = %67
  %100 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %101 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %100, i32 0, i32 1
  %102 = call i32 @memset(i32*** %101, i32 0, i32 8)
  %103 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %104 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %103, i32 0, i32 1
  %105 = load i32**, i32*** %104, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 2
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  store i32 255, i32* %108, align 4
  %109 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %110 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %109, i32 0, i32 1
  %111 = load i32**, i32*** %110, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  store i32 255, i32* %114, align 4
  %115 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %116 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %115, i32 0, i32 1
  %117 = load i32**, i32*** %116, align 8
  %118 = getelementptr inbounds i32*, i32** %117, i64 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  store i32 255, i32* %120, align 4
  %121 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %122 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %121, i32 0, i32 1
  %123 = load i32**, i32*** %122, align 8
  %124 = getelementptr inbounds i32*, i32** %123, i64 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 255, i32* %126, align 4
  %127 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %128 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  store i32 65535, i32* %130, align 4
  %131 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %132 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  store i32 65535, i32* %134, align 4
  %135 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %136 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 65535, i32* %138, align 4
  %139 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %140 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %141 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %140, i32 0, i32 3
  store %struct.snd_emu10k1_pcm* %139, %struct.snd_emu10k1_pcm** %141, align 8
  %142 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %143 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %144 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @snd_emu10k1_pcm_mixer_notify(%struct.snd_emu10k1* %142, i64 %145, i32 1)
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %99, %55, %45, %19
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_emu10k1_pcm* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @kfree(%struct.snd_emu10k1_pcm*) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @memset(i32***, i32, i32) #1

declare dso_local i32 @snd_emu10k1_pcm_mixer_notify(%struct.snd_emu10k1*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
