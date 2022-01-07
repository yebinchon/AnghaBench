; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devices.c_usb_dump_device_strings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devices.c_usb_dump_device_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i64, i64 }

@format_string_manufacturer = common dso_local global i8* null, align 8
@format_string_product = common dso_local global i8* null, align 8
@format_string_serialnumber = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, %struct.usb_device*)* @usb_dump_device_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @usb_dump_device_strings(i8* %0, i8* %1, %struct.usb_device* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.usb_device*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.usb_device* %2, %struct.usb_device** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ugt i8* %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %4, align 8
  br label %56

13:                                               ; preds = %3
  %14 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** @format_string_manufacturer, align 8
  %21 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @sprintf(i8* %19, i8* %20, i64 %23)
  %25 = load i8*, i8** %5, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %5, align 8
  br label %28

28:                                               ; preds = %18, %13
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ugt i8* %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %54

33:                                               ; preds = %28
  %34 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** @format_string_product, align 8
  %41 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %42 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @sprintf(i8* %39, i8* %40, i64 %43)
  %45 = load i8*, i8** %5, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %5, align 8
  br label %48

48:                                               ; preds = %38, %33
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = icmp ugt i8* %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %54

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %52, %32
  %55 = load i8*, i8** %5, align 8
  store i8* %55, i8** %4, align 8
  br label %56

56:                                               ; preds = %54, %11
  %57 = load i8*, i8** %4, align 8
  ret i8* %57
}

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
