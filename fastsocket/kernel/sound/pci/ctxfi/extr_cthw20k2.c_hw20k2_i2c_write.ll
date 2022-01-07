; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k2.c_hw20k2_i2c_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k2.c_hw20k2_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }
%struct.hw20k2 = type { i32, i32 }

@I2C_IF_STATUS = common dso_local global i32 0, align 4
@I2C_STATUS_BC = common dso_local global i32 0, align 4
@I2C_IF_WDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i32, i32)* @hw20k2_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw20k2_i2c_write(%struct.hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hw20k2*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hw*, %struct.hw** %4, align 8
  %11 = bitcast %struct.hw* %10 to %struct.hw20k2*
  store %struct.hw20k2* %11, %struct.hw20k2** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.hw20k2*, %struct.hw20k2** %7, align 8
  %14 = getelementptr inbounds %struct.hw20k2, %struct.hw20k2* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 8
  %17 = shl i32 %12, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.hw*, %struct.hw** %4, align 8
  %21 = load i32, i32* @I2C_IF_STATUS, align 4
  %22 = call i32 @hw_read_20kx(%struct.hw* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @I2C_STATUS_BC, align 4
  %24 = load %struct.hw20k2*, %struct.hw20k2** %7, align 8
  %25 = getelementptr inbounds %struct.hw20k2, %struct.hw20k2* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hw20k2*, %struct.hw20k2** %7, align 8
  %28 = getelementptr inbounds %struct.hw20k2, %struct.hw20k2* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = icmp eq i32 4, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %41

33:                                               ; preds = %3
  %34 = load %struct.hw20k2*, %struct.hw20k2** %7, align 8
  %35 = getelementptr inbounds %struct.hw20k2, %struct.hw20k2* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hw20k2*, %struct.hw20k2** %7, align 8
  %38 = getelementptr inbounds %struct.hw20k2, %struct.hw20k2* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  br label %41

41:                                               ; preds = %33, %32
  %42 = phi i32 [ 0, %32 ], [ %40, %33 ]
  %43 = call i32 @set_field(i32* %9, i32 %23, i32 %42)
  %44 = load %struct.hw*, %struct.hw** %4, align 8
  %45 = load i32, i32* @I2C_IF_STATUS, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @hw_write_20kx(%struct.hw* %44, i32 %45, i32 %46)
  %48 = load %struct.hw*, %struct.hw** %4, align 8
  %49 = call i32 @hw20k2_i2c_wait_data_ready(%struct.hw* %48)
  %50 = load %struct.hw*, %struct.hw** %4, align 8
  %51 = load i32, i32* @I2C_IF_WDATA, align 4
  %52 = call i32 @hw_write_20kx(%struct.hw* %50, i32 %51, i32 0)
  %53 = load %struct.hw*, %struct.hw** %4, align 8
  %54 = call i32 @hw20k2_i2c_wait_data_ready(%struct.hw* %53)
  %55 = load %struct.hw*, %struct.hw** %4, align 8
  %56 = load i32, i32* @I2C_IF_WDATA, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @hw_write_20kx(%struct.hw* %55, i32 %56, i32 %57)
  %59 = load %struct.hw*, %struct.hw** %4, align 8
  %60 = call i32 @hw20k2_i2c_wait_data_ready(%struct.hw* %59)
  ret i32 0
}

declare dso_local i32 @hw_read_20kx(%struct.hw*, i32) #1

declare dso_local i32 @set_field(i32*, i32, i32) #1

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #1

declare dso_local i32 @hw20k2_i2c_wait_data_ready(%struct.hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
