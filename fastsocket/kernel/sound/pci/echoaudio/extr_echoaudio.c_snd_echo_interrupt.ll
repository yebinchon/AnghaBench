; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_snd_echo_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_snd_echo_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32*, i32, i64, i32, %struct.snd_pcm_substream** }
%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@DSP_MAXPIPES = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_echo_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_echo_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.echoaudio*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.echoaudio*
  store %struct.echoaudio* %12, %struct.echoaudio** %6, align 8
  %13 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %14 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %13, i32 0, i32 3
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %17 = call i32 @service_irq(%struct.echoaudio* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %22 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %21, i32 0, i32 3
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %83

25:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %75, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @DSP_MAXPIPES, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %78

30:                                               ; preds = %26
  %31 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %32 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %31, i32 0, i32 4
  %33 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %33, i64 %35
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %36, align 8
  store %struct.snd_pcm_substream* %37, %struct.snd_pcm_substream** %7, align 8
  %38 = icmp ne %struct.snd_pcm_substream* %37, null
  br i1 %38, label %39, label %74

39:                                               ; preds = %30
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %41 = call i32 @pcm_pointer(%struct.snd_pcm_substream* %40)
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %41, %46
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %50 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %48, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %39
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %60 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  %65 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %66 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %65, i32 0, i32 3
  %67 = call i32 @spin_unlock(i32* %66)
  %68 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %69 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %68)
  %70 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %71 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %70, i32 0, i32 3
  %72 = call i32 @spin_lock(i32* %71)
  br label %73

73:                                               ; preds = %57, %39
  br label %74

74:                                               ; preds = %73, %30
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %26

78:                                               ; preds = %26
  %79 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %80 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %79, i32 0, i32 3
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %20
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @service_irq(%struct.echoaudio*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pcm_pointer(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
