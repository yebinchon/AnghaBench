; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_set_play_sample_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_set_play_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 }

@GOF_PER_SEC = common dso_local global i32 0, align 4
@BA1_PSRC = common dso_local global i32 0, align 4
@BA1_PPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs46xx*, i32)* @snd_cs46xx_set_play_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs46xx_set_play_sample_rate(%struct.snd_cs46xx* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = shl i32 %11, 16
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = udiv i32 %13, 48000
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = mul i32 %15, 48000
  %17 = load i32, i32* %6, align 4
  %18 = sub i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 %19, 10
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %8, align 4
  %22 = shl i32 %21, 10
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = udiv i32 %23, 48000
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = mul i32 %28, 48000
  %30 = load i32, i32* %6, align 4
  %31 = sub i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @GOF_PER_SEC, align 4
  %34 = udiv i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @GOF_PER_SEC, align 4
  %37 = mul i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = sub i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %10, align 4
  %41 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %42 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %41, i32 0, i32 0
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %46 = load i32, i32* @BA1_PSRC, align 4
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 %47, 16
  %49 = and i32 %48, -65536
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 65535
  %52 = or i32 %49, %51
  %53 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %45, i32 %46, i32 %52)
  %54 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %55 = load i32, i32* @BA1_PPI, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %54, i32 %55, i32 %56)
  %58 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %59 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %58, i32 0, i32 0
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_cs46xx_poke(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
