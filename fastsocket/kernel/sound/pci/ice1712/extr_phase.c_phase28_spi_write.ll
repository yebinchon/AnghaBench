; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_phase.c_phase28_spi_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_phase.c_phase28_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@PHASE28_WM_RW = common dso_local global i32 0, align 4
@PHASE28_SPI_MOSI = common dso_local global i32 0, align 4
@PHASE28_SPI_CLK = common dso_local global i32 0, align 4
@PHASE28_WM_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32, i32, i32)* @phase28_spi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phase28_spi_write(%struct.snd_ice1712* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %12 = call i32 @snd_ice1712_gpio_read(%struct.snd_ice1712* %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %14 = load i32, i32* @PHASE28_WM_RW, align 4
  %15 = load i32, i32* @PHASE28_SPI_MOSI, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PHASE28_SPI_CLK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PHASE28_WM_CS, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = call i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712* %13, i32 %21)
  %23 = load i32, i32* @PHASE28_WM_RW, align 4
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %30, i32 %31)
  %33 = call i32 @udelay(i32 1)
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %74, %4
  %37 = load i32, i32* %10, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %77

39:                                               ; preds = %36
  %40 = load i32, i32* @PHASE28_SPI_CLK, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %44, i32 %45)
  %47 = call i32 @udelay(i32 1)
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %10, align 4
  %50 = shl i32 1, %49
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %39
  %54 = load i32, i32* @PHASE28_SPI_MOSI, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %62

57:                                               ; preds = %39
  %58 = load i32, i32* @PHASE28_SPI_MOSI, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %57, %53
  %63 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %63, i32 %64)
  %66 = call i32 @udelay(i32 1)
  %67 = load i32, i32* @PHASE28_SPI_CLK, align 4
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %9, align 4
  %70 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %70, i32 %71)
  %73 = call i32 @udelay(i32 1)
  br label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %10, align 4
  br label %36

77:                                               ; preds = %36
  %78 = load i32, i32* @PHASE28_SPI_CLK, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  %85 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %85, i32 %86)
  %88 = call i32 @udelay(i32 1)
  %89 = load i32, i32* @PHASE28_SPI_CLK, align 4
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  %92 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @snd_ice1712_gpio_write(%struct.snd_ice1712* %92, i32 %93)
  %95 = call i32 @udelay(i32 1)
  ret void
}

declare dso_local i32 @snd_ice1712_gpio_read(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_gpio_write(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
