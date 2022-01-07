; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_user_copy_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_user_copy_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer_id = type { i32, i32, i32, i32, i32 }
%struct.snd_timer = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SNDRV_TIMER_SCLASS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_timer_id*, %struct.snd_timer*)* @snd_timer_user_copy_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_timer_user_copy_id(%struct.snd_timer_id* %0, %struct.snd_timer* %1) #0 {
  %3 = alloca %struct.snd_timer_id*, align 8
  %4 = alloca %struct.snd_timer*, align 8
  store %struct.snd_timer_id* %0, %struct.snd_timer_id** %3, align 8
  store %struct.snd_timer* %1, %struct.snd_timer** %4, align 8
  %5 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %6 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.snd_timer_id*, %struct.snd_timer_id** %3, align 8
  %9 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @SNDRV_TIMER_SCLASS_NONE, align 4
  %11 = load %struct.snd_timer_id*, %struct.snd_timer_id** %3, align 8
  %12 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %14 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %19 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %17
  %25 = phi i32 [ %22, %17 ], [ -1, %23 ]
  %26 = load %struct.snd_timer_id*, %struct.snd_timer_id** %3, align 8
  %27 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %29 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_timer_id*, %struct.snd_timer_id** %3, align 8
  %32 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %34 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.snd_timer_id*, %struct.snd_timer_id** %3, align 8
  %37 = getelementptr inbounds %struct.snd_timer_id, %struct.snd_timer_id* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
