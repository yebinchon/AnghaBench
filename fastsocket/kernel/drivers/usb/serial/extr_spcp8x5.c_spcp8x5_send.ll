; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.spcp8x5_private = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"write urb still used\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed submitting write urb, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*)* @spcp8x5_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spcp8x5_send(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.spcp8x5_private*, align 8
  %6 = alloca i64, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %8 = call %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port* %7)
  store %struct.spcp8x5_private* %8, %struct.spcp8x5_private** %5, align 8
  %9 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %5, align 8
  %10 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %9, i32 0, i32 1
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %5, align 8
  %14 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %19 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %18, i32 0, i32 1
  %20 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %5, align 8
  %22 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %21, i32 0, i32 1
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  br label %93

25:                                               ; preds = %1
  %26 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %27 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %32 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @memset(i32 %30, i32 0, i32 %33)
  %35 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %5, align 8
  %36 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %39 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %44 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @get_ringbuf(i32 %37, i32 %42, i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %25
  %50 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %5, align 8
  %51 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %50, i32 0, i32 1
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  br label %93

54:                                               ; preds = %25
  %55 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %5, align 8
  %56 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %5, align 8
  %58 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %57, i32 0, i32 1
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %63 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 4
  %66 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %67 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %66, i32 0, i32 3
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %72 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i32 %70, i32* %74, align 4
  %75 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %76 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* @GFP_ATOMIC, align 4
  %79 = call i32 @usb_submit_urb(%struct.TYPE_4__* %77, i32 %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %54
  %83 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %84 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %83, i32 0, i32 1
  %85 = load i32, i32* %4, align 4
  %86 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %84, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %5, align 8
  %88 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %82, %54
  %90 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %91 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %90, i32 0, i32 0
  %92 = call i32 @schedule_work(i32* %91)
  br label %93

93:                                               ; preds = %89, %49, %17
  ret void
}

declare dso_local %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @get_ringbuf(i32, i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
