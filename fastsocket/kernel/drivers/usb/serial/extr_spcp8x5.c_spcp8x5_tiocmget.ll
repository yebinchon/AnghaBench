; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_tiocmget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_tiocmget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.file = type { i32 }
%struct.spcp8x5_private = type { i32, i32, i32 }

@MCR_DTR = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@MCR_RTS = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@MSR_STATUS_LINE_CTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@MSR_STATUS_LINE_DSR = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@MSR_STATUS_LINE_RI = common dso_local global i32 0, align 4
@TIOCM_RI = common dso_local global i32 0, align 4
@MSR_STATUS_LINE_DCD = common dso_local global i32 0, align 4
@TIOCM_CD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @spcp8x5_tiocmget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spcp8x5_tiocmget(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.spcp8x5_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %12, align 8
  store %struct.usb_serial_port* %13, %struct.usb_serial_port** %5, align 8
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %15 = call %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port* %14)
  store %struct.spcp8x5_private* %15, %struct.spcp8x5_private** %6, align 8
  %16 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %6, align 8
  %17 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %16, i32 0, i32 2
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %6, align 8
  %21 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %6, align 8
  %24 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %6, align 8
  %27 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %26, i32 0, i32 2
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @MCR_DTR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @TIOCM_DTR, align 4
  br label %37

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @MCR_RTS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @TIOCM_RTS, align 4
  br label %46

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  %48 = or i32 %38, %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @MSR_STATUS_LINE_CTS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @TIOCM_CTS, align 4
  br label %56

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  %58 = or i32 %48, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @MSR_STATUS_LINE_DSR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @TIOCM_DSR, align 4
  br label %66

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ]
  %68 = or i32 %58, %67
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @MSR_STATUS_LINE_RI, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @TIOCM_RI, align 4
  br label %76

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  %78 = or i32 %68, %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @MSR_STATUS_LINE_DCD, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @TIOCM_CD, align 4
  br label %86

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i32 [ %84, %83 ], [ 0, %85 ]
  %88 = or i32 %78, %87
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  ret i32 %89
}

declare dso_local %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
