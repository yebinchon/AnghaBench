; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_pl2303.c_wait_modem_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_pl2303.c_wait_modem_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.pl2303_private = type { i32, i32, i32 }

@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TIOCM_RNG = common dso_local global i32 0, align 4
@UART_RING = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@UART_DSR = common dso_local global i32 0, align 4
@TIOCM_CD = common dso_local global i32 0, align 4
@UART_DCD = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@UART_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, i32)* @wait_modem_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_modem_info(%struct.usb_serial_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pl2303_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %12 = call %struct.pl2303_private* @usb_get_serial_port_data(%struct.usb_serial_port* %11)
  store %struct.pl2303_private* %12, %struct.pl2303_private** %6, align 8
  %13 = load %struct.pl2303_private*, %struct.pl2303_private** %6, align 8
  %14 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %13, i32 0, i32 1
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.pl2303_private*, %struct.pl2303_private** %6, align 8
  %18 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.pl2303_private*, %struct.pl2303_private** %6, align 8
  %21 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %20, i32 0, i32 1
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  br label %24

24:                                               ; preds = %2, %89
  %25 = load %struct.pl2303_private*, %struct.pl2303_private** %6, align 8
  %26 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %25, i32 0, i32 2
  %27 = call i32 @interruptible_sleep_on(i32* %26)
  %28 = load i32, i32* @current, align 4
  %29 = call i64 @signal_pending(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @ERESTARTSYS, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %91

34:                                               ; preds = %24
  %35 = load %struct.pl2303_private*, %struct.pl2303_private** %6, align 8
  %36 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %35, i32 0, i32 1
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.pl2303_private*, %struct.pl2303_private** %6, align 8
  %40 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  %42 = load %struct.pl2303_private*, %struct.pl2303_private** %6, align 8
  %43 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %42, i32 0, i32 1
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = xor i32 %46, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @TIOCM_RNG, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %34
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @UART_RING, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %88, label %58

58:                                               ; preds = %53, %34
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @TIOCM_DSR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @UART_DSR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %88, label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @TIOCM_CD, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @UART_DCD, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @TIOCM_CTS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @UART_CTS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83, %73, %63, %53
  store i32 0, i32* %3, align 4
  br label %91

89:                                               ; preds = %83, %78
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %8, align 4
  br label %24

91:                                               ; preds = %88, %31
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.pl2303_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @interruptible_sleep_on(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
