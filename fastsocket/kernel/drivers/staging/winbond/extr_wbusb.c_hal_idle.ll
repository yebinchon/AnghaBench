; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wbusb.c_hal_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wbusb.c_hal_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i32, %struct.wb_usb, %struct.wb35_reg }
%struct.wb_usb = type { i64 }
%struct.wb35_reg = type { i64 }

@VM_STOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.hw_data*)* @hal_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @hal_idle(%struct.hw_data* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.hw_data*, align 8
  %4 = alloca %struct.wb35_reg*, align 8
  %5 = alloca %struct.wb_usb*, align 8
  store %struct.hw_data* %0, %struct.hw_data** %3, align 8
  %6 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %7 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %6, i32 0, i32 2
  store %struct.wb35_reg* %7, %struct.wb35_reg** %4, align 8
  %8 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %9 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %8, i32 0, i32 1
  store %struct.wb_usb* %9, %struct.wb_usb** %5, align 8
  %10 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %11 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %1
  %15 = load %struct.wb_usb*, %struct.wb_usb** %5, align 8
  %16 = getelementptr inbounds %struct.wb_usb, %struct.wb_usb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %21 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VM_STOP, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %14
  store i8 0, i8* %2, align 1
  br label %27

26:                                               ; preds = %19, %1
  store i8 1, i8* %2, align 1
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i8, i8* %2, align 1
  ret i8 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
