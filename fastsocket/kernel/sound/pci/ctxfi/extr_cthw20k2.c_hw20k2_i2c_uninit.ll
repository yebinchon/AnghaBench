; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k2.c_hw20k2_i2c_uninit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k2.c_hw20k2_i2c_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }

@I2C_ADDRESS_SLAD = common dso_local global i32 0, align 4
@I2C_IF_ADDRESS = common dso_local global i32 0, align 4
@I2C_IF_STATUS = common dso_local global i32 0, align 4
@I2C_STATUS_DCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*)* @hw20k2_i2c_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw20k2_i2c_uninit(%struct.hw* %0) #0 {
  %2 = alloca %struct.hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @I2C_ADDRESS_SLAD, align 4
  %6 = call i32 @set_field(i32* %4, i32 %5, i32 87)
  %7 = load %struct.hw*, %struct.hw** %2, align 8
  %8 = load i32, i32* @I2C_IF_ADDRESS, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @hw_write_20kx(%struct.hw* %7, i32 %8, i32 %9)
  %11 = load %struct.hw*, %struct.hw** %2, align 8
  %12 = load i32, i32* @I2C_IF_STATUS, align 4
  %13 = call i32 @hw_read_20kx(%struct.hw* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @I2C_STATUS_DCM, align 4
  %15 = call i32 @set_field(i32* %3, i32 %14, i32 0)
  %16 = load %struct.hw*, %struct.hw** %2, align 8
  %17 = load i32, i32* @I2C_IF_STATUS, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @hw_write_20kx(%struct.hw* %16, i32 %17, i32 %18)
  %20 = load %struct.hw*, %struct.hw** %2, align 8
  %21 = call i32 @hw20k2_i2c_lock_chip(%struct.hw* %20)
  ret i32 %21
}

declare dso_local i32 @set_field(i32*, i32, i32) #1

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #1

declare dso_local i32 @hw_read_20kx(%struct.hw*, i32) #1

declare dso_local i32 @hw20k2_i2c_lock_chip(%struct.hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
