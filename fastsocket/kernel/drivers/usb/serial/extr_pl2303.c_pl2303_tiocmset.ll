; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_pl2303.c_pl2303_tiocmset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_pl2303.c_pl2303_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.file = type { i32 }
%struct.pl2303_private = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@CONTROL_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@CONTROL_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i32, i32)* @pl2303_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl2303_tiocmset(%struct.tty_struct* %0, %struct.file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_serial_port*, align 8
  %11 = alloca %struct.pl2303_private*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 0
  %16 = load %struct.usb_serial_port*, %struct.usb_serial_port** %15, align 8
  store %struct.usb_serial_port* %16, %struct.usb_serial_port** %10, align 8
  %17 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  %18 = call %struct.pl2303_private* @usb_get_serial_port_data(%struct.usb_serial_port* %17)
  store %struct.pl2303_private* %18, %struct.pl2303_private** %11, align 8
  %19 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  %20 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usb_get_intfdata(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %94

29:                                               ; preds = %4
  %30 = load %struct.pl2303_private*, %struct.pl2303_private** %11, align 8
  %31 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %30, i32 0, i32 0
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @TIOCM_RTS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load i32, i32* @CONTROL_RTS, align 4
  %40 = load %struct.pl2303_private*, %struct.pl2303_private** %11, align 8
  %41 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %29
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @TIOCM_DTR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* @CONTROL_DTR, align 4
  %51 = load %struct.pl2303_private*, %struct.pl2303_private** %11, align 8
  %52 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @TIOCM_RTS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i32, i32* @CONTROL_RTS, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.pl2303_private*, %struct.pl2303_private** %11, align 8
  %64 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %60, %55
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @TIOCM_DTR, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load i32, i32* @CONTROL_DTR, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.pl2303_private*, %struct.pl2303_private** %11, align 8
  %76 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %72, %67
  %80 = load %struct.pl2303_private*, %struct.pl2303_private** %11, align 8
  %81 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %13, align 4
  %83 = load %struct.pl2303_private*, %struct.pl2303_private** %11, align 8
  %84 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %83, i32 0, i32 0
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  %88 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @set_control_lines(i32 %91, i32 %92)
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %79, %26
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local %struct.pl2303_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @usb_get_intfdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_control_lines(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
