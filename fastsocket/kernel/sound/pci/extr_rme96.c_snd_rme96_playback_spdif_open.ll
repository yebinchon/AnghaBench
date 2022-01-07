; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_playback_spdif_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_playback_spdif_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_6__ }
%struct.rme96 = type { i32, %struct.TYPE_5__*, i32, i32, i32, i32, %struct.snd_pcm_substream*, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@RME96_WCR_ADAT = common dso_local global i32 0, align 4
@RME96_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@snd_rme96_playback_spdif_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@RME96_WCR_MASTER = common dso_local global i32 0, align 4
@RME96_INPUT_ANALOG = common dso_local global i64 0, align 8
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_rme96_playback_spdif_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_playback_spdif_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rme96*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.rme96* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.rme96* %9, %struct.rme96** %6, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %7, align 8
  %13 = load %struct.rme96*, %struct.rme96** %6, align 8
  %14 = getelementptr inbounds %struct.rme96, %struct.rme96* %13, i32 0, i32 5
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.rme96*, %struct.rme96** %6, align 8
  %17 = getelementptr inbounds %struct.rme96, %struct.rme96* %16, i32 0, i32 6
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %17, align 8
  %19 = icmp ne %struct.snd_pcm_substream* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.rme96*, %struct.rme96** %6, align 8
  %22 = getelementptr inbounds %struct.rme96, %struct.rme96* %21, i32 0, i32 5
  %23 = call i32 @spin_unlock_irq(i32* %22)
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %111

26:                                               ; preds = %1
  %27 = load i32, i32* @RME96_WCR_ADAT, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.rme96*, %struct.rme96** %6, align 8
  %30 = getelementptr inbounds %struct.rme96, %struct.rme96* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.rme96*, %struct.rme96** %6, align 8
  %34 = getelementptr inbounds %struct.rme96, %struct.rme96* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.rme96*, %struct.rme96** %6, align 8
  %37 = getelementptr inbounds %struct.rme96, %struct.rme96* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RME96_IO_CONTROL_REGISTER, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %43 = load %struct.rme96*, %struct.rme96** %6, align 8
  %44 = getelementptr inbounds %struct.rme96, %struct.rme96* %43, i32 0, i32 6
  store %struct.snd_pcm_substream* %42, %struct.snd_pcm_substream** %44, align 8
  %45 = load %struct.rme96*, %struct.rme96** %6, align 8
  %46 = getelementptr inbounds %struct.rme96, %struct.rme96* %45, i32 0, i32 5
  %47 = call i32 @spin_unlock_irq(i32* %46)
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 0
  %50 = bitcast %struct.TYPE_6__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 bitcast (%struct.TYPE_6__* @snd_rme96_playback_spdif_info to i8*), i64 12, i1 false)
  %51 = load %struct.rme96*, %struct.rme96** %6, align 8
  %52 = getelementptr inbounds %struct.rme96, %struct.rme96* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @RME96_WCR_MASTER, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %80, label %57

57:                                               ; preds = %26
  %58 = load %struct.rme96*, %struct.rme96** %6, align 8
  %59 = call i64 @snd_rme96_getinputtype(%struct.rme96* %58)
  %60 = load i64, i64* @RME96_INPUT_ANALOG, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %57
  %63 = load %struct.rme96*, %struct.rme96** %6, align 8
  %64 = call i32 @snd_rme96_capture_getrate(%struct.rme96* %63, i32* %5)
  store i32 %64, i32* %4, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @snd_pcm_rate_to_rate_bit(i32 %67)
  %69 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %78 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  br label %80

80:                                               ; preds = %66, %62, %57, %26
  %81 = load %struct.rme96*, %struct.rme96** %6, align 8
  %82 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %83 = call i32 @rme96_set_buffer_size_constraint(%struct.rme96* %81, %struct.snd_pcm_runtime* %82)
  %84 = load %struct.rme96*, %struct.rme96** %6, align 8
  %85 = getelementptr inbounds %struct.rme96, %struct.rme96* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.rme96*, %struct.rme96** %6, align 8
  %88 = getelementptr inbounds %struct.rme96, %struct.rme96* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.rme96*, %struct.rme96** %6, align 8
  %92 = getelementptr inbounds %struct.rme96, %struct.rme96* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %90
  store i32 %99, i32* %97, align 4
  %100 = load %struct.rme96*, %struct.rme96** %6, align 8
  %101 = getelementptr inbounds %struct.rme96, %struct.rme96* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %104 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.rme96*, %struct.rme96** %6, align 8
  %107 = getelementptr inbounds %struct.rme96, %struct.rme96* %106, i32 0, i32 1
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = call i32 @snd_ctl_notify(i32 %102, i32 %105, i32* %109)
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %80, %20
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.rme96* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @snd_rme96_getinputtype(%struct.rme96*) #1

declare dso_local i32 @snd_rme96_capture_getrate(%struct.rme96*, i32*) #1

declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32) #1

declare dso_local i32 @rme96_set_buffer_size_constraint(%struct.rme96*, %struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
