; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_adc_input_select_SBx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_adc_input_select_SBx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }

@GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i32, i8)* @adc_input_select_SBx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc_input_select_SBx(%struct.hw* %0, i32 %1, i8 zeroext %2) #0 {
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
  br label %68

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
  switch i32 %30, label %42 [
    i32 129, label %31
    i32 130, label %34
    i32 128, label %39
  ]

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, 384
  store i32 %33, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %45

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, -129
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, 256
  store i32 %38, i32* %8, align 4
  store i32 2, i32* %9, align 4
  br label %45

39:                                               ; preds = %24
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, -257
  store i32 %41, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %45

42:                                               ; preds = %24
  %43 = load %struct.hw*, %struct.hw** %5, align 8
  %44 = call i32 @i2c_lock(%struct.hw* %43)
  store i32 -1, i32* %4, align 4
  br label %68

45:                                               ; preds = %39, %34, %31
  %46 = load %struct.hw*, %struct.hw** %5, align 8
  %47 = load i32, i32* @GPIO, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @hw_write_20kx(%struct.hw* %46, i32 %47, i32 %48)
  %50 = load %struct.hw*, %struct.hw** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @i2c_write(%struct.hw* %50, i32 1704064, i32 42, i32 %51)
  %53 = load i8, i8* %7, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.hw*, %struct.hw** %5, align 8
  %57 = call i32 @i2c_write(%struct.hw* %56, i32 1704064, i32 28, i32 231)
  %58 = load %struct.hw*, %struct.hw** %5, align 8
  %59 = call i32 @i2c_write(%struct.hw* %58, i32 1704064, i32 30, i32 231)
  br label %65

60:                                               ; preds = %45
  %61 = load %struct.hw*, %struct.hw** %5, align 8
  %62 = call i32 @i2c_write(%struct.hw* %61, i32 1704064, i32 28, i32 207)
  %63 = load %struct.hw*, %struct.hw** %5, align 8
  %64 = call i32 @i2c_write(%struct.hw* %63, i32 1704064, i32 30, i32 207)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.hw*, %struct.hw** %5, align 8
  %67 = call i32 @i2c_lock(%struct.hw* %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %42, %14
  %69 = load i32, i32* %4, align 4
  ret i32 %69
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
