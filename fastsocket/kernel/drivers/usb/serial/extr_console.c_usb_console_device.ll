; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_console.c_usb_console_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_console.c_usb_console_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32 }
%struct.console = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_driver* (%struct.console*, i32*)* @usb_console_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_driver* @usb_console_device(%struct.console* %0, i32* %1) #0 {
  %3 = alloca %struct.tty_driver*, align 8
  %4 = alloca %struct.console*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tty_driver**, align 8
  store %struct.console* %0, %struct.console** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.console*, %struct.console** %4, align 8
  %8 = getelementptr inbounds %struct.console, %struct.console* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.tty_driver**
  store %struct.tty_driver** %10, %struct.tty_driver*** %6, align 8
  %11 = load %struct.tty_driver**, %struct.tty_driver*** %6, align 8
  %12 = load %struct.tty_driver*, %struct.tty_driver** %11, align 8
  %13 = icmp ne %struct.tty_driver* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.tty_driver* null, %struct.tty_driver** %3, align 8
  br label %22

15:                                               ; preds = %2
  %16 = load %struct.console*, %struct.console** %4, align 8
  %17 = getelementptr inbounds %struct.console, %struct.console* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.tty_driver**, %struct.tty_driver*** %6, align 8
  %21 = load %struct.tty_driver*, %struct.tty_driver** %20, align 8
  store %struct.tty_driver* %21, %struct.tty_driver** %3, align 8
  br label %22

22:                                               ; preds = %15, %14
  %23 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  ret %struct.tty_driver* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
