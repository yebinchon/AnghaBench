; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/pcsp/extr_pcsp_lib.c_pcsp_call_pcm_elapsed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/pcsp/extr_pcsp_lib.c_pcsp_call_pcm_elapsed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.snd_pcm_substream*, i32 }
%struct.snd_pcm_substream = type { i32 }

@pcsp_chip = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @pcsp_call_pcm_elapsed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcsp_call_pcm_elapsed(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i64 @atomic_read(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcsp_chip, i32 0, i32 1))
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcsp_chip, i32 0, i32 0), align 8
  store %struct.snd_pcm_substream* %7, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = icmp ne %struct.snd_pcm_substream* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %11)
  br label %13

13:                                               ; preds = %10, %6
  br label %14

14:                                               ; preds = %13, %1
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
