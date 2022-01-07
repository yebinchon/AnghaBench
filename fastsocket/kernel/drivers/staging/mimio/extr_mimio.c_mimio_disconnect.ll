; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/mimio/extr_mimio.c_mimio_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/mimio/extr_mimio.c_mimio_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.mimio = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@disconnect_sem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"disconnect\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @mimio_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mimio_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.mimio*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = call i32 @down(i32* @disconnect_sem)
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.mimio* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.mimio* %6, %struct.mimio** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call i32 @usb_set_intfdata(%struct.usb_interface* %7, i32* null)
  %9 = load %struct.mimio*, %struct.mimio** %3, align 8
  %10 = getelementptr inbounds %struct.mimio, %struct.mimio* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.mimio*, %struct.mimio** %3, align 8
  %15 = icmp ne %struct.mimio* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.mimio*, %struct.mimio** %3, align 8
  %18 = getelementptr inbounds %struct.mimio, %struct.mimio* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.mimio*, %struct.mimio** %3, align 8
  %20 = getelementptr inbounds %struct.mimio, %struct.mimio* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.mimio*, %struct.mimio** %3, align 8
  %25 = call i32 @mimio_dealloc(%struct.mimio* %24)
  br label %26

26:                                               ; preds = %23, %16
  br label %27

27:                                               ; preds = %26, %1
  %28 = call i32 @up(i32* @disconnect_sem)
  ret void
}

declare dso_local i32 @down(i32*) #1

declare dso_local %struct.mimio* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mimio_dealloc(%struct.mimio*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
