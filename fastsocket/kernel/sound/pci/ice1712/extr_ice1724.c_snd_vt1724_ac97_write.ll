; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_ac97_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_ac97_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i8, %struct.snd_ice1712* }
%struct.snd_ice1712 = type { i32 }

@VT1724_AC97_ID_MASK = common dso_local global i8 0, align 1
@AC97_INDEX = common dso_local global i32 0, align 4
@AC97_DATA = common dso_local global i32 0, align 4
@VT1724_AC97_WRITE = common dso_local global i8 0, align 1
@AC97_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @snd_vt1724_ac97_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_vt1724_ac97_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.snd_ice1712*, align 8
  %8 = alloca i8, align 1
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %9, i32 0, i32 1
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %10, align 8
  store %struct.snd_ice1712* %11, %struct.snd_ice1712** %7, align 8
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %13 = call zeroext i8 @snd_vt1724_ac97_ready(%struct.snd_ice1712* %12)
  store i8 %13, i8* %8, align 1
  %14 = load i8, i8* @VT1724_AC97_ID_MASK, align 1
  %15 = zext i8 %14 to i32
  %16 = xor i32 %15, -1
  %17 = load i8, i8* %8, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, %16
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %8, align 1
  %21 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %22 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 8
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* %8, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %26, %24
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %8, align 1
  %29 = load i16, i16* %5, align 2
  %30 = trunc i16 %29 to i8
  %31 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %32 = load i32, i32* @AC97_INDEX, align 4
  %33 = call i32 @ICEMT1724(%struct.snd_ice1712* %31, i32 %32)
  %34 = call i32 @outb(i8 zeroext %30, i32 %33)
  %35 = load i16, i16* %6, align 2
  %36 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %37 = load i32, i32* @AC97_DATA, align 4
  %38 = call i32 @ICEMT1724(%struct.snd_ice1712* %36, i32 %37)
  %39 = call i32 @outw(i16 zeroext %35, i32 %38)
  %40 = load i8, i8* %8, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @VT1724_AC97_WRITE, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %41, %43
  %45 = trunc i32 %44 to i8
  %46 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %47 = load i32, i32* @AC97_CMD, align 4
  %48 = call i32 @ICEMT1724(%struct.snd_ice1712* %46, i32 %47)
  %49 = call i32 @outb(i8 zeroext %45, i32 %48)
  %50 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %51 = load i8, i8* @VT1724_AC97_WRITE, align 1
  %52 = call i32 @snd_vt1724_ac97_wait_bit(%struct.snd_ice1712* %50, i8 zeroext %51)
  ret void
}

declare dso_local zeroext i8 @snd_vt1724_ac97_ready(%struct.snd_ice1712*) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @ICEMT1724(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @outw(i16 zeroext, i32) #1

declare dso_local i32 @snd_vt1724_ac97_wait_bit(%struct.snd_ice1712*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
