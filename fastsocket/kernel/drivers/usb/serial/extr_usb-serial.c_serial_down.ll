; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_usb-serial.c_serial_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_usb-serial.c_serial_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.usb_serial_driver* }
%struct.usb_serial_driver = type { i32 (%struct.usb_serial_port*)* }

@ASYNCB_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*)* @serial_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_down(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca %struct.usb_serial_driver*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %4 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %5 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %4, i32 0, i32 3
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %7, align 8
  store %struct.usb_serial_driver* %8, %struct.usb_serial_driver** %3, align 8
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %10 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %40

14:                                               ; preds = %1
  %15 = load i32, i32* @ASYNCB_INITIALIZED, align 4
  %16 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %17 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @test_and_clear_bit(i32 %15, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %40

22:                                               ; preds = %14
  %23 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %24 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %3, align 8
  %27 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %26, i32 0, i32 0
  %28 = load i32 (%struct.usb_serial_port*)*, i32 (%struct.usb_serial_port*)** %27, align 8
  %29 = icmp ne i32 (%struct.usb_serial_port*)* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %3, align 8
  %32 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %31, i32 0, i32 0
  %33 = load i32 (%struct.usb_serial_port*)*, i32 (%struct.usb_serial_port*)** %32, align 8
  %34 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %35 = call i32 %33(%struct.usb_serial_port* %34)
  br label %36

36:                                               ; preds = %30, %22
  %37 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %38 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  br label %40

40:                                               ; preds = %36, %21, %13
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
