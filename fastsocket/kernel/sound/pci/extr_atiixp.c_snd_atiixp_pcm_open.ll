; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_atiixp.c_snd_atiixp_pcm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_atiixp.c_snd_atiixp_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.atiixp_dma*, %struct.TYPE_6__ }
%struct.atiixp_dma = type { i32, i32, %struct.TYPE_5__*, %struct.snd_pcm_substream* }
%struct.TYPE_5__ = type { i32 (%struct.atiixp*, i32)* }
%struct.atiixp = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@snd_atiixp_pcm_hw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SNDRV_PCM_FMTBIT_IEC958_SUBFRAME_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.atiixp_dma*, i32)* @snd_atiixp_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_atiixp_pcm_open(%struct.snd_pcm_substream* %0, %struct.atiixp_dma* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.atiixp_dma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atiixp*, align 8
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.atiixp_dma* %1, %struct.atiixp_dma** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %12 = call %struct.atiixp* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.atiixp* %12, %struct.atiixp** %8, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %9, align 8
  %16 = load %struct.atiixp_dma*, %struct.atiixp_dma** %6, align 8
  %17 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.atiixp_dma*, %struct.atiixp_dma** %6, align 8
  %22 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32 (%struct.atiixp*, i32)*, i32 (%struct.atiixp*, i32)** %24, align 8
  %26 = icmp ne i32 (%struct.atiixp*, i32)* %25, null
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %20, %3
  %29 = phi i1 [ true, %3 ], [ %27, %20 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @snd_BUG_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %102

36:                                               ; preds = %28
  %37 = load %struct.atiixp_dma*, %struct.atiixp_dma** %6, align 8
  %38 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %102

44:                                               ; preds = %36
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %46 = load %struct.atiixp_dma*, %struct.atiixp_dma** %6, align 8
  %47 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %46, i32 0, i32 3
  store %struct.snd_pcm_substream* %45, %struct.snd_pcm_substream** %47, align 8
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 1
  %50 = bitcast %struct.TYPE_6__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 4 bitcast (%struct.TYPE_6__* @snd_atiixp_pcm_hw to i8*), i64 8, i1 false)
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.atiixp_dma*, %struct.atiixp_dma** %6, align 8
  %53 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %44
  %57 = load %struct.atiixp*, %struct.atiixp** %8, align 8
  %58 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %59, i64 %61
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %70 = call i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime* %69)
  br label %76

71:                                               ; preds = %44
  %72 = load i32, i32* @SNDRV_PCM_FMTBIT_IEC958_SUBFRAME_LE, align 4
  %73 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  br label %76

76:                                               ; preds = %71, %56
  %77 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %78 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %79 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %4, align 4
  br label %102

83:                                               ; preds = %76
  %84 = load %struct.atiixp_dma*, %struct.atiixp_dma** %6, align 8
  %85 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %86 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %85, i32 0, i32 0
  store %struct.atiixp_dma* %84, %struct.atiixp_dma** %86, align 8
  %87 = load %struct.atiixp*, %struct.atiixp** %8, align 8
  %88 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %87, i32 0, i32 0
  %89 = call i32 @spin_lock_irq(i32* %88)
  %90 = load %struct.atiixp_dma*, %struct.atiixp_dma** %6, align 8
  %91 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %90, i32 0, i32 2
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32 (%struct.atiixp*, i32)*, i32 (%struct.atiixp*, i32)** %93, align 8
  %95 = load %struct.atiixp*, %struct.atiixp** %8, align 8
  %96 = call i32 %94(%struct.atiixp* %95, i32 1)
  %97 = load %struct.atiixp*, %struct.atiixp** %8, align 8
  %98 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock_irq(i32* %98)
  %100 = load %struct.atiixp_dma*, %struct.atiixp_dma** %6, align 8
  %101 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %83, %81, %41, %33
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.atiixp* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
