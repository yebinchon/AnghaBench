; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/cs423x/extr_cs4236_lib.c_snd_cs4236_pcm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/cs423x/extr_cs4236_lib.c_snd_cs4236_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { i32 }
%struct.snd_pcm = type { i32 }

@SNDRV_PCM_INFO_JOINT_DUPLEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_cs4236_pcm(%struct.snd_wss* %0, i32 %1, %struct.snd_pcm** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_wss*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm**, align 8
  %8 = alloca %struct.snd_pcm*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_wss* %0, %struct.snd_wss** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_pcm** %2, %struct.snd_pcm*** %7, align 8
  %10 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @snd_wss_pcm(%struct.snd_wss* %10, i32 %11, %struct.snd_pcm** %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %30

17:                                               ; preds = %3
  %18 = load i32, i32* @SNDRV_PCM_INFO_JOINT_DUPLEX, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %21 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.snd_pcm**, %struct.snd_pcm*** %7, align 8
  %25 = icmp ne %struct.snd_pcm** %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %28 = load %struct.snd_pcm**, %struct.snd_pcm*** %7, align 8
  store %struct.snd_pcm* %27, %struct.snd_pcm** %28, align 8
  br label %29

29:                                               ; preds = %26, %17
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %15
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @snd_wss_pcm(%struct.snd_wss*, i32, %struct.snd_pcm**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
