; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_write_i2c.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_write_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@I2C_BYTE_ADDR = common dso_local global i32 0, align 4
@I2C_DATA = common dso_local global i32 0, align 4
@VT1724_I2C_WRITE = common dso_local global i8 0, align 1
@I2C_DEV_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_vt1724_write_i2c(%struct.snd_ice1712* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %10 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %13 = call i32 @wait_i2c_busy(%struct.snd_ice1712* %12)
  %14 = load i8, i8* %7, align 1
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %16 = load i32, i32* @I2C_BYTE_ADDR, align 4
  %17 = call i32 @ICEREG1724(%struct.snd_ice1712* %15, i32 %16)
  %18 = call i32 @outb(i8 zeroext %14, i32 %17)
  %19 = load i8, i8* %8, align 1
  %20 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %21 = load i32, i32* @I2C_DATA, align 4
  %22 = call i32 @ICEREG1724(%struct.snd_ice1712* %20, i32 %21)
  %23 = call i32 @outb(i8 zeroext %19, i32 %22)
  %24 = load i8, i8* %6, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @VT1724_I2C_WRITE, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %25, %27
  %29 = trunc i32 %28 to i8
  %30 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %31 = load i32, i32* @I2C_DEV_ADDR, align 4
  %32 = call i32 @ICEREG1724(%struct.snd_ice1712* %30, i32 %31)
  %33 = call i32 @outb(i8 zeroext %29, i32 %32)
  %34 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %35 = call i32 @wait_i2c_busy(%struct.snd_ice1712* %34)
  %36 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %37 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wait_i2c_busy(%struct.snd_ice1712*) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @ICEREG1724(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
