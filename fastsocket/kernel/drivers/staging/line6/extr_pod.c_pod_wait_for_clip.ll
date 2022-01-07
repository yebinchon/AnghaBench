; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pod.c_pod_wait_for_clip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pod.c_pod_wait_for_clip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_line6_pod = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @pod_wait_for_clip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pod_wait_for_clip(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.usb_line6_pod*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.usb_interface* @to_usb_interface(%struct.device* %10)
  store %struct.usb_interface* %11, %struct.usb_interface** %7, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %13 = call %struct.usb_line6_pod* @usb_get_intfdata(%struct.usb_interface* %12)
  store %struct.usb_line6_pod* %13, %struct.usb_line6_pod** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @wait, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %16 = call i32 @DECLARE_WAITQUEUE(i32 %14, %struct.TYPE_6__* %15)
  %17 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %8, align 8
  %18 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %8, align 8
  %21 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = call i32 @add_wait_queue(i32* %22, i32* @wait)
  %24 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %42, %3
  %28 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %8, align 8
  %29 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %35 = call i64 @signal_pending(%struct.TYPE_6__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @ERESTARTSYS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %43

40:                                               ; preds = %33
  %41 = call i32 (...) @schedule()
  br label %42

42:                                               ; preds = %40
  br label %27

43:                                               ; preds = %37, %27
  %44 = load i32, i32* @TASK_RUNNING, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %8, align 8
  %48 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = call i32 @remove_wait_queue(i32* %49, i32* @wait)
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_line6_pod* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @DECLARE_WAITQUEUE(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i64 @signal_pending(%struct.TYPE_6__*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
