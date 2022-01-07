; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/spi/extr_at73c213.c_snd_at73c213_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/spi/extr_at73c213.c_snd_at73c213_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i64, i64 }
%struct.snd_at73c213 = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@PDC_TPR = common dso_local global i32 0, align 4
@PDC_TCR = common dso_local global i32 0, align 4
@PDC_TNPR = common dso_local global i32 0, align 4
@PDC_TNCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_at73c213_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_at73c213_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_at73c213*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.snd_at73c213* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_at73c213* %7, %struct.snd_at73c213** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %4, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %11, i64 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %17 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %19 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PDC_TPR, align 4
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ssc_writel(i32 %22, i32 %23, i64 %26)
  %28 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %29 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PDC_TCR, align 4
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = mul nsw i64 %36, %39
  %41 = call i32 @ssc_writel(i32 %32, i32 %33, i64 %40)
  %42 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %43 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PDC_TNPR, align 4
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = call i32 @ssc_writel(i32 %46, i32 %47, i64 %53)
  %55 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %56 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PDC_TNCR, align 4
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = mul nsw i64 %63, %66
  %68 = call i32 @ssc_writel(i32 %59, i32 %60, i64 %67)
  ret i32 0
}

declare dso_local %struct.snd_at73c213* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i64) #1

declare dso_local i32 @ssc_writel(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
