; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_usb_wwan.c_stop_read_write_urbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_usb_wwan.c_stop_read_write_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32, %struct.usb_serial_port** }
%struct.usb_serial_port = type { i32 }
%struct.usb_wwan_port_private = type { i32*, i32* }

@N_IN_URB = common dso_local global i32 0, align 4
@N_OUT_URB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial*)* @stop_read_write_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_read_write_urbs(%struct.usb_serial* %0) #0 {
  %2 = alloca %struct.usb_serial*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.usb_wwan_port_private*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %57, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %10 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %60

13:                                               ; preds = %7
  %14 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %15 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %14, i32 0, i32 1
  %16 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %16, i64 %18
  %20 = load %struct.usb_serial_port*, %struct.usb_serial_port** %19, align 8
  store %struct.usb_serial_port* %20, %struct.usb_serial_port** %5, align 8
  %21 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %22 = call %struct.usb_wwan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %21)
  store %struct.usb_wwan_port_private* %22, %struct.usb_wwan_port_private** %6, align 8
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %36, %13
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @N_IN_URB, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %6, align 8
  %29 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_kill_urb(i32 %34)
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %23

39:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %53, %39
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @N_OUT_URB, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %6, align 8
  %46 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @usb_kill_urb(i32 %51)
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %40

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %7

60:                                               ; preds = %7
  ret void
}

declare dso_local %struct.usb_wwan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
