; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ews.c_ewx_i2c_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ews.c_ewx_i2c_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_i2c_bus = type { %struct.snd_ice1712* }
%struct.snd_ice1712 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ICE1712_EWX2496_RW = common dso_local global i8 0, align 1
@ICE1712_EWX2496_AK4524_CS = common dso_local global i8 0, align 1
@ICE1712_6FIRE_AK4524_CS_MASK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_i2c_bus*)* @ewx_i2c_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ewx_i2c_start(%struct.snd_i2c_bus* %0) #0 {
  %2 = alloca %struct.snd_i2c_bus*, align 8
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i8, align 1
  store %struct.snd_i2c_bus* %0, %struct.snd_i2c_bus** %2, align 8
  %5 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %2, align 8
  %6 = getelementptr inbounds %struct.snd_i2c_bus, %struct.snd_i2c_bus* %5, i32 0, i32 0
  %7 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  store %struct.snd_ice1712* %7, %struct.snd_ice1712** %3, align 8
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %9 = call i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712* %8)
  %10 = load i8, i8* @ICE1712_EWX2496_RW, align 1
  store i8 %10, i8* %4, align 1
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %29 [
    i32 128, label %15
    i32 129, label %22
  ]

15:                                               ; preds = %1
  %16 = load i8, i8* @ICE1712_EWX2496_AK4524_CS, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* %4, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %19, %17
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %4, align 1
  br label %29

22:                                               ; preds = %1
  %23 = load i8, i8* @ICE1712_6FIRE_AK4524_CS_MASK, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* %4, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %26, %24
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %4, align 1
  br label %29

29:                                               ; preds = %1, %22, %15
  %30 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %31 = load i8, i8* %4, align 1
  %32 = load i8, i8* %4, align 1
  %33 = call i32 @snd_ice1712_gpio_write_bits(%struct.snd_ice1712* %30, i8 zeroext %31, i8 zeroext %32)
  ret void
}

declare dso_local i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_gpio_write_bits(%struct.snd_ice1712*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
