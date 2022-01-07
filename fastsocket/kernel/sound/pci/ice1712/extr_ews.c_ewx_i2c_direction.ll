; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ews.c_ewx_i2c_direction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ews.c_ewx_i2c_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_i2c_bus = type { %struct.snd_ice1712* }
%struct.snd_ice1712 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8 }

@ICE1712_EWX2496_SERIAL_CLOCK = common dso_local global i8 0, align 1
@ICE1712_EWX2496_SERIAL_DATA = common dso_local global i8 0, align 1
@ICE1712_IREG_GPIO_DIRECTION = common dso_local global i32 0, align 4
@ICE1712_IREG_GPIO_WRITE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_i2c_bus*, i32, i32)* @ewx_i2c_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ewx_i2c_direction(%struct.snd_i2c_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_i2c_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_ice1712*, align 8
  %8 = alloca i8, align 1
  store %struct.snd_i2c_bus* %0, %struct.snd_i2c_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %4, align 8
  %10 = getelementptr inbounds %struct.snd_i2c_bus, %struct.snd_i2c_bus* %9, i32 0, i32 0
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %10, align 8
  store %struct.snd_ice1712* %11, %struct.snd_ice1712** %7, align 8
  store i8 0, i8* %8, align 1
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i8, i8* @ICE1712_EWX2496_SERIAL_CLOCK, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* %8, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %18, %16
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %8, align 1
  br label %21

21:                                               ; preds = %14, %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i8, i8* @ICE1712_EWX2496_SERIAL_DATA, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* %8, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, %26
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %8, align 1
  br label %31

31:                                               ; preds = %24, %21
  %32 = load i8, i8* @ICE1712_EWX2496_SERIAL_CLOCK, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @ICE1712_EWX2496_SERIAL_DATA, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %33, %35
  %37 = xor i32 %36, -1
  %38 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %39 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, %37
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %40, align 1
  %45 = load i8, i8* %8, align 1
  %46 = zext i8 %45 to i32
  %47 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %48 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %51, %46
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %49, align 1
  %54 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %55 = load i32, i32* @ICE1712_IREG_GPIO_DIRECTION, align 4
  %56 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %57 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 1
  %60 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %54, i32 %55, i8 zeroext %59)
  %61 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %62 = load i32, i32* @ICE1712_IREG_GPIO_WRITE_MASK, align 4
  %63 = load i8, i8* %8, align 1
  %64 = zext i8 %63 to i32
  %65 = xor i32 %64, -1
  %66 = trunc i32 %65 to i8
  %67 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %61, i32 %62, i8 zeroext %66)
  ret void
}

declare dso_local i32 @snd_ice1712_write(%struct.snd_ice1712*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
