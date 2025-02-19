; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cttimer.c_ct_systimer_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cttimer.c_ct_systimer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_timer_instance = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ct_timer_instance*)* @ct_systimer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ct_systimer_start(%struct.ct_timer_instance* %0) #0 {
  %2 = alloca %struct.ct_timer_instance*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca i64, align 8
  store %struct.ct_timer_instance* %0, %struct.ct_timer_instance** %2, align 8
  %5 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %2, align 8
  %6 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %3, align 8
  %10 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %2, align 8
  %11 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %10, i32 0, i32 1
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %2, align 8
  %15 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %2, align 8
  %17 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %16, i32 0, i32 2
  %18 = load i64, i64* @jiffies, align 8
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HZ, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = add nsw i32 %23, %27
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %28, %31
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %18, %33
  %35 = call i32 @mod_timer(i32* %17, i64 %34)
  %36 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %2, align 8
  %37 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %36, i32 0, i32 1
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
