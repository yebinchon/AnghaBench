; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme32.c_snd_rme32_playback_spdif_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme32.c_snd_rme32_playback_spdif_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_9__ }
%struct.rme32 = type { i32, %struct.TYPE_8__*, i32, i32, i32, %struct.TYPE_6__*, i64, i32, %struct.snd_pcm_substream*, i64, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@RME32_WCR_ADAT = common dso_local global i32 0, align 4
@RME32_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@snd_rme32_spdif_fd_info = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@snd_rme32_spdif_info = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@PCI_DEVICE_ID_RME_DIGI32_PRO = common dso_local global i64 0, align 8
@SNDRV_PCM_RATE_64000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_88200 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_96000 = common dso_local global i32 0, align 4
@RME32_RCR_KMODE = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_rme32_playback_spdif_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme32_playback_spdif_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rme32*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.rme32* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.rme32* %9, %struct.rme32** %6, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %7, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %13)
  %15 = load %struct.rme32*, %struct.rme32** %6, align 8
  %16 = getelementptr inbounds %struct.rme32, %struct.rme32* %15, i32 0, i32 7
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.rme32*, %struct.rme32** %6, align 8
  %19 = getelementptr inbounds %struct.rme32, %struct.rme32* %18, i32 0, i32 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %19, align 8
  %21 = icmp ne %struct.snd_pcm_substream* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.rme32*, %struct.rme32** %6, align 8
  %24 = getelementptr inbounds %struct.rme32, %struct.rme32* %23, i32 0, i32 7
  %25 = call i32 @spin_unlock_irq(i32* %24)
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %140

28:                                               ; preds = %1
  %29 = load i32, i32* @RME32_WCR_ADAT, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.rme32*, %struct.rme32** %6, align 8
  %32 = getelementptr inbounds %struct.rme32, %struct.rme32* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.rme32*, %struct.rme32** %6, align 8
  %36 = getelementptr inbounds %struct.rme32, %struct.rme32* %35, i32 0, i32 10
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.rme32*, %struct.rme32** %6, align 8
  %39 = getelementptr inbounds %struct.rme32, %struct.rme32* %38, i32 0, i32 9
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RME32_IO_CONTROL_REGISTER, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %45 = load %struct.rme32*, %struct.rme32** %6, align 8
  %46 = getelementptr inbounds %struct.rme32, %struct.rme32* %45, i32 0, i32 8
  store %struct.snd_pcm_substream* %44, %struct.snd_pcm_substream** %46, align 8
  %47 = load %struct.rme32*, %struct.rme32** %6, align 8
  %48 = getelementptr inbounds %struct.rme32, %struct.rme32* %47, i32 0, i32 7
  %49 = call i32 @spin_unlock_irq(i32* %48)
  %50 = load %struct.rme32*, %struct.rme32** %6, align 8
  %51 = getelementptr inbounds %struct.rme32, %struct.rme32* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %28
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %55, i32 0, i32 0
  %57 = bitcast %struct.TYPE_9__* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 bitcast (%struct.TYPE_9__* @snd_rme32_spdif_fd_info to i8*), i64 12, i1 false)
  br label %62

58:                                               ; preds = %28
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %59, i32 0, i32 0
  %61 = bitcast %struct.TYPE_9__* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 bitcast (%struct.TYPE_9__* @snd_rme32_spdif_info to i8*), i64 12, i1 false)
  br label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.rme32*, %struct.rme32** %6, align 8
  %64 = getelementptr inbounds %struct.rme32, %struct.rme32* %63, i32 0, i32 5
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PCI_DEVICE_ID_RME_DIGI32_PRO, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %62
  %71 = load i32, i32* @SNDRV_PCM_RATE_64000, align 4
  %72 = load i32, i32* @SNDRV_PCM_RATE_88200, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @SNDRV_PCM_RATE_96000, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %75
  store i32 %80, i32* %78, align 4
  %81 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store i32 96000, i32* %83, align 4
  br label %84

84:                                               ; preds = %70, %62
  %85 = load %struct.rme32*, %struct.rme32** %6, align 8
  %86 = getelementptr inbounds %struct.rme32, %struct.rme32* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @RME32_RCR_KMODE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %84
  %92 = load %struct.rme32*, %struct.rme32** %6, align 8
  %93 = call i32 @snd_rme32_capture_getrate(%struct.rme32* %92, i32* %5)
  store i32 %93, i32* %4, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %91
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @snd_pcm_rate_to_rate_bit(i32 %96)
  %98 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %99 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %103 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %107 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  br label %109

109:                                              ; preds = %95, %91, %84
  %110 = load %struct.rme32*, %struct.rme32** %6, align 8
  %111 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %112 = call i32 @snd_rme32_set_buffer_constraint(%struct.rme32* %110, %struct.snd_pcm_runtime* %111)
  %113 = load %struct.rme32*, %struct.rme32** %6, align 8
  %114 = getelementptr inbounds %struct.rme32, %struct.rme32* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.rme32*, %struct.rme32** %6, align 8
  %117 = getelementptr inbounds %struct.rme32, %struct.rme32* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.rme32*, %struct.rme32** %6, align 8
  %121 = getelementptr inbounds %struct.rme32, %struct.rme32* %120, i32 0, i32 1
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %119
  store i32 %128, i32* %126, align 4
  %129 = load %struct.rme32*, %struct.rme32** %6, align 8
  %130 = getelementptr inbounds %struct.rme32, %struct.rme32* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %133 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.rme32*, %struct.rme32** %6, align 8
  %136 = getelementptr inbounds %struct.rme32, %struct.rme32* %135, i32 0, i32 1
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = call i32 @snd_ctl_notify(i32 %131, i32 %134, i32* %138)
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %109, %22
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.rme32* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_rme32_capture_getrate(%struct.rme32*, i32*) #1

declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32) #1

declare dso_local i32 @snd_rme32_set_buffer_constraint(%struct.rme32*, %struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
