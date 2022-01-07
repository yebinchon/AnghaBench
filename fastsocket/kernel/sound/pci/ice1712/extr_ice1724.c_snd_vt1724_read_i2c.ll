; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_read_i2c.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_read_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@I2C_BYTE_ADDR = common dso_local global i32 0, align 4
@VT1724_I2C_WRITE = common dso_local global i8 0, align 1
@I2C_DEV_ADDR = common dso_local global i32 0, align 4
@I2C_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @snd_vt1724_read_i2c(%struct.snd_ice1712* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %12 = call i32 @wait_i2c_busy(%struct.snd_ice1712* %11)
  %13 = load i8, i8* %6, align 1
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %15 = load i32, i32* @I2C_BYTE_ADDR, align 4
  %16 = call i32 @ICEREG1724(%struct.snd_ice1712* %14, i32 %15)
  %17 = call i32 @outb(i8 zeroext %13, i32 %16)
  %18 = load i8, i8* %5, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @VT1724_I2C_WRITE, align 1
  %21 = zext i8 %20 to i32
  %22 = xor i32 %21, -1
  %23 = and i32 %19, %22
  %24 = trunc i32 %23 to i8
  %25 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %26 = load i32, i32* @I2C_DEV_ADDR, align 4
  %27 = call i32 @ICEREG1724(%struct.snd_ice1712* %25, i32 %26)
  %28 = call i32 @outb(i8 zeroext %24, i32 %27)
  %29 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %30 = call i32 @wait_i2c_busy(%struct.snd_ice1712* %29)
  %31 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %32 = load i32, i32* @I2C_DATA, align 4
  %33 = call i32 @ICEREG1724(%struct.snd_ice1712* %31, i32 %32)
  %34 = call zeroext i8 @inb(i32 %33)
  store i8 %34, i8* %7, align 1
  %35 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i8, i8* %7, align 1
  ret i8 %38
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wait_i2c_busy(%struct.snd_ice1712*) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @ICEREG1724(%struct.snd_ice1712*, i32) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
