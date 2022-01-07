; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wbusb.c_hal_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wbusb.c_hal_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.wb35_reg }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.wb35_reg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hw_data*)* @hal_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hal_stop(%struct.hw_data* %0) #0 {
  %2 = alloca %struct.hw_data*, align 8
  %3 = alloca %struct.wb35_reg*, align 8
  store %struct.hw_data* %0, %struct.hw_data** %2, align 8
  %4 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %5 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %4, i32 0, i32 2
  store %struct.wb35_reg* %5, %struct.wb35_reg** %3, align 8
  %6 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %7 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %10 = call i32 @Wb35Rx_stop(%struct.hw_data* %9)
  %11 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %12 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %15 = call i32 @Wb35Tx_stop(%struct.hw_data* %14)
  %16 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %17 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 1073741823
  store i32 %19, i32* %17, align 4
  %20 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %21 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %22 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @Wb35Reg_Write(%struct.hw_data* %20, i32 1024, i32 %23)
  ret void
}

declare dso_local i32 @Wb35Rx_stop(%struct.hw_data*) #1

declare dso_local i32 @Wb35Tx_stop(%struct.hw_data*) #1

declare dso_local i32 @Wb35Reg_Write(%struct.hw_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
