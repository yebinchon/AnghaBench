; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_sscape.c_sscape_hw_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_sscape.c_sscape_hw_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hwdep = type { i32 }
%struct.file = type { i32 }
%struct.soundscape = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_hwdep*, %struct.file*)* @sscape_hw_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sscape_hw_release(%struct.snd_hwdep* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.snd_hwdep*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.soundscape*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_hwdep* %0, %struct.snd_hwdep** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.snd_hwdep*, %struct.snd_hwdep** %3, align 8
  %8 = call %struct.soundscape* @get_hwdep_soundscape(%struct.snd_hwdep* %7)
  store %struct.soundscape* %8, %struct.soundscape** %5, align 8
  %9 = load %struct.soundscape*, %struct.soundscape** %5, align 8
  %10 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.soundscape*, %struct.soundscape** %5, align 8
  %14 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.soundscape*, %struct.soundscape** %5, align 8
  %16 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  ret i32 0
}

declare dso_local %struct.soundscape* @get_hwdep_soundscape(%struct.snd_hwdep*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
