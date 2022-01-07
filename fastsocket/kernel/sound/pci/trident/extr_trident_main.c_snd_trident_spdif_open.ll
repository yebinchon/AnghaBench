; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_spdif_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_spdif_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, %struct.snd_trident_voice* }
%struct.snd_trident_voice = type { i32, %struct.snd_pcm_substream* }
%struct.snd_trident = type { i64, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SNDRV_TRIDENT_VOICE_TYPE_PCM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@snd_trident_pcm_free_substream = common dso_local global i32 0, align 4
@TRIDENT_DEVICE_ID_SI7018 = common dso_local global i64 0, align 8
@snd_trident_spdif = common dso_local global i32 0, align 4
@snd_trident_spdif_7018 = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_trident_spdif_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_spdif_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_trident*, align 8
  %5 = alloca %struct.snd_trident_voice*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_trident* %8, %struct.snd_trident** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %6, align 8
  %12 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %13 = load i32, i32* @SNDRV_TRIDENT_VOICE_TYPE_PCM, align 4
  %14 = call %struct.snd_trident_voice* @snd_trident_alloc_voice(%struct.snd_trident* %12, i32 %13, i32 0, i32 0)
  store %struct.snd_trident_voice* %14, %struct.snd_trident_voice** %5, align 8
  %15 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %16 = icmp eq %struct.snd_trident_voice* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %82

20:                                               ; preds = %1
  %21 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %22 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %24 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %25 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %24, i32 0, i32 1
  store %struct.snd_pcm_substream* %23, %struct.snd_pcm_substream** %25, align 8
  %26 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %27 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %26, i32 0, i32 3
  %28 = call i32 @spin_lock_irq(i32* %27)
  %29 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %30 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %33 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %35 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %34, i32 0, i32 3
  %36 = call i32 @spin_unlock_irq(i32* %35)
  %37 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 2
  store %struct.snd_trident_voice* %37, %struct.snd_trident_voice** %39, align 8
  %40 = load i32, i32* @snd_trident_pcm_free_substream, align 4
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %44 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TRIDENT_DEVICE_ID_SI7018, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %20
  %49 = load i32, i32* @snd_trident_spdif, align 4
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %56

52:                                               ; preds = %20
  %53 = load i32, i32* @snd_trident_spdif_7018, align 4
  %54 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %60 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %58
  store i32 %67, i32* %65, align 4
  %68 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %69 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %72 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %75 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = call i32 @snd_ctl_notify(i32 %70, i32 %73, i32* %77)
  %79 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %80 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %81 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %79, i32 %80, i32 0, i32 65536)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %56, %17
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_trident_voice* @snd_trident_alloc_voice(%struct.snd_trident*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
