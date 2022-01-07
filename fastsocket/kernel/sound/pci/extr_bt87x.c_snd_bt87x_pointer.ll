; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_bt87x.c_snd_bt87x_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_bt87x.c_snd_bt87x_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_bt87x = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_bt87x_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bt87x_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_bt87x*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.snd_bt87x* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.snd_bt87x* %6, %struct.snd_bt87x** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %4, align 8
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %11 = load %struct.snd_bt87x*, %struct.snd_bt87x** %3, align 8
  %12 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.snd_bt87x*, %struct.snd_bt87x** %3, align 8
  %15 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  %18 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %10, i32 %17)
  ret i32 %18
}

declare dso_local %struct.snd_bt87x* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @bytes_to_frames(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
