; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_hrtimer.c_snd_hrtimer_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_hrtimer.c_snd_hrtimer_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer = type { %struct.snd_hrtimer* }
%struct.snd_hrtimer = type { i32, %struct.TYPE_2__, %struct.snd_timer* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@snd_hrtimer_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_timer*)* @snd_hrtimer_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hrtimer_open(%struct.snd_timer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_timer*, align 8
  %4 = alloca %struct.snd_hrtimer*, align 8
  store %struct.snd_timer* %0, %struct.snd_timer** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.snd_hrtimer* @kmalloc(i32 16, i32 %5)
  store %struct.snd_hrtimer* %6, %struct.snd_hrtimer** %4, align 8
  %7 = load %struct.snd_hrtimer*, %struct.snd_hrtimer** %4, align 8
  %8 = icmp ne %struct.snd_hrtimer* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.snd_hrtimer*, %struct.snd_hrtimer** %4, align 8
  %14 = getelementptr inbounds %struct.snd_hrtimer, %struct.snd_hrtimer* %13, i32 0, i32 1
  %15 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %16 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %17 = call i32 @hrtimer_init(%struct.TYPE_2__* %14, i32 %15, i32 %16)
  %18 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %19 = load %struct.snd_hrtimer*, %struct.snd_hrtimer** %4, align 8
  %20 = getelementptr inbounds %struct.snd_hrtimer, %struct.snd_hrtimer* %19, i32 0, i32 2
  store %struct.snd_timer* %18, %struct.snd_timer** %20, align 8
  %21 = load i32, i32* @snd_hrtimer_callback, align 4
  %22 = load %struct.snd_hrtimer*, %struct.snd_hrtimer** %4, align 8
  %23 = getelementptr inbounds %struct.snd_hrtimer, %struct.snd_hrtimer* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.snd_hrtimer*, %struct.snd_hrtimer** %4, align 8
  %26 = getelementptr inbounds %struct.snd_hrtimer, %struct.snd_hrtimer* %25, i32 0, i32 0
  %27 = call i32 @atomic_set(i32* %26, i32 0)
  %28 = load %struct.snd_hrtimer*, %struct.snd_hrtimer** %4, align 8
  %29 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %30 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %29, i32 0, i32 0
  store %struct.snd_hrtimer* %28, %struct.snd_hrtimer** %30, align 8
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %12, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.snd_hrtimer* @kmalloc(i32, i32) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
