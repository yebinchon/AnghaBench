; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_pontis.c_spi_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_pontis.c_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PONTIS_CS_CS = common dso_local global i32 0, align 4
@PONTIS_CS_WDATA = common dso_local global i32 0, align 4
@PONTIS_CS_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32, i32, i32)* @spi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_write(%struct.snd_ice1712* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %10 = load i32, i32* @PONTIS_CS_CS, align 4
  %11 = load i32, i32* @PONTIS_CS_WDATA, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PONTIS_CS_CLK, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @snd_ice1712_gpio_set_dir(%struct.snd_ice1712* %9, i32 %14)
  %16 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %17 = load i32, i32* @PONTIS_CS_CS, align 4
  %18 = load i32, i32* @PONTIS_CS_WDATA, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @PONTIS_CS_CLK, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = call i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712* %16, i32 %22)
  %24 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %25 = load i32, i32* @PONTIS_CS_CS, align 4
  %26 = call i32 @set_gpio_bit(%struct.snd_ice1712* %24, i32 %25, i32 0)
  %27 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, -2
  %30 = call i32 @spi_send_byte(%struct.snd_ice1712* %27, i32 %29)
  %31 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @spi_send_byte(%struct.snd_ice1712* %31, i32 %32)
  %34 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @spi_send_byte(%struct.snd_ice1712* %34, i32 %35)
  %37 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %38 = load i32, i32* @PONTIS_CS_CS, align 4
  %39 = call i32 @set_gpio_bit(%struct.snd_ice1712* %37, i32 %38, i32 1)
  %40 = call i32 @udelay(i32 1)
  %41 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %42 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %43 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712* %41, i32 %45)
  %47 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %48 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %49 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @snd_ice1712_gpio_set_dir(%struct.snd_ice1712* %47, i32 %51)
  ret void
}

declare dso_local i32 @snd_ice1712_gpio_set_dir(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @set_gpio_bit(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @spi_send_byte(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
