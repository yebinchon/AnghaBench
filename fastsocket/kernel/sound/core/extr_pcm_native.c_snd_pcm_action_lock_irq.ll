; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_action_lock_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_action_lock_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.action_ops = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@snd_pcm_link_rwlock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.action_ops*, %struct.snd_pcm_substream*, i32)* @snd_pcm_action_lock_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_action_lock_irq(%struct.action_ops* %0, %struct.snd_pcm_substream* %1, i32 %2) #0 {
  %4 = alloca %struct.action_ops*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.action_ops* %0, %struct.action_ops** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @read_lock_irq(i32* @snd_pcm_link_rwlock)
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %10 = call i64 @snd_pcm_stream_linked(%struct.snd_pcm_substream* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %3
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.action_ops*, %struct.action_ops** %4, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @snd_pcm_action_group(%struct.action_ops* %22, %struct.snd_pcm_substream* %23, i32 %24, i32 1)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  br label %48

35:                                               ; preds = %3
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.action_ops*, %struct.action_ops** %4, align 8
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @snd_pcm_action_single(%struct.action_ops* %40, %struct.snd_pcm_substream* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  br label %48

48:                                               ; preds = %35, %12
  %49 = call i32 @read_unlock_irq(i32* @snd_pcm_link_rwlock)
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @read_lock_irq(i32*) #1

declare dso_local i64 @snd_pcm_stream_linked(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_pcm_action_group(%struct.action_ops*, %struct.snd_pcm_substream*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_action_single(%struct.action_ops*, %struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @read_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
