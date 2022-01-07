; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ch341.c_wait_modem_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ch341.c_wait_modem_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.ch341_private = type { i32, i32, i32, i32 }

@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TIOCM_RNG = common dso_local global i32 0, align 4
@CH341_BIT_RI = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@CH341_BIT_DSR = common dso_local global i32 0, align 4
@TIOCM_CD = common dso_local global i32 0, align 4
@CH341_BIT_DCD = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@CH341_BIT_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, i32)* @wait_modem_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_modem_info(%struct.usb_serial_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ch341_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %13 = call %struct.ch341_private* @usb_get_serial_port_data(%struct.usb_serial_port* %12)
  store %struct.ch341_private* %13, %struct.ch341_private** %6, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.ch341_private*, %struct.ch341_private** %6, align 8
  %15 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %14, i32 0, i32 2
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.ch341_private*, %struct.ch341_private** %6, align 8
  %19 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.ch341_private*, %struct.ch341_private** %6, align 8
  %22 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.ch341_private*, %struct.ch341_private** %6, align 8
  %24 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %23, i32 0, i32 2
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  br label %27

27:                                               ; preds = %99, %2
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %101

31:                                               ; preds = %27
  %32 = load %struct.ch341_private*, %struct.ch341_private** %6, align 8
  %33 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %32, i32 0, i32 3
  %34 = call i32 @interruptible_sleep_on(i32* %33)
  %35 = load i32, i32* @current, align 4
  %36 = call i64 @signal_pending(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @ERESTARTSYS, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %102

41:                                               ; preds = %31
  %42 = load %struct.ch341_private*, %struct.ch341_private** %6, align 8
  %43 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %42, i32 0, i32 2
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.ch341_private*, %struct.ch341_private** %6, align 8
  %47 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  %49 = load %struct.ch341_private*, %struct.ch341_private** %6, align 8
  %50 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  %52 = load %struct.ch341_private*, %struct.ch341_private** %6, align 8
  %53 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %52, i32 0, i32 2
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = xor i32 %56, %57
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @TIOCM_RNG, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %41
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @CH341_BIT_RI, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %98, label %68

68:                                               ; preds = %63, %41
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @TIOCM_DSR, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @CH341_BIT_DSR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @TIOCM_CD, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @CH341_BIT_DCD, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %83, %78
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @TIOCM_CTS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @CH341_BIT_CTS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93, %83, %73, %63
  store i32 0, i32* %3, align 4
  br label %102

99:                                               ; preds = %93, %88
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %8, align 4
  br label %27

101:                                              ; preds = %27
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %98, %38
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.ch341_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

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
