; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_capture_pro_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_capture_pro_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_ice1712 = type { i32, i32 }

@CAPTURE_ADDR = common dso_local global i32 0, align 4
@CAPTURE_SIZE = common dso_local global i32 0, align 4
@CAPTURE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ice1712_capture_pro_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_capture_pro_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ice1712*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.snd_ice1712* %5, %struct.snd_ice1712** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %6)
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %9 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %11 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %19 = load i32, i32* @CAPTURE_ADDR, align 4
  %20 = call i32 @ICEMT(%struct.snd_ice1712* %18, i32 %19)
  %21 = call i32 @outl(i32 %17, i32 %20)
  %22 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %23 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 2
  %26 = sub nsw i32 %25, 1
  %27 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %28 = load i32, i32* @CAPTURE_SIZE, align 4
  %29 = call i32 @ICEMT(%struct.snd_ice1712* %27, i32 %28)
  %30 = call i32 @outw(i32 %26, i32 %29)
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %32 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %31)
  %33 = ashr i32 %32, 2
  %34 = sub nsw i32 %33, 1
  %35 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %36 = load i32, i32* @CAPTURE_COUNT, align 4
  %37 = call i32 @ICEMT(%struct.snd_ice1712* %35, i32 %36)
  %38 = call i32 @outw(i32 %34, i32 %37)
  %39 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %40 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock_irq(i32* %40)
  ret i32 0
}

declare dso_local %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @ICEMT(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
