; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_dbdma2.c_au1x_pcm_dmarx_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_dbdma2.c_au1x_pcm_dmarx_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xpsc_audio_dmadata = type { i64, i64, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @au1x_pcm_dmarx_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1x_pcm_dmarx_cb(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.au1xpsc_audio_dmadata*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.au1xpsc_audio_dmadata*
  store %struct.au1xpsc_audio_dmadata* %7, %struct.au1xpsc_audio_dmadata** %5, align 8
  %8 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %9 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %12 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, %10
  store i64 %14, i64* %12, align 8
  %15 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %16 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %20 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %25 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %27 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %23, %2
  %29 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %30 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @snd_pcm_period_elapsed(i32 %31)
  %33 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %34 = call i32 @au1x_pcm_queue_rx(%struct.au1xpsc_audio_dmadata* %33)
  ret void
}

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

declare dso_local i32 @au1x_pcm_queue_rx(%struct.au1xpsc_audio_dmadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
