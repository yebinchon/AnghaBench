; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wwrap.c_zfLnxUsbSubmitBulkUrb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wwrap.c_zfLnxUsbSubmitBulkUrb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.usb_device = type { i32 }

@USB_DIR_OUT = common dso_local global i64 0, align 8
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfLnxUsbSubmitBulkUrb(%struct.TYPE_5__* %0, %struct.usb_device* %1, i64 %2, i64 %3, i8* %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store %struct.usb_device* %1, %struct.usb_device** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* @USB_DIR_OUT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %24 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @usb_sndbulkpipe(%struct.usb_device* %24, i64 %25)
  %27 = load i8*, i8** %13, align 8
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load i8*, i8** %16, align 8
  %31 = call i32 @usb_fill_bulk_urb(%struct.TYPE_5__* %22, %struct.usb_device* %23, i32 %26, i8* %27, i32 %28, i32 %29, i8* %30)
  %32 = load i32, i32* @URB_ZERO_PACKET, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %48

37:                                               ; preds = %8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %39 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %40 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %40, i64 %41)
  %43 = load i8*, i8** %13, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i8*, i8** %16, align 8
  %47 = call i32 @usb_fill_bulk_urb(%struct.TYPE_5__* %38, %struct.usb_device* %39, i32 %42, i8* %43, i32 %44, i32 %45, i8* %46)
  br label %48

48:                                               ; preds = %37, %21
  %49 = load i64, i64* %11, align 8
  %50 = icmp eq i64 %49, 4
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %51
  br label %58

58:                                               ; preds = %57, %48
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %60 = load i32, i32* @GFP_ATOMIC, align 4
  %61 = call i64 @usb_submit_urb(%struct.TYPE_5__* %59, i32 %60)
  store i64 %61, i64* %17, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp eq i64 %62, 4
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %17, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70, %58
  %72 = load i64, i64* %17, align 8
  ret i64 %72
}

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_5__*, %struct.usb_device*, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i64) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i64) #1

declare dso_local i64 @usb_submit_urb(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
