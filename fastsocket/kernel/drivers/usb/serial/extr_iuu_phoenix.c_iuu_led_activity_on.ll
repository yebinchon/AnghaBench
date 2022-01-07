; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_iuu_phoenix.c_iuu_led_activity_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_iuu_phoenix.c_iuu_led_activity_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32 }

@IUU_SET_LED = common dso_local global i32 0, align 4
@xmas = common dso_local global i32 0, align 4
@iuu_rxcmd = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @iuu_led_activity_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iuu_led_activity_on(%struct.urb* %0) #0 {
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
  %14 = load i32, i32* @IUU_SET_LED, align 4
  %15 = trunc i32 %14 to i8
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %5, align 8
  store i8 %15, i8* %16, align 1
  %18 = load i32, i32* @xmas, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @get_random_bytes(i8* %21, i32 6)
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 7
  store i8 1, i8* %24, align 1
  br label %28

25:                                               ; preds = %1
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @iuu_rgbf_fill_buffer(i8* %26, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 255)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %30 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %33 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %38 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %43 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @usb_sndbulkpipe(i32 %41, i32 %44)
  %46 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %47 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* @iuu_rxcmd, align 4
  %52 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %53 = call i32 @usb_fill_bulk_urb(%struct.TYPE_5__* %31, i32 %36, i32 %45, i8* %50, i32 8, i32 %51, %struct.usb_serial_port* %52)
  %54 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %55 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* @GFP_ATOMIC, align 4
  %58 = call i32 @usb_submit_urb(%struct.TYPE_5__* %56, i32 %57)
  store i32 %58, i32* %4, align 4
  ret void
}

declare dso_local i32 @get_random_bytes(i8*, i32) #1

declare dso_local i32 @iuu_rgbf_fill_buffer(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_5__*, i32, i32, i8*, i32, i32, %struct.usb_serial_port*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
