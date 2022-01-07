; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_seq.c_snd_opl3_synth_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_seq.c_snd_opl3_synth_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { %struct.snd_hwdep*, i32, i64, i32 }
%struct.snd_hwdep = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_opl3_synth_cleanup(%struct.snd_opl3* %0) #0 {
  %2 = alloca %struct.snd_opl3*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_hwdep*, align 8
  store %struct.snd_opl3* %0, %struct.snd_opl3** %2, align 8
  %5 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %6 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %5, i32 0, i32 1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %10 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %15 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %14, i32 0, i32 3
  %16 = call i32 @del_timer(i32* %15)
  %17 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %18 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %21 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %20, i32 0, i32 1
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %25 = call i32 @snd_opl3_reset(%struct.snd_opl3* %24)
  %26 = load %struct.snd_opl3*, %struct.snd_opl3** %2, align 8
  %27 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %26, i32 0, i32 0
  %28 = load %struct.snd_hwdep*, %struct.snd_hwdep** %27, align 8
  store %struct.snd_hwdep* %28, %struct.snd_hwdep** %4, align 8
  %29 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %30 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %33 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %37 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %40 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %39, i32 0, i32 0
  %41 = call i32 @wake_up(i32* %40)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_opl3_reset(%struct.snd_opl3*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
