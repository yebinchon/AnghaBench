; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_keyspan_pda.c_keyspan_pda_rx_unthrottle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_keyspan_pda.c_keyspan_pda_rx_unthrottle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"keyspan_pda_rx_unthrottle port %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c" usb_submit_urb(read urb) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @keyspan_pda_rx_unthrottle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyspan_pda_rx_unthrottle(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.usb_serial_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  store %struct.usb_serial_port* %6, %struct.usb_serial_port** %3, align 8
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %8 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %12 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %17 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  %20 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %21 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i64 @usb_submit_urb(%struct.TYPE_4__* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i64 @usb_submit_urb(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
