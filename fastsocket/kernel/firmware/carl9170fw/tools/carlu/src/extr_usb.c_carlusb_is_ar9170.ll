; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_usb.c_carlusb_is_ar9170.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_usb.c_carlusb_is_ar9170.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32 }
%struct.libusb_device_descriptor = type { i64, i64 }

@dev_list = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"== found device \22%s %s\22 [0x%04x:0x%04x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libusb_device_descriptor*)* @carlusb_is_ar9170 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carlusb_is_ar9170(%struct.libusb_device_descriptor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.libusb_device_descriptor*, align 8
  %4 = alloca i32, align 4
  store %struct.libusb_device_descriptor* %0, %struct.libusb_device_descriptor** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %54, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dev_list, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %7)
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %57

10:                                               ; preds = %5
  %11 = load %struct.libusb_device_descriptor*, %struct.libusb_device_descriptor** %3, align 8
  %12 = getelementptr inbounds %struct.libusb_device_descriptor, %struct.libusb_device_descriptor* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dev_list, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %13, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %10
  %22 = load %struct.libusb_device_descriptor*, %struct.libusb_device_descriptor** %3, align 8
  %23 = getelementptr inbounds %struct.libusb_device_descriptor, %struct.libusb_device_descriptor* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dev_list, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %24, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %21
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dev_list, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dev_list, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.libusb_device_descriptor*, %struct.libusb_device_descriptor** %3, align 8
  %46 = getelementptr inbounds %struct.libusb_device_descriptor, %struct.libusb_device_descriptor* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.libusb_device_descriptor*, %struct.libusb_device_descriptor** %3, align 8
  %49 = getelementptr inbounds %struct.libusb_device_descriptor, %struct.libusb_device_descriptor* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %44, i64 %47, i64 %50)
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %58

53:                                               ; preds = %21, %10
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %5

57:                                               ; preds = %5
  store i32 -1, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %32
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @dbg(i8*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
