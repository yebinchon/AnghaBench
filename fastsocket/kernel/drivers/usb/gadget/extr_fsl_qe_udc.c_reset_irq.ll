; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_reset_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_reset_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_udc = type { i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@USB_STATE_DEFAULT = common dso_local global i64 0, align 8
@USB_MAX_ENDPOINTS = common dso_local global i8 0, align 1
@WAIT_FOR_SETUP = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qe_udc*)* @reset_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_irq(%struct.qe_udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qe_udc*, align 8
  %4 = alloca i8, align 1
  store %struct.qe_udc* %0, %struct.qe_udc** %3, align 8
  %5 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %6 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @USB_STATE_DEFAULT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

11:                                               ; preds = %1
  %12 = call i32 (...) @qe_usb_disable()
  %13 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %14 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @out_8(i32* %16, i32 0)
  store i8 0, i8* %4, align 1
  br label %18

18:                                               ; preds = %39, %11
  %19 = load i8, i8* %4, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @USB_MAX_ENDPOINTS, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %26 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i8, i8* %4, align 1
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %36 = load i8, i8* %4, align 1
  %37 = call i32 @qe_ep_reset(%struct.qe_udc* %35, i8 zeroext %36)
  br label %38

38:                                               ; preds = %34, %24
  br label %39

39:                                               ; preds = %38
  %40 = load i8, i8* %4, align 1
  %41 = add i8 %40, 1
  store i8 %41, i8* %4, align 1
  br label %18

42:                                               ; preds = %18
  %43 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %44 = call i32 @reset_queues(%struct.qe_udc* %43)
  %45 = load i64, i64* @USB_STATE_DEFAULT, align 8
  %46 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %47 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* @WAIT_FOR_SETUP, align 4
  %49 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %50 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @USB_DIR_OUT, align 4
  %52 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %53 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = call i32 (...) @qe_usb_enable()
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %42, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @qe_usb_disable(...) #1

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i32 @qe_ep_reset(%struct.qe_udc*, i8 zeroext) #1

declare dso_local i32 @reset_queues(%struct.qe_udc*) #1

declare dso_local i32 @qe_usb_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
