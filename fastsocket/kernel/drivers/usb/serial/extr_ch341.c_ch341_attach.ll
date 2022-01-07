; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ch341.c_ch341_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ch341.c_ch341_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32*, i32 }
%struct.ch341_private = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"ch341_attach()\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEFAULT_BAUD_RATE = common dso_local global i32 0, align 4
@CH341_BIT_RTS = common dso_local global i32 0, align 4
@CH341_BIT_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @ch341_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch341_attach(%struct.usb_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.ch341_private*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  %6 = call i32 @dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ch341_private* @kzalloc(i32 16, i32 %7)
  store %struct.ch341_private* %8, %struct.ch341_private** %4, align 8
  %9 = load %struct.ch341_private*, %struct.ch341_private** %4, align 8
  %10 = icmp ne %struct.ch341_private* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %49

14:                                               ; preds = %1
  %15 = load %struct.ch341_private*, %struct.ch341_private** %4, align 8
  %16 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %15, i32 0, i32 3
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.ch341_private*, %struct.ch341_private** %4, align 8
  %19 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %18, i32 0, i32 2
  %20 = call i32 @init_waitqueue_head(i32* %19)
  %21 = load i32, i32* @DEFAULT_BAUD_RATE, align 4
  %22 = load %struct.ch341_private*, %struct.ch341_private** %4, align 8
  %23 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @CH341_BIT_RTS, align 4
  %25 = load i32, i32* @CH341_BIT_DTR, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.ch341_private*, %struct.ch341_private** %4, align 8
  %28 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %30 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ch341_private*, %struct.ch341_private** %4, align 8
  %33 = call i32 @ch341_configure(i32 %31, %struct.ch341_private* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %14
  br label %45

37:                                               ; preds = %14
  %38 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %39 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ch341_private*, %struct.ch341_private** %4, align 8
  %44 = call i32 @usb_set_serial_port_data(i32 %42, %struct.ch341_private* %43)
  store i32 0, i32* %2, align 4
  br label %49

45:                                               ; preds = %36
  %46 = load %struct.ch341_private*, %struct.ch341_private** %4, align 8
  %47 = call i32 @kfree(%struct.ch341_private* %46)
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %37, %11
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local %struct.ch341_private* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @ch341_configure(i32, %struct.ch341_private*) #1

declare dso_local i32 @usb_set_serial_port_data(i32, %struct.ch341_private*) #1

declare dso_local i32 @kfree(%struct.ch341_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
