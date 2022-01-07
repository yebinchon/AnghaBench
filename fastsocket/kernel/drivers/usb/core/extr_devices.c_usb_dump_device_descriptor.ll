; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devices.c_usb_dump_device_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devices.c_usb_dump_device_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device_descriptor = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@format_device1 = common dso_local global i8* null, align 8
@format_device2 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, %struct.usb_device_descriptor*)* @usb_dump_device_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @usb_dump_device_descriptor(i8* %0, i8* %1, %struct.usb_device_descriptor* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.usb_device_descriptor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.usb_device_descriptor* %2, %struct.usb_device_descriptor** %7, align 8
  %10 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %7, align 8
  %11 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le16_to_cpu(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %7, align 8
  %15 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ugt i8* %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %4, align 8
  br label %78

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** @format_device1, align 8
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 8
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 255
  %30 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %7, align 8
  %31 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %7, align 8
  %34 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @class_decode(i32 %35)
  %37 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %7, align 8
  %38 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %7, align 8
  %41 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %7, align 8
  %44 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %7, align 8
  %47 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, i8*, i32, i32, i32, i32, ...) @sprintf(i8* %24, i8* %25, i32 %27, i32 %29, i32 %32, i32 %36, i32 %39, i32 %42, i32 %45, i32 %48)
  %50 = load i8*, i8** %5, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %5, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ugt i8* %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %23
  %57 = load i8*, i8** %5, align 8
  store i8* %57, i8** %4, align 8
  br label %78

58:                                               ; preds = %23
  %59 = load i8*, i8** %5, align 8
  %60 = load i8*, i8** @format_device2, align 8
  %61 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %7, align 8
  %62 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le16_to_cpu(i32 %63)
  %65 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %7, align 8
  %66 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le16_to_cpu(i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = ashr i32 %69, 8
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, 255
  %73 = call i32 (i8*, i8*, i32, i32, i32, i32, ...) @sprintf(i8* %59, i8* %60, i32 %64, i32 %68, i32 %70, i32 %72)
  %74 = load i8*, i8** %5, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %5, align 8
  %77 = load i8*, i8** %5, align 8
  store i8* %77, i8** %4, align 8
  br label %78

78:                                               ; preds = %58, %56, %21
  %79 = load i8*, i8** %4, align 8
  ret i8* %79
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @class_decode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
