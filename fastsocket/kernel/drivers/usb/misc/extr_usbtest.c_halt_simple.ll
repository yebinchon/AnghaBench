; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_halt_simple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_halt_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtest_dev = type { i64, i64 }
%struct.urb = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtest_dev*)* @halt_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @halt_simple(%struct.usbtest_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbtest_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  store %struct.usbtest_dev* %0, %struct.usbtest_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %8 = call i32 @testdev_to_usbdev(%struct.usbtest_dev* %7)
  %9 = call %struct.urb* @simple_alloc_urb(i32 %8, i32 0, i32 512)
  store %struct.urb* %9, %struct.urb** %6, align 8
  %10 = load %struct.urb*, %struct.urb** %6, align 8
  %11 = icmp eq %struct.urb* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %64

15:                                               ; preds = %1
  %16 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %17 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %22 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @usb_pipeendpoint(i64 %23)
  %25 = load i32, i32* @USB_DIR_IN, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %4, align 4
  %27 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %28 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.urb*, %struct.urb** %6, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.urb*, %struct.urb** %6, align 8
  %35 = call i32 @test_halt(%struct.usbtest_dev* %32, i32 %33, %struct.urb* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %20
  br label %60

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %39, %15
  %41 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %42 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %47 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @usb_pipeendpoint(i64 %48)
  store i32 %49, i32* %4, align 4
  %50 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %51 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.urb*, %struct.urb** %6, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.urb*, %struct.urb** %6, align 8
  %58 = call i32 @test_halt(%struct.usbtest_dev* %55, i32 %56, %struct.urb* %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %45, %40
  br label %60

60:                                               ; preds = %59, %38
  %61 = load %struct.urb*, %struct.urb** %6, align 8
  %62 = call i32 @simple_free_urb(%struct.urb* %61)
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %12
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.urb* @simple_alloc_urb(i32, i32, i32) #1

declare dso_local i32 @testdev_to_usbdev(%struct.usbtest_dev*) #1

declare dso_local i32 @usb_pipeendpoint(i64) #1

declare dso_local i32 @test_halt(%struct.usbtest_dev*, i32, %struct.urb*) #1

declare dso_local i32 @simple_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
