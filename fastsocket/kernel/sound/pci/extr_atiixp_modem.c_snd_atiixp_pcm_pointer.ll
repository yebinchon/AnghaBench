; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_atiixp_modem.c_snd_atiixp_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_atiixp_modem.c_snd_atiixp_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.atiixp_dma* }
%struct.atiixp_dma = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.atiixp_modem = type { i64 }

@.str = private unnamed_addr constant [54 x i8] c"atiixp-modem: invalid DMA pointer read 0x%x (buf=%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_atiixp_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_atiixp_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.atiixp_modem*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.atiixp_dma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.atiixp_modem* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.atiixp_modem* %10, %struct.atiixp_modem** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %5, align 8
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %14, i32 0, i32 0
  %16 = load %struct.atiixp_dma*, %struct.atiixp_dma** %15, align 8
  store %struct.atiixp_dma* %16, %struct.atiixp_dma** %6, align 8
  store i32 1000, i32* %8, align 4
  br label %17

17:                                               ; preds = %49, %37, %1
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %8, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %17
  %22 = load %struct.atiixp_modem*, %struct.atiixp_modem** %4, align 8
  %23 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.atiixp_dma*, %struct.atiixp_dma** %6, align 8
  %26 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %24, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.atiixp_dma*, %struct.atiixp_dma** %6, align 8
  %34 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %17

38:                                               ; preds = %21
  %39 = load %struct.atiixp_dma*, %struct.atiixp_dma** %6, align 8
  %40 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sub i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.atiixp_dma*, %struct.atiixp_dma** %6, align 8
  %46 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp uge i32 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %17

50:                                               ; preds = %38
  %51 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %51, i32 %52)
  store i32 %53, i32* %2, align 4
  br label %69

54:                                               ; preds = %17
  %55 = load %struct.atiixp_modem*, %struct.atiixp_modem** %4, align 8
  %56 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.atiixp_dma*, %struct.atiixp_dma** %6, align 8
  %59 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %57, %62
  %64 = call i32 @readl(i64 %63)
  %65 = load %struct.atiixp_dma*, %struct.atiixp_dma** %6, align 8
  %66 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @snd_printd(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %54, %50
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.atiixp_modem* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @bytes_to_frames(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_printd(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
