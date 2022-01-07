; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_capture_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_capture_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_cs46xx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BA1_CCTL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_cs46xx_capture_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs46xx_capture_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_cs46xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.snd_cs46xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_cs46xx* %9, %struct.snd_cs46xx** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %11 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %39 [
    i32 130, label %14
    i32 131, label %14
    i32 129, label %29
    i32 128, label %29
  ]

14:                                               ; preds = %2, %2
  %15 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %16 = load i32, i32* @BA1_CCTL, align 4
  %17 = call i32 @snd_cs46xx_peek(%struct.snd_cs46xx* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, -65536
  store i32 %19, i32* %6, align 4
  %20 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %21 = load i32, i32* @BA1_CCTL, align 4
  %22 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %23 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %20, i32 %21, i32 %27)
  br label %42

29:                                               ; preds = %2, %2
  %30 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %31 = load i32, i32* @BA1_CCTL, align 4
  %32 = call i32 @snd_cs46xx_peek(%struct.snd_cs46xx* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, -65536
  store i32 %34, i32* %6, align 4
  %35 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %36 = load i32, i32* @BA1_CCTL, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %35, i32 %36, i32 %37)
  br label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %29, %14
  %43 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %44 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local %struct.snd_cs46xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_cs46xx_peek(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @snd_cs46xx_poke(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
