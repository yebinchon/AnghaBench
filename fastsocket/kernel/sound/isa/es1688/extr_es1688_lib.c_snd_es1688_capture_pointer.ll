; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_capture_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_capture_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_es1688 = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_es1688_capture_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1688_capture_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_es1688*, align 8
  %5 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.snd_es1688* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_es1688* %7, %struct.snd_es1688** %4, align 8
  %8 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %9 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 15
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %15 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %18 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @snd_dma_pointer(i32 %16, i32 %19)
  store i64 %20, i64* %5, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @bytes_to_frames(i32 %23, i64 %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %13, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.snd_es1688* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_dma_pointer(i32, i32) #1

declare dso_local i32 @bytes_to_frames(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
