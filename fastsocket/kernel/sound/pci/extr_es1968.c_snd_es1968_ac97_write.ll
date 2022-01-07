; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c_snd_es1968_ac97_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c_snd_es1968_ac97_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.es1968* }
%struct.es1968 = type { i32, i64 }

@ESM_AC97_DATA = common dso_local global i64 0, align 8
@ESM_AC97_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @snd_es1968_ac97_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1968_ac97_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.es1968*, align 8
  %8 = alloca i64, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %9, i32 0, i32 0
  %11 = load %struct.es1968*, %struct.es1968** %10, align 8
  store %struct.es1968* %11, %struct.es1968** %7, align 8
  %12 = load %struct.es1968*, %struct.es1968** %7, align 8
  %13 = call i32 @snd_es1968_ac97_wait(%struct.es1968* %12)
  %14 = load %struct.es1968*, %struct.es1968** %7, align 8
  %15 = getelementptr inbounds %struct.es1968, %struct.es1968* %14, i32 0, i32 0
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i16, i16* %6, align 2
  %19 = load %struct.es1968*, %struct.es1968** %7, align 8
  %20 = getelementptr inbounds %struct.es1968, %struct.es1968* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ESM_AC97_DATA, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outw(i16 zeroext %18, i64 %23)
  %25 = load i16, i16* %5, align 2
  %26 = load %struct.es1968*, %struct.es1968** %7, align 8
  %27 = getelementptr inbounds %struct.es1968, %struct.es1968* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ESM_AC97_INDEX, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outb(i16 zeroext %25, i64 %30)
  %32 = load %struct.es1968*, %struct.es1968** %7, align 8
  %33 = getelementptr inbounds %struct.es1968, %struct.es1968* %32, i32 0, i32 0
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  ret void
}

declare dso_local i32 @snd_es1968_ac97_wait(%struct.es1968*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local i32 @outb(i16 zeroext, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
