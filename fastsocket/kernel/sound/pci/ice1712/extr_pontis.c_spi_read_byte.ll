; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_pontis.c_spi_read_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_pontis.c_spi_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@PONTIS_CS_CLK = common dso_local global i32 0, align 4
@PONTIS_CS_RDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @spi_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_read_byte(%struct.snd_ice1712* %0) #0 {
  %2 = alloca %struct.snd_ice1712*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %32

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = shl i32 %9, 1
  store i32 %10, i32* %4, align 4
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %12 = load i32, i32* @PONTIS_CS_CLK, align 4
  %13 = call i32 @set_gpio_bit(%struct.snd_ice1712* %11, i32 %12, i32 0)
  %14 = call i32 @udelay(i32 1)
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %16 = call i32 @snd_ice1712_gpio_read(%struct.snd_ice1712* %15)
  %17 = load i32, i32* @PONTIS_CS_RDATA, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %8
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %20, %8
  %24 = call i32 @udelay(i32 1)
  %25 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %26 = load i32, i32* @PONTIS_CS_CLK, align 4
  %27 = call i32 @set_gpio_bit(%struct.snd_ice1712* %25, i32 %26, i32 1)
  %28 = call i32 @udelay(i32 1)
  br label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %5

32:                                               ; preds = %5
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @set_gpio_bit(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_ice1712_gpio_read(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
