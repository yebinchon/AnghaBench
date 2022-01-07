; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wwrap.c_zfLnxUsbSubmitIntUrb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wwrap.c_zfLnxUsbSubmitIntUrb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@USB_DIR_OUT = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfLnxUsbSubmitIntUrb(i32* %0, %struct.usb_device* %1, i64 %2, i64 %3, i8* %4, i32 %5, i32 %6, i8* %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store %struct.usb_device* %1, %struct.usb_device** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i32 %8, i32* %18, align 4
  %20 = load i64, i64* %13, align 8
  %21 = load i64, i64* @USB_DIR_OUT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %9
  %24 = load i32*, i32** %10, align 8
  %25 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @usb_sndbulkpipe(%struct.usb_device* %26, i64 %27)
  %29 = load i8*, i8** %14, align 8
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i8*, i8** %17, align 8
  %33 = load i32, i32* %18, align 4
  %34 = call i32 @usb_fill_int_urb(i32* %24, %struct.usb_device* %25, i32 %28, i8* %29, i32 %30, i32 %31, i8* %32, i32 %33)
  br label %47

35:                                               ; preds = %9
  %36 = load i32*, i32** %10, align 8
  %37 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %38 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %38, i64 %39)
  %41 = load i8*, i8** %14, align 8
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i8*, i8** %17, align 8
  %45 = load i32, i32* %18, align 4
  %46 = call i32 @usb_fill_int_urb(i32* %36, %struct.usb_device* %37, i32 %40, i8* %41, i32 %42, i32 %43, i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %35, %23
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call i32 @usb_submit_urb(i32* %48, i32 %49)
  store i32 %50, i32* %19, align 4
  %51 = load i32, i32* %19, align 4
  ret i32 %51
}

declare dso_local i32 @usb_fill_int_urb(i32*, %struct.usb_device*, i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i64) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i64) #1

declare dso_local i32 @usb_submit_urb(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
