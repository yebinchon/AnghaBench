; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.vt1724_pcm_reg* }
%struct.vt1724_pcm_reg = type { i64, i64, i64 }
%struct.snd_ice1712 = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_vt1724_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vt1724_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca %struct.vt1724_pcm_reg*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.snd_ice1712* %6, %struct.snd_ice1712** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.vt1724_pcm_reg*, %struct.vt1724_pcm_reg** %10, align 8
  store %struct.vt1724_pcm_reg* %11, %struct.vt1724_pcm_reg** %4, align 8
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %13 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_irq(i32* %13)
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %21 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.vt1724_pcm_reg*, %struct.vt1724_pcm_reg** %4, align 8
  %24 = getelementptr inbounds %struct.vt1724_pcm_reg, %struct.vt1724_pcm_reg* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = call i32 @outl(i32 %19, i64 %26)
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %29 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %28)
  %30 = ashr i32 %29, 2
  %31 = sub nsw i32 %30, 1
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %33 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.vt1724_pcm_reg*, %struct.vt1724_pcm_reg** %4, align 8
  %36 = getelementptr inbounds %struct.vt1724_pcm_reg, %struct.vt1724_pcm_reg* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = call i32 @outw(i32 %31, i64 %38)
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %41 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %40)
  %42 = ashr i32 %41, 2
  %43 = sub nsw i32 %42, 1
  %44 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %45 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.vt1724_pcm_reg*, %struct.vt1724_pcm_reg** %4, align 8
  %48 = getelementptr inbounds %struct.vt1724_pcm_reg, %struct.vt1724_pcm_reg* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = call i32 @outw(i32 %43, i64 %50)
  %52 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %53 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock_irq(i32* %53)
  ret i32 0
}

declare dso_local %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
