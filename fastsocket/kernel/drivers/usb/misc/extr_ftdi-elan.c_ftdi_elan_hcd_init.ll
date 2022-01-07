; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_hcd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_hcd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i8*, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32* }

@EBUSY = common dso_local global i32 0, align 4
@ftdi_release_platform_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"u132_hcd\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"requesting module '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"registering '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*)* @ftdi_elan_hcd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_hcd_init(%struct.usb_ftdi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ftdi*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %3, align 8
  %5 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %6 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %90

14:                                               ; preds = %1
  %15 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %16 = call i32 @ftdi_elan_get_kref(%struct.usb_ftdi* %15)
  %17 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %18 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 100, i32* %19, align 8
  %20 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %21 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %24 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %27 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 4
  store i32 %25, i32* %28, align 8
  %29 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %30 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %33 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 4
  %35 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %36 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %40 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %43 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %42, i32 0, i32 3
  %44 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %45 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %47, align 8
  %48 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %49 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  %52 = load i32, i32* @ftdi_release_platform_dev, align 4
  %53 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %54 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 8
  %57 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %58 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  %61 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %62 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @snprintf(i8* %63, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %66 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %69 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  %71 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %72 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %71, i32 0, i32 2
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = call i32 @dev_info(i32* %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %76 = call i32 @request_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %77 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %78 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %77, i32 0, i32 2
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %82 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @dev_info(i32* %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %84)
  %86 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %87 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %86, i32 0, i32 1
  %88 = call i32 @platform_device_register(%struct.TYPE_8__* %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %14, %11
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @ftdi_elan_get_kref(%struct.usb_ftdi*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @request_module(i8*) #1

declare dso_local i32 @platform_device_register(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
