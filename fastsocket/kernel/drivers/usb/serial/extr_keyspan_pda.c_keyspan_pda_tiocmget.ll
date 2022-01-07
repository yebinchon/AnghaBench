; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_keyspan_pda.c_keyspan_pda_tiocmget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_keyspan_pda.c_keyspan_pda_tiocmget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.file = type { i32 }

@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@TIOCM_RNG = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @keyspan_pda_tiocmget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyspan_pda_tiocmget(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.usb_serial_port*, align 8
  %7 = alloca %struct.usb_serial*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %12, align 8
  store %struct.usb_serial_port* %13, %struct.usb_serial_port** %6, align 8
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %15 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %14, i32 0, i32 0
  %16 = load %struct.usb_serial*, %struct.usb_serial** %15, align 8
  store %struct.usb_serial* %16, %struct.usb_serial** %7, align 8
  %17 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %18 = call i32 @keyspan_pda_get_modem_info(%struct.usb_serial* %17, i8* %9)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %84

23:                                               ; preds = %2
  %24 = load i8, i8* %9, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 128
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @TIOCM_DTR, align 4
  br label %31

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = load i8, i8* %9, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 64
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @TIOCM_CAR, align 4
  br label %40

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  %42 = or i32 %32, %41
  %43 = load i8, i8* %9, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @TIOCM_RNG, align 4
  br label %50

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = or i32 %42, %51
  %53 = load i8, i8* %9, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 16
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @TIOCM_DSR, align 4
  br label %60

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  %62 = or i32 %52, %61
  %63 = load i8, i8* %9, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @TIOCM_CTS, align 4
  br label %70

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  %72 = or i32 %62, %71
  %73 = load i8, i8* %9, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @TIOCM_RTS, align 4
  br label %80

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i32 [ %78, %77 ], [ 0, %79 ]
  %82 = or i32 %72, %81
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %21
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @keyspan_pda_get_modem_info(%struct.usb_serial*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
