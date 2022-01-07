; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_printer.c_config_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_printer.c_config_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_descriptor_header = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_config_descriptor = type { i64 }

@fs_printer_function = common dso_local global %struct.usb_descriptor_header** null, align 8
@device_desc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@config_desc = common dso_local global i32 0, align 4
@USB_DESC_BUFSIZE = common dso_local global i32 0, align 4
@USB_DT_OTHER_SPEED_CONFIG = common dso_local global i64 0, align 8
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@hs_printer_function = common dso_local global %struct.usb_descriptor_header** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i64, i32, i32)* @config_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_buf(i32 %0, i64* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_descriptor_header**, align 8
  store i32 %0, i32* %7, align 4
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** @fs_printer_function, align 8
  store %struct.usb_descriptor_header** %14, %struct.usb_descriptor_header*** %13, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @device_desc, i32 0, i32 0), align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %42

21:                                               ; preds = %5
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %13, align 8
  %26 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %25, i32 1
  store %struct.usb_descriptor_header** %26, %struct.usb_descriptor_header*** %13, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i64*, i64** %8, align 8
  %29 = load i32, i32* @USB_DESC_BUFSIZE, align 4
  %30 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %13, align 8
  %31 = call i32 @usb_gadget_config_buf(i32* @config_desc, i64* %28, i32 %29, %struct.usb_descriptor_header** %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %6, align 4
  br label %42

36:                                               ; preds = %27
  %37 = load i64, i64* %9, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = bitcast i64* %38 to %struct.usb_config_descriptor*
  %40 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %36, %34, %18
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @usb_gadget_config_buf(i32*, i64*, i32, %struct.usb_descriptor_header**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
