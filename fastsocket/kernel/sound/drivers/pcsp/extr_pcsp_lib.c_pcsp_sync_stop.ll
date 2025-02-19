; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/pcsp/extr_pcsp_lib.c_pcsp_sync_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/pcsp/extr_pcsp_lib.c_pcsp_sync_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcsp = type { i32 }

@pcsp_pcm_tasklet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcsp_sync_stop(%struct.snd_pcsp* %0) #0 {
  %2 = alloca %struct.snd_pcsp*, align 8
  store %struct.snd_pcsp* %0, %struct.snd_pcsp** %2, align 8
  %3 = call i32 (...) @local_irq_disable()
  %4 = load %struct.snd_pcsp*, %struct.snd_pcsp** %2, align 8
  %5 = call i32 @pcsp_stop_playing(%struct.snd_pcsp* %4)
  %6 = call i32 (...) @local_irq_enable()
  %7 = load %struct.snd_pcsp*, %struct.snd_pcsp** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %7, i32 0, i32 0
  %9 = call i32 @hrtimer_cancel(i32* %8)
  %10 = call i32 @tasklet_kill(i32* @pcsp_pcm_tasklet)
  ret void
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @pcsp_stop_playing(%struct.snd_pcsp*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
