; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_pcm.c_emu8k_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_pcm.c_emu8k_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_emu8k_pcm* }
%struct.snd_emu8k_pcm = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @emu8k_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu8k_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_emu8k_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %11, align 8
  store %struct.snd_emu8k_pcm* %12, %struct.snd_emu8k_pcm** %6, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %48 [
    i32 129, label %14
    i32 128, label %31
  ]

14:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %25, %14
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %6, align 8
  %18 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @start_voice(%struct.snd_emu8k_pcm* %22, i32 %23)
  br label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %15

28:                                               ; preds = %15
  %29 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %6, align 8
  %30 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  br label %51

31:                                               ; preds = %2
  %32 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %6, align 8
  %33 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %44, %31
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %6, align 8
  %37 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @stop_voice(%struct.snd_emu8k_pcm* %41, i32 %42)
  br label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %34

47:                                               ; preds = %34
  br label %51

48:                                               ; preds = %2
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %47, %28
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @start_voice(%struct.snd_emu8k_pcm*, i32) #1

declare dso_local i32 @stop_voice(%struct.snd_emu8k_pcm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
