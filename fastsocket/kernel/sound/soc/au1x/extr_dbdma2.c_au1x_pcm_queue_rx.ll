; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_dbdma2.c_au1x_pcm_queue_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_dbdma2.c_au1x_pcm_queue_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xpsc_audio_dmadata = type { i64, i64, i32, i32, i64, i32 }

@DDMA_FLAGS_IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1xpsc_audio_dmadata*)* @au1x_pcm_queue_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1x_pcm_queue_rx(%struct.au1xpsc_audio_dmadata* %0) #0 {
  %2 = alloca %struct.au1xpsc_audio_dmadata*, align 8
  store %struct.au1xpsc_audio_dmadata* %0, %struct.au1xpsc_audio_dmadata** %2, align 8
  %3 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %4 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %7 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @phys_to_virt(i32 %8)
  %10 = inttoptr i64 %9 to i8*
  %11 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %12 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @DDMA_FLAGS_IE, align 4
  %15 = call i32 @au1xxx_dbdma_put_dest_flags(i32 %5, i8* %10, i64 %13, i32 %14)
  %16 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %17 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  %20 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %21 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %24 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %22
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 4
  %29 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %30 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %33 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %1
  %37 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %38 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %40 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %2, align 8
  %43 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %36, %1
  ret void
}

declare dso_local i32 @au1xxx_dbdma_put_dest_flags(i32, i8*, i64, i32) #1

declare dso_local i64 @phys_to_virt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
