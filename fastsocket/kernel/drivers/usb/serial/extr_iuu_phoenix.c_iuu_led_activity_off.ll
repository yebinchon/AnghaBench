; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_iuu_phoenix.c_iuu_led_activity_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_iuu_phoenix.c_iuu_led_activity_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32 }

@xmas = common dso_local global i32 0, align 4
@IUU_SET_LED = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @iuu_led_activity_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iuu_led_activity_off(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 0
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  store %struct.usb_serial_port* %8, %struct.usb_serial_port** %3, align 8
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %10 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %5, align 8
  %14 = load i32, i32* @xmas, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.urb*, %struct.urb** %2, align 8
  %18 = call i32 @iuu_rxcmd(%struct.urb* %17)
  br label %56

19:                                               ; preds = %1
  %20 = load i32, i32* @IUU_SET_LED, align 4
  %21 = trunc i32 %20 to i8
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %5, align 8
  store i8 %21, i8* %22, align 1
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @iuu_rgbf_fill_buffer(i8* %24, i32 0, i32 0, i32 255, i32 255, i32 0, i32 0, i32 255)
  br label %26

26:                                               ; preds = %19
  %27 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %28 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %31 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %36 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %41 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @usb_sndbulkpipe(i32 %39, i32 %42)
  %44 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %45 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %50 = call i32 @usb_fill_bulk_urb(%struct.TYPE_5__* %29, i32 %34, i32 %43, i8* %48, i32 8, i32 (%struct.urb*)* @iuu_rxcmd, %struct.usb_serial_port* %49)
  %51 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %52 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  %55 = call i32 @usb_submit_urb(%struct.TYPE_5__* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %26, %16
  ret void
}

declare dso_local i32 @iuu_rxcmd(%struct.urb*) #1

declare dso_local i32 @iuu_rgbf_fill_buffer(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_5__*, i32, i32, i8*, i32, i32 (%struct.urb*)*, %struct.usb_serial_port*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
