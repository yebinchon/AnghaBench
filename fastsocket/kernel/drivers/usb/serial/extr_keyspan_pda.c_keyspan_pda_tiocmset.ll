; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_keyspan_pda.c_keyspan_pda_tiocmset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_keyspan_pda.c_keyspan_pda_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.file = type { i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i32, i32)* @keyspan_pda_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyspan_pda_tiocmset(%struct.tty_struct* %0, %struct.file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_serial_port*, align 8
  %11 = alloca %struct.usb_serial*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 0
  %16 = load %struct.usb_serial_port*, %struct.usb_serial_port** %15, align 8
  store %struct.usb_serial_port* %16, %struct.usb_serial_port** %10, align 8
  %17 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  %18 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %17, i32 0, i32 0
  %19 = load %struct.usb_serial*, %struct.usb_serial** %18, align 8
  store %struct.usb_serial* %19, %struct.usb_serial** %11, align 8
  %20 = load %struct.usb_serial*, %struct.usb_serial** %11, align 8
  %21 = call i32 @keyspan_pda_get_modem_info(%struct.usb_serial* %20, i8* %13)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  br label %71

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @TIOCM_RTS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i8, i8* %13, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %33, 4
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %13, align 1
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @TIOCM_DTR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i8, i8* %13, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %43, 128
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %13, align 1
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @TIOCM_RTS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i8, i8* %13, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, -5
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %13, align 1
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @TIOCM_DTR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i8, i8* %13, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, -129
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %13, align 1
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.usb_serial*, %struct.usb_serial** %11, align 8
  %68 = load i8, i8* %13, align 1
  %69 = call i32 @keyspan_pda_set_modem_info(%struct.usb_serial* %67, i8 zeroext %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %66, %24
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @keyspan_pda_get_modem_info(%struct.usb_serial*, i8*) #1

declare dso_local i32 @keyspan_pda_set_modem_info(%struct.usb_serial*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
