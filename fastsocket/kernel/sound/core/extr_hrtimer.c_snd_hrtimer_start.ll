; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_hrtimer.c_snd_hrtimer_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_hrtimer.c_snd_hrtimer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer = type { i32, %struct.snd_hrtimer* }
%struct.snd_hrtimer = type { i32, i32 }

@resolution = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_timer*)* @snd_hrtimer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hrtimer_start(%struct.snd_timer* %0) #0 {
  %2 = alloca %struct.snd_timer*, align 8
  %3 = alloca %struct.snd_hrtimer*, align 8
  store %struct.snd_timer* %0, %struct.snd_timer** %2, align 8
  %4 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %5 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %4, i32 0, i32 1
  %6 = load %struct.snd_hrtimer*, %struct.snd_hrtimer** %5, align 8
  store %struct.snd_hrtimer* %6, %struct.snd_hrtimer** %3, align 8
  %7 = load %struct.snd_hrtimer*, %struct.snd_hrtimer** %3, align 8
  %8 = getelementptr inbounds %struct.snd_hrtimer, %struct.snd_hrtimer* %7, i32 0, i32 0
  %9 = call i32 @atomic_set(i32* %8, i32 0)
  %10 = load %struct.snd_hrtimer*, %struct.snd_hrtimer** %3, align 8
  %11 = getelementptr inbounds %struct.snd_hrtimer, %struct.snd_hrtimer* %10, i32 0, i32 1
  %12 = call i32 @hrtimer_cancel(i32* %11)
  %13 = load %struct.snd_hrtimer*, %struct.snd_hrtimer** %3, align 8
  %14 = getelementptr inbounds %struct.snd_hrtimer, %struct.snd_hrtimer* %13, i32 0, i32 1
  %15 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %16 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @resolution, align 4
  %19 = mul nsw i32 %17, %18
  %20 = call i32 @ns_to_ktime(i32 %19)
  %21 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %22 = call i32 @hrtimer_start(i32* %14, i32 %20, i32 %21)
  %23 = load %struct.snd_hrtimer*, %struct.snd_hrtimer** %3, align 8
  %24 = getelementptr inbounds %struct.snd_hrtimer, %struct.snd_hrtimer* %23, i32 0, i32 0
  %25 = call i32 @atomic_set(i32* %24, i32 1)
  ret i32 0
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
