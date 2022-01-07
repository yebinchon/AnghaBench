; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ti_usb_3410_5052.c_ti_set_mcr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ti_usb_3410_5052.c_ti_set_mcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_port = type { i32, i32, i64, i32 }

@TI_UART_OFFSET_MCR = common dso_local global i64 0, align 8
@TI_MCR_RTS = common dso_local global i32 0, align 4
@TI_MCR_DTR = common dso_local global i32 0, align 4
@TI_MCR_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_port*, i32)* @ti_set_mcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_set_mcr(%struct.ti_port* %0, i32 %1) #0 {
  %3 = alloca %struct.ti_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ti_port* %0, %struct.ti_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ti_port*, %struct.ti_port** %3, align 8
  %8 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ti_port*, %struct.ti_port** %3, align 8
  %11 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TI_UART_OFFSET_MCR, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* @TI_MCR_RTS, align 4
  %16 = load i32, i32* @TI_MCR_DTR, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @TI_MCR_LOOP, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ti_write_byte(i32 %9, i64 %14, i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ti_port*, %struct.ti_port** %3, align 8
  %23 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %22, i32 0, i32 1
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.ti_port*, %struct.ti_port** %3, align 8
  %31 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %28, %2
  %33 = load %struct.ti_port*, %struct.ti_port** %3, align 8
  %34 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %33, i32 0, i32 1
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @ti_write_byte(i32, i64, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
