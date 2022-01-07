; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_oti6858.c_wait_modem_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_oti6858.c_wait_modem_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.oti6858_private = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@PIN_MASK = common dso_local global i32 0, align 4
@TIOCM_RNG = common dso_local global i32 0, align 4
@PIN_RI = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@PIN_DSR = common dso_local global i32 0, align 4
@TIOCM_CD = common dso_local global i32 0, align 4
@PIN_DCD = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@PIN_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, i32)* @wait_modem_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_modem_info(%struct.usb_serial_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.oti6858_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %12 = call %struct.oti6858_private* @usb_get_serial_port_data(%struct.usb_serial_port* %11)
  store %struct.oti6858_private* %12, %struct.oti6858_private** %6, align 8
  %13 = load %struct.oti6858_private*, %struct.oti6858_private** %6, align 8
  %14 = getelementptr inbounds %struct.oti6858_private, %struct.oti6858_private* %13, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.oti6858_private*, %struct.oti6858_private** %6, align 8
  %18 = getelementptr inbounds %struct.oti6858_private, %struct.oti6858_private* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.oti6858_private*, %struct.oti6858_private** %6, align 8
  %22 = getelementptr inbounds %struct.oti6858_private, %struct.oti6858_private* %21, i32 0, i32 0
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  br label %25

25:                                               ; preds = %2, %101
  %26 = load %struct.oti6858_private*, %struct.oti6858_private** %6, align 8
  %27 = getelementptr inbounds %struct.oti6858_private, %struct.oti6858_private* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.oti6858_private*, %struct.oti6858_private** %6, align 8
  %30 = getelementptr inbounds %struct.oti6858_private, %struct.oti6858_private* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @wait_event_interruptible(i32 %28, i32 %35)
  %37 = load i32, i32* @current, align 4
  %38 = call i64 @signal_pending(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load i32, i32* @ERESTARTSYS, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %103

43:                                               ; preds = %25
  %44 = load %struct.oti6858_private*, %struct.oti6858_private** %6, align 8
  %45 = getelementptr inbounds %struct.oti6858_private, %struct.oti6858_private* %44, i32 0, i32 0
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.oti6858_private*, %struct.oti6858_private** %6, align 8
  %49 = getelementptr inbounds %struct.oti6858_private, %struct.oti6858_private* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PIN_MASK, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %9, align 4
  %54 = load %struct.oti6858_private*, %struct.oti6858_private** %6, align 8
  %55 = getelementptr inbounds %struct.oti6858_private, %struct.oti6858_private* %54, i32 0, i32 0
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = xor i32 %58, %59
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @TIOCM_RNG, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %43
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @PIN_RI, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %100, label %70

70:                                               ; preds = %65, %43
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @TIOCM_DSR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @PIN_DSR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %100, label %80

80:                                               ; preds = %75, %70
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @TIOCM_CD, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @PIN_DCD, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %85, %80
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @TIOCM_CTS, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @PIN_CTS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95, %85, %75, %65
  store i32 0, i32* %3, align 4
  br label %103

101:                                              ; preds = %95, %90
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %8, align 4
  br label %25

103:                                              ; preds = %100, %40
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.oti6858_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
