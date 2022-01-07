; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_populate_config_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_populate_config_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_descriptor_header = type { i32 }
%struct.usb_gadget = type { i32 }
%struct.usb_config_descriptor = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@USB_DT_OTHER_SPEED_CONFIG = common dso_local global i64 0, align 8
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@hs_function = common dso_local global %struct.usb_descriptor_header** null, align 8
@fs_function = common dso_local global %struct.usb_descriptor_header** null, align 8
@config_desc = common dso_local global i32 0, align 4
@EP0_BUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, i64*, i64, i32)* @populate_config_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_config_buf(%struct.usb_gadget* %0, i64* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_gadget*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_descriptor_header**, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %14 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ugt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %64

21:                                               ; preds = %4
  %22 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %23 = call i64 @gadget_is_dualspeed(%struct.usb_gadget* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @USB_DT_OTHER_SPEED_CONFIG, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* @USB_SPEED_FULL, align 4
  %31 = load i32, i32* @USB_SPEED_HIGH, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* %10, align 4
  %34 = sub i32 %32, %33
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %29, %25, %21
  %36 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %37 = call i64 @gadget_is_dualspeed(%struct.usb_gadget* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @USB_SPEED_HIGH, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** @hs_function, align 8
  store %struct.usb_descriptor_header** %44, %struct.usb_descriptor_header*** %12, align 8
  br label %47

45:                                               ; preds = %39, %35
  %46 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** @fs_function, align 8
  store %struct.usb_descriptor_header** %46, %struct.usb_descriptor_header*** %12, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %49 = call i32 @gadget_is_otg(%struct.usb_gadget* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %12, align 8
  %53 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %52, i32 1
  store %struct.usb_descriptor_header** %53, %struct.usb_descriptor_header*** %12, align 8
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i64*, i64** %7, align 8
  %56 = load i32, i32* @EP0_BUFSIZE, align 4
  %57 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %12, align 8
  %58 = call i32 @usb_gadget_config_buf(i32* @config_desc, i64* %55, i32 %56, %struct.usb_descriptor_header** %57)
  store i32 %58, i32* %11, align 4
  %59 = load i64, i64* %8, align 8
  %60 = load i64*, i64** %7, align 8
  %61 = bitcast i64* %60 to %struct.usb_config_descriptor*
  %62 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %54, %18
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @gadget_is_dualspeed(%struct.usb_gadget*) #1

declare dso_local i32 @gadget_is_otg(%struct.usb_gadget*) #1

declare dso_local i32 @usb_gadget_config_buf(i32*, i64*, i32, %struct.usb_descriptor_header**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
