; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_usb_enumerate_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_usb_enumerate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i64, %struct.TYPE_2__, i8*, i8*, i8*, i32, i32* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"can't read configurations, error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"n/a (unauthorized)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @usb_enumerate_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_enumerate_device(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %4 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %5 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %4, i32 0, i32 7
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %10 = call i32 @usb_get_configuration(%struct.usb_device* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 6
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %70

18:                                               ; preds = %8
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kstrdup(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kstrdup(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kstrdup(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %41 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  br label %67

42:                                               ; preds = %24, %19
  %43 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %44 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %45 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @usb_cache_string(%struct.usb_device* %43, i32 %47)
  %49 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %50 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %49, i32 0, i32 5
  store i8* %48, i8** %50, align 8
  %51 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %52 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %53 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @usb_cache_string(%struct.usb_device* %51, i32 %55)
  %57 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %58 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %60 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %61 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i8* @usb_cache_string(%struct.usb_device* %59, i32 %63)
  %65 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %66 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %42, %29
  %68 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %69 = call i32 @usb_enumerate_device_otg(%struct.usb_device* %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %13
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @usb_get_configuration(%struct.usb_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i8* @usb_cache_string(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_enumerate_device_otg(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
