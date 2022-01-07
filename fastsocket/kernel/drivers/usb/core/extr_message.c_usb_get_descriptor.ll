; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_message.c_usb_get_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_message.c_usb_get_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@USB_REQ_GET_DESCRIPTOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_get_descriptor(%struct.usb_device* %0, i8 zeroext %1, i8 zeroext %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i8*, i8** %9, align 8
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @memset(i8* %13, i32 0, i32 %14)
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %59, %5
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %62

19:                                               ; preds = %16
  %20 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %21 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %22 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %21, i32 0)
  %23 = load i32, i32* @USB_REQ_GET_DESCRIPTOR, align 4
  %24 = load i32, i32* @USB_DIR_IN, align 4
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i32
  %27 = shl i32 %26, 8
  %28 = load i8, i8* %8, align 1
  %29 = zext i8 %28 to i32
  %30 = add nsw i32 %27, %29
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %35 = call i32 @usb_control_msg(%struct.usb_device* %20, i32 %22, i32 %23, i32 %24, i8 zeroext %31, i32 0, i8* %32, i32 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %19
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %59

44:                                               ; preds = %38, %19
  %45 = load i32, i32* %12, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* %7, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @ENODATA, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %12, align 4
  br label %59

58:                                               ; preds = %47, %44
  br label %62

59:                                               ; preds = %55, %43
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %16

62:                                               ; preds = %58, %16
  %63 = load i32, i32* %12, align 4
  ret i32 %63
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i8 zeroext, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
