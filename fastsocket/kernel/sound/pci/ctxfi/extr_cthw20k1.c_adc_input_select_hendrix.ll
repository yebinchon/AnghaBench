; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_adc_input_select_hendrix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_adc_input_select_hendrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }

@GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i32, i8)* @adc_input_select_hendrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc_input_select_hendrix(%struct.hw* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %11 = load %struct.hw*, %struct.hw** %5, align 8
  %12 = call i64 @i2c_unlock(%struct.hw* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %63

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %19, %15
  %17 = load %struct.hw*, %struct.hw** %5, align 8
  %18 = call i32 @hw_read_pci(%struct.hw* %17, i32 236)
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %10, align 4
  %21 = and i32 %20, 8388608
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %16, label %24

24:                                               ; preds = %19
  %25 = load %struct.hw*, %struct.hw** %5, align 8
  %26 = call i32 @hw_write_pci(%struct.hw* %25, i32 236, i32 5)
  %27 = load %struct.hw*, %struct.hw** %5, align 8
  %28 = load i32, i32* @GPIO, align 4
  %29 = call i32 @hw_read_20kx(%struct.hw* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %37 [
    i32 128, label %31
    i32 129, label %34
  ]

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, 128
  store i32 %33, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %40

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, -129
  store i32 %36, i32* %8, align 4
  store i32 2, i32* %9, align 4
  br label %40

37:                                               ; preds = %24
  %38 = load %struct.hw*, %struct.hw** %5, align 8
  %39 = call i32 @i2c_lock(%struct.hw* %38)
  store i32 -1, i32* %4, align 4
  br label %63

40:                                               ; preds = %34, %31
  %41 = load %struct.hw*, %struct.hw** %5, align 8
  %42 = load i32, i32* @GPIO, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @hw_write_20kx(%struct.hw* %41, i32 %42, i32 %43)
  %45 = load %struct.hw*, %struct.hw** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @i2c_write(%struct.hw* %45, i32 1704064, i32 42, i32 %46)
  %48 = load i8, i8* %7, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = load %struct.hw*, %struct.hw** %5, align 8
  %52 = call i32 @i2c_write(%struct.hw* %51, i32 1704064, i32 28, i32 231)
  %53 = load %struct.hw*, %struct.hw** %5, align 8
  %54 = call i32 @i2c_write(%struct.hw* %53, i32 1704064, i32 30, i32 231)
  br label %60

55:                                               ; preds = %40
  %56 = load %struct.hw*, %struct.hw** %5, align 8
  %57 = call i32 @i2c_write(%struct.hw* %56, i32 1704064, i32 28, i32 207)
  %58 = load %struct.hw*, %struct.hw** %5, align 8
  %59 = call i32 @i2c_write(%struct.hw* %58, i32 1704064, i32 30, i32 207)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.hw*, %struct.hw** %5, align 8
  %62 = call i32 @i2c_lock(%struct.hw* %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %37, %14
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @i2c_unlock(%struct.hw*) #1

declare dso_local i32 @hw_read_pci(%struct.hw*, i32) #1

declare dso_local i32 @hw_write_pci(%struct.hw*, i32, i32) #1

declare dso_local i32 @hw_read_20kx(%struct.hw*, i32) #1

declare dso_local i32 @i2c_lock(%struct.hw*) #1

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #1

declare dso_local i32 @i2c_write(%struct.hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
