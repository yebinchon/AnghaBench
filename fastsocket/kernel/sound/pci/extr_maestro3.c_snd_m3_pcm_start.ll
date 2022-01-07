; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_maestro3.c_snd_m3_pcm_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_maestro3.c_snd_m3_pcm_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { i32 }
%struct.m3_dma = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.snd_pcm_substream = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MEMTYPE_INTERNAL_DATA = common dso_local global i32 0, align 4
@CDATA_INSTANCE_READY = common dso_local global i64 0, align 8
@KDATA_MIXER_TASK_NUMBER = common dso_local global i64 0, align 8
@KDATA_ADC1_REQUEST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_m3*, %struct.m3_dma*, %struct.snd_pcm_substream*)* @snd_m3_pcm_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_m3_pcm_start(%struct.snd_m3* %0, %struct.m3_dma* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_m3*, align 8
  %6 = alloca %struct.m3_dma*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.snd_m3* %0, %struct.snd_m3** %5, align 8
  store %struct.m3_dma* %1, %struct.m3_dma** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  %8 = load %struct.m3_dma*, %struct.m3_dma** %6, align 8
  %9 = icmp ne %struct.m3_dma* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %12 = icmp ne %struct.snd_pcm_substream* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %58

16:                                               ; preds = %10
  %17 = load %struct.snd_m3*, %struct.snd_m3** %5, align 8
  %18 = call i32 @snd_m3_inc_timer_users(%struct.snd_m3* %17)
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %57 [
    i32 128, label %22
    i32 129, label %43
  ]

22:                                               ; preds = %16
  %23 = load %struct.snd_m3*, %struct.snd_m3** %5, align 8
  %24 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.snd_m3*, %struct.snd_m3** %5, align 8
  %28 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %29 = load %struct.m3_dma*, %struct.m3_dma** %6, align 8
  %30 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CDATA_INSTANCE_READY, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @snd_m3_assp_write(%struct.snd_m3* %27, i32 %28, i64 %34, i32 1)
  %36 = load %struct.snd_m3*, %struct.snd_m3** %5, align 8
  %37 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %38 = load i64, i64* @KDATA_MIXER_TASK_NUMBER, align 8
  %39 = load %struct.snd_m3*, %struct.snd_m3** %5, align 8
  %40 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @snd_m3_assp_write(%struct.snd_m3* %36, i32 %37, i64 %38, i32 %41)
  br label %57

43:                                               ; preds = %16
  %44 = load %struct.snd_m3*, %struct.snd_m3** %5, align 8
  %45 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %46 = load i64, i64* @KDATA_ADC1_REQUEST, align 8
  %47 = call i32 @snd_m3_assp_write(%struct.snd_m3* %44, i32 %45, i64 %46, i32 1)
  %48 = load %struct.snd_m3*, %struct.snd_m3** %5, align 8
  %49 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %50 = load %struct.m3_dma*, %struct.m3_dma** %6, align 8
  %51 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CDATA_INSTANCE_READY, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @snd_m3_assp_write(%struct.snd_m3* %48, i32 %49, i64 %55, i32 1)
  br label %57

57:                                               ; preds = %16, %43, %22
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %13
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @snd_m3_inc_timer_users(%struct.snd_m3*) #1

declare dso_local i32 @snd_m3_assp_write(%struct.snd_m3*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
