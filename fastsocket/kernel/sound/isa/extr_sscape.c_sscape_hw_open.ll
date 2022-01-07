; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_sscape.c_sscape_hw_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_sscape.c_sscape_hw_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hwdep = type { i32 }
%struct.file = type { i32 }
%struct.soundscape = type { i64, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_hwdep*, %struct.file*)* @sscape_hw_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sscape_hw_open(%struct.snd_hwdep* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.snd_hwdep*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.soundscape*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.snd_hwdep* %0, %struct.snd_hwdep** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.snd_hwdep*, %struct.snd_hwdep** %3, align 8
  %9 = call %struct.soundscape* @get_hwdep_soundscape(%struct.snd_hwdep* %8)
  store %struct.soundscape* %9, %struct.soundscape** %5, align 8
  %10 = load %struct.soundscape*, %struct.soundscape** %5, align 8
  %11 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %10, i32 0, i32 2
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.soundscape*, %struct.soundscape** %5, align 8
  %15 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.soundscape*, %struct.soundscape** %5, align 8
  %20 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %2
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %29

26:                                               ; preds = %18
  %27 = load %struct.soundscape*, %struct.soundscape** %5, align 8
  %28 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %27, i32 0, i32 1
  store i32 1, i32* %28, align 8
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.soundscape*, %struct.soundscape** %5, align 8
  %31 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %30, i32 0, i32 2
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i32, i32* %7, align 4
  ret i32 %34
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
