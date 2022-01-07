; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devices.c_usb_dump_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devices.c_usb_dump_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, %struct.usb_device*)* @usb_dump_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @usb_dump_desc(i8* %0, i8* %1, %struct.usb_device* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.usb_device* %2, %struct.usb_device** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ugt i8* %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %4, align 8
  br label %72

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 3
  %19 = call i8* @usb_dump_device_descriptor(i8* %15, i8* %16, %struct.TYPE_2__* %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ugt i8* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %4, align 8
  br label %72

25:                                               ; preds = %14
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %29 = call i8* @usb_dump_device_strings(i8* %26, i8* %27, %struct.usb_device* %28)
  store i8* %29, i8** %5, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %67, %25
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %30
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ugt i8* %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i8*, i8** %5, align 8
  store i8* %42, i8** %4, align 8
  br label %72

43:                                               ; preds = %37
  %44 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %45 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %50 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %56 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %62 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  %65 = zext i1 %64 to i32
  %66 = call i8* @usb_dump_config(i32 %46, i8* %47, i8* %48, i64 %54, i32 %65)
  store i8* %66, i8** %5, align 8
  br label %67

67:                                               ; preds = %43
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %30

70:                                               ; preds = %30
  %71 = load i8*, i8** %5, align 8
  store i8* %71, i8** %4, align 8
  br label %72

72:                                               ; preds = %70, %41, %23, %12
  %73 = load i8*, i8** %4, align 8
  ret i8* %73
}

declare dso_local i8* @usb_dump_device_descriptor(i8*, i8*, %struct.TYPE_2__*) #1

declare dso_local i8* @usb_dump_device_strings(i8*, i8*, %struct.usb_device*) #1

declare dso_local i8* @usb_dump_config(i32, i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
