; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k2.c_hw_adc_input_select.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k2.c_hw_adc_input_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }

@GPIO_DATA = common dso_local global i32 0, align 4
@WM8775_ADCMC = common dso_local global i32 0, align 4
@WM8775_AADCL = common dso_local global i32 0, align 4
@WM8775_AADCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i32)* @hw_adc_input_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_adc_input_select(%struct.hw* %0, i32 %1) #0 {
  %3 = alloca %struct.hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hw*, %struct.hw** %3, align 8
  %7 = load i32, i32* @GPIO_DATA, align 4
  %8 = call i32 @hw_read_20kx(%struct.hw* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %54 [
    i32 128, label %10
    i32 129, label %32
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, 16384
  store i32 %12, i32* %5, align 4
  %13 = load %struct.hw*, %struct.hw** %3, align 8
  %14 = load i32, i32* @GPIO_DATA, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @hw_write_20kx(%struct.hw* %13, i32 %14, i32 %15)
  %17 = load %struct.hw*, %struct.hw** %3, align 8
  %18 = load i32, i32* @WM8775_ADCMC, align 4
  %19 = call i32 @MAKE_WM8775_ADDR(i32 %18, i32 257)
  %20 = call i32 @MAKE_WM8775_DATA(i32 257)
  %21 = call i32 @hw20k2_i2c_write(%struct.hw* %17, i32 %19, i32 %20)
  %22 = load %struct.hw*, %struct.hw** %3, align 8
  %23 = load i32, i32* @WM8775_AADCL, align 4
  %24 = call i32 @MAKE_WM8775_ADDR(i32 %23, i32 231)
  %25 = call i32 @MAKE_WM8775_DATA(i32 231)
  %26 = call i32 @hw20k2_i2c_write(%struct.hw* %22, i32 %24, i32 %25)
  %27 = load %struct.hw*, %struct.hw** %3, align 8
  %28 = load i32, i32* @WM8775_AADCR, align 4
  %29 = call i32 @MAKE_WM8775_ADDR(i32 %28, i32 231)
  %30 = call i32 @MAKE_WM8775_DATA(i32 231)
  %31 = call i32 @hw20k2_i2c_write(%struct.hw* %27, i32 %29, i32 %30)
  br label %55

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, -16385
  store i32 %34, i32* %5, align 4
  %35 = load %struct.hw*, %struct.hw** %3, align 8
  %36 = load i32, i32* @GPIO_DATA, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @hw_write_20kx(%struct.hw* %35, i32 %36, i32 %37)
  %39 = load %struct.hw*, %struct.hw** %3, align 8
  %40 = load i32, i32* @WM8775_ADCMC, align 4
  %41 = call i32 @MAKE_WM8775_ADDR(i32 %40, i32 258)
  %42 = call i32 @MAKE_WM8775_DATA(i32 258)
  %43 = call i32 @hw20k2_i2c_write(%struct.hw* %39, i32 %41, i32 %42)
  %44 = load %struct.hw*, %struct.hw** %3, align 8
  %45 = load i32, i32* @WM8775_AADCL, align 4
  %46 = call i32 @MAKE_WM8775_ADDR(i32 %45, i32 207)
  %47 = call i32 @MAKE_WM8775_DATA(i32 207)
  %48 = call i32 @hw20k2_i2c_write(%struct.hw* %44, i32 %46, i32 %47)
  %49 = load %struct.hw*, %struct.hw** %3, align 8
  %50 = load i32, i32* @WM8775_AADCR, align 4
  %51 = call i32 @MAKE_WM8775_ADDR(i32 %50, i32 207)
  %52 = call i32 @MAKE_WM8775_DATA(i32 207)
  %53 = call i32 @hw20k2_i2c_write(%struct.hw* %49, i32 %51, i32 %52)
  br label %55

54:                                               ; preds = %2
  br label %55

55:                                               ; preds = %54, %32, %10
  ret i32 0
}

declare dso_local i32 @hw_read_20kx(%struct.hw*, i32) #1

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #1

declare dso_local i32 @hw20k2_i2c_write(%struct.hw*, i32, i32) #1

declare dso_local i32 @MAKE_WM8775_ADDR(i32, i32) #1

declare dso_local i32 @MAKE_WM8775_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
