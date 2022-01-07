; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_disable_pcm_capture.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_disable_pcm_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32, %struct.dsp_spos_instance* }
%struct.dsp_spos_instance = type { i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs46xx_dsp_disable_pcm_capture(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca %struct.dsp_spos_instance*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %3, align 8
  %5 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %6 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %5, i32 0, i32 1
  %7 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  store %struct.dsp_spos_instance* %7, %struct.dsp_spos_instance** %4, align 8
  %8 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %9 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @snd_BUG_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %33

19:                                               ; preds = %1
  %20 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %21 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %24 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %25 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @cs46xx_dsp_remove_scb(%struct.snd_cs46xx* %23, i32* %26)
  %28 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %29 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %31 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %19, %16
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cs46xx_dsp_remove_scb(%struct.snd_cs46xx*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
