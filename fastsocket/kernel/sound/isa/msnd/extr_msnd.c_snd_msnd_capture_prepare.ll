; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd.c_snd_msnd_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd.c_snd_msnd_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_msnd = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_msnd_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_msnd_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_msnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.snd_msnd* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_msnd* %8, %struct.snd_msnd** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = udiv i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.snd_msnd*, %struct.snd_msnd** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @snd_msnd_capture_reset_queue(%struct.snd_msnd* %16, i32 %17, i32 %18)
  %20 = load %struct.snd_msnd*, %struct.snd_msnd** %3, align 8
  %21 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  ret i32 0
}

declare dso_local %struct.snd_msnd* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_msnd_capture_reset_queue(%struct.snd_msnd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
