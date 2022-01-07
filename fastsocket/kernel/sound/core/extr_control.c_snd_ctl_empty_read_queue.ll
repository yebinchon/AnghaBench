; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_control.c_snd_ctl_empty_read_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_control.c_snd_ctl_empty_read_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ctl_file = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.snd_kctl_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ctl_file*)* @snd_ctl_empty_read_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ctl_empty_read_queue(%struct.snd_ctl_file* %0) #0 {
  %2 = alloca %struct.snd_ctl_file*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_kctl_event*, align 8
  store %struct.snd_ctl_file* %0, %struct.snd_ctl_file** %2, align 8
  %5 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %2, align 8
  %6 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  br label %9

9:                                                ; preds = %15, %1
  %10 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %2, align 8
  %11 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %10, i32 0, i32 1
  %12 = call i32 @list_empty(%struct.TYPE_2__* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %2, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.snd_kctl_event* @snd_kctl_event(i32 %19)
  store %struct.snd_kctl_event* %20, %struct.snd_kctl_event** %4, align 8
  %21 = load %struct.snd_kctl_event*, %struct.snd_kctl_event** %4, align 8
  %22 = getelementptr inbounds %struct.snd_kctl_event, %struct.snd_kctl_event* %21, i32 0, i32 0
  %23 = call i32 @list_del(i32* %22)
  %24 = load %struct.snd_kctl_event*, %struct.snd_kctl_event** %4, align 8
  %25 = call i32 @kfree(%struct.snd_kctl_event* %24)
  br label %9

26:                                               ; preds = %9
  %27 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %2, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %27, i32 0, i32 0
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(%struct.TYPE_2__*) #1

declare dso_local %struct.snd_kctl_event* @snd_kctl_event(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.snd_kctl_event*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
