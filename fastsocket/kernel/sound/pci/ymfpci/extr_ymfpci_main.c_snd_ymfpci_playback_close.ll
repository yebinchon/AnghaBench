; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_playback_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_playback_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_ymfpci_pcm* }
%struct.snd_ymfpci_pcm = type { i64 }
%struct.snd_ymfpci = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ymfpci_playback_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_playback_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ymfpci*, align 8
  %4 = alloca %struct.snd_ymfpci_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.snd_ymfpci* %6, %struct.snd_ymfpci** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %10, align 8
  store %struct.snd_ymfpci_pcm* %11, %struct.snd_ymfpci_pcm** %4, align 8
  %12 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %13 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_irq(i32* %13)
  %15 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %16 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %21 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %26 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %30 = call i32 @ymfpci_close_extension(%struct.snd_ymfpci* %29)
  br label %31

31:                                               ; preds = %24, %19, %1
  %32 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %33 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %32, i32 0, i32 1
  %34 = call i32 @spin_unlock_irq(i32* %33)
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %36 = call i32 @snd_ymfpci_playback_close_1(%struct.snd_pcm_substream* %35)
  ret i32 %36
}

declare dso_local %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ymfpci_close_extension(%struct.snd_ymfpci*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_ymfpci_playback_close_1(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
