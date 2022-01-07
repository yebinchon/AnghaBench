; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mct_u232.c_mct_u232_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mct_u232.c_mct_u232_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.usb_serial_port** }
%struct.usb_serial_port = type { %struct.TYPE_2__*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.usb_serial_port* }
%struct.mct_u232_private = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @mct_u232_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mct_u232_startup(%struct.usb_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.mct_u232_private*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.usb_serial_port*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.mct_u232_private* @kzalloc(i32 4, i32 %7)
  store %struct.mct_u232_private* %8, %struct.mct_u232_private** %4, align 8
  %9 = load %struct.mct_u232_private*, %struct.mct_u232_private** %4, align 8
  %10 = icmp ne %struct.mct_u232_private* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %58

14:                                               ; preds = %1
  %15 = load %struct.mct_u232_private*, %struct.mct_u232_private** %4, align 8
  %16 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %19 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %18, i32 0, i32 0
  %20 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %19, align 8
  %21 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %20, i64 0
  %22 = load %struct.usb_serial_port*, %struct.usb_serial_port** %21, align 8
  %23 = load %struct.mct_u232_private*, %struct.mct_u232_private** %4, align 8
  %24 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %22, %struct.mct_u232_private* %23)
  %25 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %26 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %25, i32 0, i32 0
  %27 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %26, align 8
  %28 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %27, i64 0
  %29 = load %struct.usb_serial_port*, %struct.usb_serial_port** %28, align 8
  %30 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %29, i32 0, i32 2
  %31 = call i32 @init_waitqueue_head(i32* %30)
  %32 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %33 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %32, i32 0, i32 0
  %34 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %33, align 8
  %35 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %34, i64 0
  %36 = load %struct.usb_serial_port*, %struct.usb_serial_port** %35, align 8
  store %struct.usb_serial_port* %36, %struct.usb_serial_port** %5, align 8
  %37 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %38 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %37, i32 0, i32 0
  %39 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %38, align 8
  %40 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %39, i64 1
  %41 = load %struct.usb_serial_port*, %struct.usb_serial_port** %40, align 8
  store %struct.usb_serial_port* %41, %struct.usb_serial_port** %6, align 8
  %42 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %43 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = call i32 @usb_free_urb(%struct.TYPE_2__* %44)
  %46 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %47 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %50 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %49, i32 0, i32 0
  store %struct.TYPE_2__* %48, %struct.TYPE_2__** %50, align 8
  %51 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %52 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %51, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %52, align 8
  %53 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %54 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %55 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store %struct.usb_serial_port* %53, %struct.usb_serial_port** %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %14, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.mct_u232_private* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.mct_u232_private*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
