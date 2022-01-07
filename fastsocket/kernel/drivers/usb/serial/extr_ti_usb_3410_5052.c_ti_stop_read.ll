; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ti_usb_3410_5052.c_ti_stop_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ti_usb_3410_5052.c_ti_stop_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_port = type { i64, i32 }
%struct.tty_struct = type { i32 }

@TI_READ_URB_RUNNING = common dso_local global i64 0, align 8
@TI_READ_URB_STOPPING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_port*, %struct.tty_struct*)* @ti_stop_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_stop_read(%struct.ti_port* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca %struct.ti_port*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i64, align 8
  store %struct.ti_port* %0, %struct.ti_port** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %6 = load %struct.ti_port*, %struct.ti_port** %3, align 8
  %7 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %6, i32 0, i32 1
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.ti_port*, %struct.ti_port** %3, align 8
  %11 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TI_READ_URB_RUNNING, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i64, i64* @TI_READ_URB_STOPPING, align 8
  %17 = load %struct.ti_port*, %struct.ti_port** %3, align 8
  %18 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.ti_port*, %struct.ti_port** %3, align 8
  %21 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %20, i32 0, i32 1
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
