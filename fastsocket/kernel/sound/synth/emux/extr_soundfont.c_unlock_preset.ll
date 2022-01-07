; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_soundfont.c_unlock_preset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_soundfont.c_unlock_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sf_list = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_sf_list*)* @unlock_preset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlock_preset(%struct.snd_sf_list* %0) #0 {
  %2 = alloca %struct.snd_sf_list*, align 8
  %3 = alloca i64, align 8
  store %struct.snd_sf_list* %0, %struct.snd_sf_list** %2, align 8
  %4 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %5 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %4, i32 0, i32 1
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %9 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %11 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %10, i32 0, i32 1
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_unlock_irqrestore(i32* %11, i64 %12)
  %14 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %15 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %14, i32 0, i32 0
  %16 = call i32 @mutex_unlock(i32* %15)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
