; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme32.c_snd_rme32_pb_trans_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme32.c_snd_rme32_pb_trans_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_pcm_indirect = type { i64, i64 }
%struct.rme32 = type { i64 }

@RME32_IO_DATA_BUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_pcm_indirect*, i64)* @snd_rme32_pb_trans_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_rme32_pb_trans_copy(%struct.snd_pcm_substream* %0, %struct.snd_pcm_indirect* %1, i64 %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_indirect*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rme32*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_indirect* %1, %struct.snd_pcm_indirect** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = call %struct.rme32* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.rme32* %9, %struct.rme32** %7, align 8
  %10 = load %struct.rme32*, %struct.rme32** %7, align 8
  %11 = getelementptr inbounds %struct.rme32, %struct.rme32* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RME32_IO_DATA_BUFFER, align 8
  %14 = add nsw i64 %12, %13
  %15 = load %struct.snd_pcm_indirect*, %struct.snd_pcm_indirect** %5, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_indirect, %struct.snd_pcm_indirect* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.snd_pcm_indirect*, %struct.snd_pcm_indirect** %5, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_indirect, %struct.snd_pcm_indirect* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @memcpy_toio(i64 %18, i64 %27, i64 %28)
  ret void
}

declare dso_local %struct.rme32* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @memcpy_toio(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
