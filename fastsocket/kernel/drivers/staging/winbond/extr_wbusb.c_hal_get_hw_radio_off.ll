; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wbusb.c_hal_get_hw_radio_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wbusb.c_hal_get_hw_radio_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i32, i64, %struct.wb35_reg }
%struct.wb35_reg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw_data*)* @hal_get_hw_radio_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hal_get_hw_radio_off(%struct.hw_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hw_data*, align 8
  %4 = alloca %struct.wb35_reg*, align 8
  store %struct.hw_data* %0, %struct.hw_data** %3, align 8
  %5 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %6 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %5, i32 0, i32 2
  store %struct.wb35_reg* %6, %struct.wb35_reg** %4, align 8
  %7 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %8 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %14 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %15 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %14, i32 0, i32 0
  %16 = call i32 @Wb35Reg_Read(%struct.hw_data* %13, i32 944, i32* %15)
  %17 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %18 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 65536
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %24 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  store i32 1, i32* %2, align 4
  br label %28

25:                                               ; preds = %12
  %26 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %27 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %22, %11
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @Wb35Reg_Read(%struct.hw_data*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
