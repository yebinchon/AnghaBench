; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_als300.c_snd_als300_capture_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_als300.c_snd_als300_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_als300_substream_data*, i32 }
%struct.snd_als300_substream_data = type { i32, i32 }
%struct.snd_als300 = type { %struct.snd_pcm_substream* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@snd_als300_capture_hw = common dso_local global i32 0, align 4
@RECORD_CONTROL = common dso_local global i32 0, align 4
@RECORD_BLOCK_COUNTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_als300_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_als300_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_als300*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_als300_substream_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.snd_als300* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_als300* %7, %struct.snd_als300** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.snd_als300_substream_data* @kzalloc(i32 8, i32 %11)
  store %struct.snd_als300_substream_data* %12, %struct.snd_als300_substream_data** %5, align 8
  %13 = call i32 (...) @snd_als300_dbgcallenter()
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %15 = load %struct.snd_als300*, %struct.snd_als300** %3, align 8
  %16 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %15, i32 0, i32 0
  store %struct.snd_pcm_substream* %14, %struct.snd_pcm_substream** %16, align 8
  %17 = load i32, i32* @snd_als300_capture_hw, align 4
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %5, align 8
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %21, i32 0, i32 0
  store %struct.snd_als300_substream_data* %20, %struct.snd_als300_substream_data** %22, align 8
  %23 = load i32, i32* @RECORD_CONTROL, align 4
  %24 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %5, align 8
  %25 = getelementptr inbounds %struct.snd_als300_substream_data, %struct.snd_als300_substream_data* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @RECORD_BLOCK_COUNTER, align 4
  %27 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %5, align 8
  %28 = getelementptr inbounds %struct.snd_als300_substream_data, %struct.snd_als300_substream_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = call i32 (...) @snd_als300_dbgcallleave()
  ret i32 0
}

declare dso_local %struct.snd_als300* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_als300_substream_data* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_als300_dbgcallenter(...) #1

declare dso_local i32 @snd_als300_dbgcallleave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
