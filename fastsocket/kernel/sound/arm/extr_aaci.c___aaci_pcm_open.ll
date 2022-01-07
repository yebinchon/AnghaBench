; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c___aaci_pcm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c___aaci_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.aaci = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_4__, %struct.aaci_runtime* }
%struct.aaci_runtime = type { %struct.snd_pcm_substream* }

@aaci_hw_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@aaci_rule_rate_by_channels = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@aaci_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aaci*, %struct.snd_pcm_substream*, %struct.aaci_runtime*)* @__aaci_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__aaci_pcm_open(%struct.aaci* %0, %struct.snd_pcm_substream* %1, %struct.aaci_runtime* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aaci*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.aaci_runtime*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca i32, align 4
  store %struct.aaci* %0, %struct.aaci** %5, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %6, align 8
  store %struct.aaci_runtime* %2, %struct.aaci_runtime** %7, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %8, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %14 = load %struct.aaci_runtime*, %struct.aaci_runtime** %7, align 8
  %15 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %14, i32 0, i32 0
  store %struct.snd_pcm_substream* %13, %struct.snd_pcm_substream** %15, align 8
  %16 = load %struct.aaci_runtime*, %struct.aaci_runtime** %7, align 8
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 1
  store %struct.aaci_runtime* %16, %struct.aaci_runtime** %18, align 8
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 0
  %21 = bitcast %struct.TYPE_4__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 4 bitcast (%struct.TYPE_4__* @aaci_hw_info to i8*), i64 4, i1 false)
  %22 = load %struct.aaci*, %struct.aaci** %5, align 8
  %23 = getelementptr inbounds %struct.aaci, %struct.aaci* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %24, 2
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %30 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %31 = load i32, i32* @aaci_rule_rate_by_channels, align 4
  %32 = load %struct.aaci*, %struct.aaci** %5, align 8
  %33 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %34 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %35 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %29, i32 0, i32 %30, i32 %31, %struct.aaci* %32, i32 %33, i32 %34, i32 -1)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  br label %58

39:                                               ; preds = %3
  %40 = load %struct.aaci*, %struct.aaci** %5, align 8
  %41 = getelementptr inbounds %struct.aaci, %struct.aaci* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @aaci_irq, align 4
  %48 = load i32, i32* @IRQF_SHARED, align 4
  %49 = load i32, i32* @IRQF_DISABLED, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @DRIVER_NAME, align 4
  %52 = load %struct.aaci*, %struct.aaci** %5, align 8
  %53 = call i32 @request_irq(i32 %46, i32 %47, i32 %50, i32 %51, %struct.aaci* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %39
  br label %58

57:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %60

58:                                               ; preds = %56, %38
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %57
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, %struct.aaci*, i32, i32, i32) #2

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.aaci*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
