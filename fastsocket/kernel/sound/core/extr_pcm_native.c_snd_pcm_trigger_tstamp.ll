; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_trigger_tstamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_trigger_tstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_pcm_substream*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*)* @snd_pcm_trigger_tstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pcm_trigger_tstamp(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %4, i32 0, i32 0
  %6 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  store %struct.snd_pcm_runtime* %6, %struct.snd_pcm_runtime** %3, align 8
  %7 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %10 = icmp eq %struct.snd_pcm_substream* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %14, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %17 = icmp eq %struct.snd_pcm_substream* %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 1
  %22 = call i32 @snd_pcm_gettime(%struct.snd_pcm_runtime* %19, i32* %21)
  br label %36

23:                                               ; preds = %12
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 0
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %25, align 8
  call void @snd_pcm_trigger_tstamp(%struct.snd_pcm_substream* %26)
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 0
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %28, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %29, i32 0, i32 0
  %31 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %30, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %23, %18
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %37, i32 0, i32 0
  store %struct.snd_pcm_substream* null, %struct.snd_pcm_substream** %38, align 8
  br label %39

39:                                               ; preds = %36, %11
  ret void
}

declare dso_local i32 @snd_pcm_gettime(%struct.snd_pcm_runtime*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
