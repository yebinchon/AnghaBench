; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_pcm_period_elapsed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_pcm_period_elapsed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)* }

@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call i64 @PCM_RUNTIME_CHECK(%struct.snd_pcm_substream* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %66

9:                                                ; preds = %1
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 2
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %3, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 2
  %15 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %14, align 8
  %16 = icmp ne i32 (%struct.snd_pcm_substream*)* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 2
  %20 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %19, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %22 = call i32 %20(%struct.snd_pcm_substream* %21)
  br label %23

23:                                               ; preds = %17, %9
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @snd_pcm_stream_lock_irqsave(%struct.snd_pcm_substream* %24, i64 %25)
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %28 = call i32 @snd_pcm_running(%struct.snd_pcm_substream* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %32 = call i64 @snd_pcm_update_hw_ptr0(%struct.snd_pcm_substream* %31, i32 1)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %23
  br label %46

35:                                               ; preds = %30
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @snd_timer_interrupt(i32 %43, i32 1)
  br label %45

45:                                               ; preds = %40, %35
  br label %46

46:                                               ; preds = %45, %34
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @snd_pcm_stream_unlock_irqrestore(%struct.snd_pcm_substream* %47, i64 %48)
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 1
  %52 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %51, align 8
  %53 = icmp ne i32 (%struct.snd_pcm_substream*)* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %55, i32 0, i32 1
  %57 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %56, align 8
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %59 = call i32 %57(%struct.snd_pcm_substream* %58)
  br label %60

60:                                               ; preds = %54, %46
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 0
  %63 = load i32, i32* @SIGIO, align 4
  %64 = load i32, i32* @POLL_IN, align 4
  %65 = call i32 @kill_fasync(i32* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %8
  ret void
}

declare dso_local i64 @PCM_RUNTIME_CHECK(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_stream_lock_irqsave(%struct.snd_pcm_substream*, i64) #1

declare dso_local i32 @snd_pcm_running(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_pcm_update_hw_ptr0(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_timer_interrupt(i32, i32) #1

declare dso_local i32 @snd_pcm_stream_unlock_irqrestore(%struct.snd_pcm_substream*, i64) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
