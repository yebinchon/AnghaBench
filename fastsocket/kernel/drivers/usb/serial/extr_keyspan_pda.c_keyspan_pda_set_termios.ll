; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_keyspan_pda.c_keyspan_pda_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_keyspan_pda.c_keyspan_pda_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial_port = type { %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.ktermios = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"can't handle requested baud rate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)* @keyspan_pda_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyspan_pda_set_termios(%struct.tty_struct* %0, %struct.usb_serial_port* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.usb_serial*, align 8
  %8 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %10 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %9, i32 0, i32 0
  %11 = load %struct.usb_serial*, %struct.usb_serial** %10, align 8
  store %struct.usb_serial* %11, %struct.usb_serial** %7, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %13 = call i64 @tty_get_baud_rate(%struct.tty_struct* %12)
  store i64 %13, i64* %8, align 8
  %14 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i64 @keyspan_pda_setbaud(%struct.usb_serial* %14, i64 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = call i32 @dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %22 = call i64 @tty_termios_baud_rate(%struct.ktermios* %21)
  store i64 %22, i64* %8, align 8
  br label %23

23:                                               ; preds = %19, %3
  %24 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %28 = call i32 @tty_termios_copy_hw(i32 %26, %struct.ktermios* %27)
  %29 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @tty_encode_baud_rate(%struct.tty_struct* %29, i64 %30, i64 %31)
  ret void
}

declare dso_local i64 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i64 @keyspan_pda_setbaud(%struct.usb_serial*, i64) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i64 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_copy_hw(i32, %struct.ktermios*) #1

declare dso_local i32 @tty_encode_baud_rate(%struct.tty_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
