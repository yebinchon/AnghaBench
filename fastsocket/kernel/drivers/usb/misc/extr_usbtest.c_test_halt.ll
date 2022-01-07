; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_test_halt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_test_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtest_dev = type { i32 }
%struct.urb = type { i32, i32 }

@USB_REQ_SET_FEATURE = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ep %02x couldn't set halt, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ep %02x couldn't clear halt, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtest_dev*, i32, %struct.urb*)* @test_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_halt(%struct.usbtest_dev* %0, i32 %1, %struct.urb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbtest_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  store %struct.usbtest_dev* %0, %struct.usbtest_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.urb* %2, %struct.urb** %7, align 8
  %9 = load %struct.usbtest_dev*, %struct.usbtest_dev** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.urb*, %struct.urb** %7, align 8
  %12 = call i32 @verify_not_halted(%struct.usbtest_dev* %9, i32 %10, %struct.urb* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %74

17:                                               ; preds = %3
  %18 = load %struct.urb*, %struct.urb** %7, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.urb*, %struct.urb** %7, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usb_sndctrlpipe(i32 %23, i32 0)
  %25 = load i32, i32* @USB_REQ_SET_FEATURE, align 4
  %26 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %27 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %30 = call i32 @usb_control_msg(i32 %20, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32* null, i32 0, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %17
  %34 = load %struct.usbtest_dev*, %struct.usbtest_dev** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @ERROR(%struct.usbtest_dev* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %74

39:                                               ; preds = %17
  %40 = load %struct.usbtest_dev*, %struct.usbtest_dev** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.urb*, %struct.urb** %7, align 8
  %43 = call i32 @verify_halted(%struct.usbtest_dev* %40, i32 %41, %struct.urb* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %74

48:                                               ; preds = %39
  %49 = load %struct.urb*, %struct.urb** %7, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.urb*, %struct.urb** %7, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @usb_clear_halt(i32 %51, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load %struct.usbtest_dev*, %struct.usbtest_dev** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @ERROR(%struct.usbtest_dev* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %74

64:                                               ; preds = %48
  %65 = load %struct.usbtest_dev*, %struct.usbtest_dev** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.urb*, %struct.urb** %7, align 8
  %68 = call i32 @verify_not_halted(%struct.usbtest_dev* %65, i32 %66, %struct.urb* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %74

73:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %71, %58, %46, %33, %15
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @verify_not_halted(%struct.usbtest_dev*, i32, %struct.urb*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @ERROR(%struct.usbtest_dev*, i8*, i32, i32) #1

declare dso_local i32 @verify_halted(%struct.usbtest_dev*, i32, %struct.urb*) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
