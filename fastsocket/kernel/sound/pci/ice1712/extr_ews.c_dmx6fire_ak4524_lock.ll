; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ews.c_dmx6fire_ak4524_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ews.c_dmx6fire_ak4524_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_akm4xxx = type { %struct.snd_ice1712**, i64* }
%struct.snd_ice1712 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8 }
%struct.snd_ak4xxx_private = type { i8, i8 }

@ICE1712_6FIRE_AK4524_CS_MASK = common dso_local global i32 0, align 4
@ICE1712_6FIRE_SERIAL_DATA = common dso_local global i8 0, align 1
@ICE1712_6FIRE_SERIAL_CLOCK = common dso_local global i8 0, align 1
@ICE1712_6FIRE_RW = common dso_local global i8 0, align 1
@ICE1712_IREG_GPIO_DIRECTION = common dso_local global i32 0, align 4
@ICE1712_IREG_GPIO_WRITE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_akm4xxx*, i32)* @dmx6fire_ak4524_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmx6fire_ak4524_lock(%struct.snd_akm4xxx* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_akm4xxx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ak4xxx_private*, align 8
  %6 = alloca %struct.snd_ice1712*, align 8
  %7 = alloca i8, align 1
  store %struct.snd_akm4xxx* %0, %struct.snd_akm4xxx** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %9 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %8, i32 0, i32 1
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.snd_ak4xxx_private*
  store %struct.snd_ak4xxx_private* %14, %struct.snd_ak4xxx_private** %5, align 8
  %15 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %16 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %15, i32 0, i32 0
  %17 = load %struct.snd_ice1712**, %struct.snd_ice1712*** %16, align 8
  %18 = getelementptr inbounds %struct.snd_ice1712*, %struct.snd_ice1712** %17, i64 0
  %19 = load %struct.snd_ice1712*, %struct.snd_ice1712** %18, align 8
  store %struct.snd_ice1712* %19, %struct.snd_ice1712** %6, align 8
  %20 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %21 = call i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712* %20)
  %22 = load i32, i32* %4, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* @ICE1712_6FIRE_AK4524_CS_MASK, align 4
  %25 = and i32 %23, %24
  %26 = trunc i32 %25 to i8
  %27 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %5, align 8
  %28 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %27, i32 0, i32 1
  store i8 %26, i8* %28, align 1
  %29 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %5, align 8
  %30 = getelementptr inbounds %struct.snd_ak4xxx_private, %struct.snd_ak4xxx_private* %29, i32 0, i32 0
  store i8 %26, i8* %30, align 1
  store i8 %26, i8* %7, align 1
  %31 = load i8, i8* @ICE1712_6FIRE_SERIAL_DATA, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @ICE1712_6FIRE_SERIAL_CLOCK, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %32, %34
  %36 = load i8, i8* @ICE1712_6FIRE_RW, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %35, %37
  %39 = load i8, i8* %7, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %40, %38
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %7, align 1
  %43 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %44 = load i32, i32* @ICE1712_IREG_GPIO_DIRECTION, align 4
  %45 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %46 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* %7, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %49, %51
  %53 = trunc i32 %52 to i8
  %54 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %43, i32 %44, i8 zeroext %53)
  %55 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %56 = load i32, i32* @ICE1712_IREG_GPIO_WRITE_MASK, align 4
  %57 = load i8, i8* %7, align 1
  %58 = zext i8 %57 to i32
  %59 = xor i32 %58, -1
  %60 = trunc i32 %59 to i8
  %61 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %55, i32 %56, i8 zeroext %60)
  ret void
}

declare dso_local i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_write(%struct.snd_ice1712*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
