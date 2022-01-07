; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_stdclock_set_spdif_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_stdclock_set_spdif_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@RATE = common dso_local global i32 0, align 4
@VT1724_SPDIF_MASTER = common dso_local global i8 0, align 1
@I2S_FORMAT = common dso_local global i32 0, align 4
@VT1724_MT_I2S_MCLK_128X = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*)* @stdclock_set_spdif_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stdclock_set_spdif_clock(%struct.snd_ice1712* %0) #0 {
  %2 = alloca %struct.snd_ice1712*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %2, align 8
  %5 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %6 = load i32, i32* @RATE, align 4
  %7 = call i32 @ICEMT1724(%struct.snd_ice1712* %5, i32 %6)
  %8 = call zeroext i8 @inb(i32 %7)
  store i8 %8, i8* %3, align 1
  %9 = load i8, i8* %3, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* @VT1724_SPDIF_MASTER, align 1
  %12 = zext i8 %11 to i32
  %13 = or i32 %10, %12
  %14 = trunc i32 %13 to i8
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %16 = load i32, i32* @RATE, align 4
  %17 = call i32 @ICEMT1724(%struct.snd_ice1712* %15, i32 %16)
  %18 = call i32 @outb(i8 zeroext %14, i32 %17)
  %19 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %20 = load i32, i32* @I2S_FORMAT, align 4
  %21 = call i32 @ICEMT1724(%struct.snd_ice1712* %19, i32 %20)
  %22 = call zeroext i8 @inb(i32 %21)
  store i8 %22, i8* %4, align 1
  %23 = load i8, i8* %4, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @VT1724_MT_I2S_MCLK_128X, align 1
  %26 = zext i8 %25 to i32
  %27 = xor i32 %26, -1
  %28 = and i32 %24, %27
  %29 = trunc i32 %28 to i8
  %30 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %31 = load i32, i32* @I2S_FORMAT, align 4
  %32 = call i32 @ICEMT1724(%struct.snd_ice1712* %30, i32 %31)
  %33 = call i32 @outb(i8 zeroext %29, i32 %32)
  ret void
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @ICEMT1724(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
