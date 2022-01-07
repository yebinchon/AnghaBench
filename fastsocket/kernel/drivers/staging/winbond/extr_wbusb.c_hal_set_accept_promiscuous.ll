; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wbusb.c_hal_set_accept_promiscuous.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wbusb.c_hal_set_accept_promiscuous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i64, %struct.wb35_reg }
%struct.wb35_reg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hw_data*, i64)* @hal_set_accept_promiscuous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hal_set_accept_promiscuous(%struct.hw_data* %0, i64 %1) #0 {
  %3 = alloca %struct.hw_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.wb35_reg*, align 8
  store %struct.hw_data* %0, %struct.hw_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %7 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %6, i32 0, i32 1
  store %struct.wb35_reg* %7, %struct.wb35_reg** %5, align 8
  %8 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %9 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %36

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %18 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, 4194304
  store i32 %20, i32* %18, align 4
  %21 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %22 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %23 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @Wb35Reg_Write(%struct.hw_data* %21, i32 2048, i32 %24)
  br label %36

26:                                               ; preds = %13
  %27 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %28 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, -4194305
  store i32 %30, i32* %28, align 4
  %31 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %32 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %33 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @Wb35Reg_Write(%struct.hw_data* %31, i32 2048, i32 %34)
  br label %36

36:                                               ; preds = %12, %26, %16
  ret void
}

declare dso_local i32 @Wb35Reg_Write(%struct.hw_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
