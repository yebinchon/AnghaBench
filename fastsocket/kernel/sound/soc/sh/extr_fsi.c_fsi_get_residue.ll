; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/sh/extr_fsi.c_fsi_get_residue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/sh/extr_fsi.c_fsi_get_residue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_priv*, i32)* @fsi_get_residue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_get_residue(%struct.fsi_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.fsi_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.fsi_priv* %0, %struct.fsi_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %9 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %7, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %14 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %13, i32 1)
  %15 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %16 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %14, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 2, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @fsi_get_fifo_residue(%struct.fsi_priv* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %30

25:                                               ; preds = %2
  %26 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %27 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @get_dma_residue(i32 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @fsi_get_fifo_residue(%struct.fsi_priv*, i32) #1

declare dso_local i32 @get_dma_residue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
