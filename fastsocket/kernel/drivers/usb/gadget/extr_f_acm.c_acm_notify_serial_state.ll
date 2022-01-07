; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_acm.c_acm_notify_serial_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_acm.c_acm_notify_serial_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_acm = type { i32, i32, i32, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"acm ttyGS%d serial state %04x\0A\00", align 1
@USB_CDC_NOTIFY_SERIAL_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f_acm*)* @acm_notify_serial_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acm_notify_serial_state(%struct.f_acm* %0) #0 {
  %2 = alloca %struct.f_acm*, align 8
  %3 = alloca %struct.usb_composite_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.f_acm* %0, %struct.f_acm** %2, align 8
  %5 = load %struct.f_acm*, %struct.f_acm** %2, align 8
  %6 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %5, i32 0, i32 5
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %10, align 8
  store %struct.usb_composite_dev* %11, %struct.usb_composite_dev** %3, align 8
  %12 = load %struct.f_acm*, %struct.f_acm** %2, align 8
  %13 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.f_acm*, %struct.f_acm** %2, align 8
  %16 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %21 = load %struct.f_acm*, %struct.f_acm** %2, align 8
  %22 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.f_acm*, %struct.f_acm** %2, align 8
  %25 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @DBG(%struct.usb_composite_dev* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load %struct.f_acm*, %struct.f_acm** %2, align 8
  %29 = load i32, i32* @USB_CDC_NOTIFY_SERIAL_STATE, align 4
  %30 = load %struct.f_acm*, %struct.f_acm** %2, align 8
  %31 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %30, i32 0, i32 2
  %32 = call i32 @acm_cdc_notify(%struct.f_acm* %28, i32 %29, i32 0, i32* %31, i32 4)
  store i32 %32, i32* %4, align 4
  br label %36

33:                                               ; preds = %1
  %34 = load %struct.f_acm*, %struct.f_acm** %2, align 8
  %35 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %19
  %37 = load %struct.f_acm*, %struct.f_acm** %2, align 8
  %38 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %37, i32 0, i32 1
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*, i32, i32) #1

declare dso_local i32 @acm_cdc_notify(%struct.f_acm*, i32, i32, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
