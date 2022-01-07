; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_dummy.c_dummy_systimer_rearm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_dummy.c_dummy_systimer_rearm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy_systimer_pcm = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dummy_systimer_pcm*)* @dummy_systimer_rearm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dummy_systimer_rearm(%struct.dummy_systimer_pcm* %0) #0 {
  %2 = alloca %struct.dummy_systimer_pcm*, align 8
  store %struct.dummy_systimer_pcm* %0, %struct.dummy_systimer_pcm** %2, align 8
  %3 = load i64, i64* @jiffies, align 8
  %4 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %2, align 8
  %5 = getelementptr inbounds %struct.dummy_systimer_pcm, %struct.dummy_systimer_pcm* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %2, align 8
  %8 = getelementptr inbounds %struct.dummy_systimer_pcm, %struct.dummy_systimer_pcm* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %6, %9
  %11 = sub nsw i32 %10, 1
  %12 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %2, align 8
  %13 = getelementptr inbounds %struct.dummy_systimer_pcm, %struct.dummy_systimer_pcm* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %11, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %3, %16
  %18 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %2, align 8
  %19 = getelementptr inbounds %struct.dummy_systimer_pcm, %struct.dummy_systimer_pcm* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load %struct.dummy_systimer_pcm*, %struct.dummy_systimer_pcm** %2, align 8
  %22 = getelementptr inbounds %struct.dummy_systimer_pcm, %struct.dummy_systimer_pcm* %21, i32 0, i32 2
  %23 = call i32 @add_timer(%struct.TYPE_2__* %22)
  ret void
}

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
