; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_p16v.c_snd_p16v_intr_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_p16v.c_snd_p16v_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, i64 }

@INTE2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*, i32)* @snd_p16v_intr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_p16v_intr_enable(%struct.snd_emu10k1* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %8 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %12 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @INTE2, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @inl(i64 %15)
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %21 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INTE2, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @outl(i32 %19, i64 %24)
  %26 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %27 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %26, i32 0, i32 0
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
