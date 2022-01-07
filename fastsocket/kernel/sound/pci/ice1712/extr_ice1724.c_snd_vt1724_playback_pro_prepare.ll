; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_playback_pro_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_playback_pro_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_ice1712 = type { i32 }

@BURST = common dso_local global i32 0, align 4
@PLAYBACK_ADDR = common dso_local global i32 0, align 4
@PLAYBACK_SIZE = common dso_local global i32 0, align 4
@PLAYBACK_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_vt1724_playback_pro_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vt1724_playback_pro_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_ice1712* %7, %struct.snd_ice1712** %3, align 8
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %9 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 8, %15
  %17 = ashr i32 %16, 1
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %4, align 1
  %19 = load i8, i8* %4, align 1
  %20 = zext i8 %19 to i32
  %21 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %22 = load i32, i32* @BURST, align 4
  %23 = call i64 @ICEMT1724(%struct.snd_ice1712* %21, i32 %22)
  %24 = call i32 @outb(i32 %20, i64 %23)
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %31 = load i32, i32* @PLAYBACK_ADDR, align 4
  %32 = call i64 @ICEMT1724(%struct.snd_ice1712* %30, i32 %31)
  %33 = call i32 @outl(i32 %29, i64 %32)
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %35 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %34)
  %36 = ashr i32 %35, 2
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %40 = load i32, i32* @PLAYBACK_SIZE, align 4
  %41 = call i64 @ICEMT1724(%struct.snd_ice1712* %39, i32 %40)
  %42 = call i32 @outw(i32 %38, i64 %41)
  %43 = load i32, i32* %5, align 4
  %44 = lshr i32 %43, 16
  %45 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %46 = load i32, i32* @PLAYBACK_SIZE, align 4
  %47 = call i64 @ICEMT1724(%struct.snd_ice1712* %45, i32 %46)
  %48 = add nsw i64 %47, 2
  %49 = call i32 @outb(i32 %44, i64 %48)
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %51 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %50)
  %52 = ashr i32 %51, 2
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %56 = load i32, i32* @PLAYBACK_COUNT, align 4
  %57 = call i64 @ICEMT1724(%struct.snd_ice1712* %55, i32 %56)
  %58 = call i32 @outw(i32 %54, i64 %57)
  %59 = load i32, i32* %5, align 4
  %60 = lshr i32 %59, 16
  %61 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %62 = load i32, i32* @PLAYBACK_COUNT, align 4
  %63 = call i64 @ICEMT1724(%struct.snd_ice1712* %61, i32 %62)
  %64 = add nsw i64 %63, 2
  %65 = call i32 @outb(i32 %60, i64 %64)
  %66 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %67 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock_irq(i32* %67)
  ret i32 0
}

declare dso_local %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i64 @ICEMT1724(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
