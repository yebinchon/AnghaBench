; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_dowrid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_dowrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i8*, i32, i32, i64, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@HFA384x_USB_WRIDREQ = common dso_local global i32 0, align 4
@DOWAIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i8*, i32, i32, i32, i8*)* @hfa384x_dowrid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfa384x_dowrid(i32* %0, i64 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %21 = call %struct.TYPE_12__* (...) @usbctlx_alloc()
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %18, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %23 = icmp eq %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %8
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %17, align 4
  br label %99

27:                                               ; preds = %8
  %28 = load i32, i32* @HFA384x_USB_WRIDREQ, align 4
  %29 = call i8* @cpu_to_le16(i32 %28)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  store i8* %29, i8** %33, align 8
  %34 = load i32, i32* %13, align 4
  %35 = zext i32 %34 to i64
  %36 = add i64 8, %35
  %37 = add i64 %36, 1
  %38 = udiv i64 %37, 2
  %39 = trunc i64 %38 to i32
  %40 = call i8* @cpu_to_le16(i32 %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  store i8* %40, i8** %44, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i8* @cpu_to_le16(i32 %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  store i8* %46, i8** %50, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @memcpy(i32 %55, i8* %56, i32 %57)
  %59 = load i32, i32* %13, align 4
  %60 = zext i32 %59 to i64
  %61 = add i64 24, %60
  %62 = trunc i64 %61 to i32
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 5
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %79 = call i32 @hfa384x_usbctlx_submit(i32* %77, %struct.TYPE_12__* %78)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %27
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %84 = call i32 @kfree(%struct.TYPE_12__* %83)
  br label %98

85:                                               ; preds = %27
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* @DOWAIT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i32*, i32** %9, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = call i32 @init_wrid_completor(i32* %19, i32* %94, i32* %20)
  %96 = call i32 @hfa384x_usbctlx_complete_sync(i32* %90, %struct.TYPE_12__* %91, i32 %95)
  store i32 %96, i32* %17, align 4
  br label %97

97:                                               ; preds = %89, %85
  br label %98

98:                                               ; preds = %97, %82
  br label %99

99:                                               ; preds = %98, %24
  %100 = load i32, i32* %17, align 4
  ret i32 %100
}

declare dso_local %struct.TYPE_12__* @usbctlx_alloc(...) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @hfa384x_usbctlx_submit(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @kfree(%struct.TYPE_12__*) #1

declare dso_local i32 @hfa384x_usbctlx_complete_sync(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @init_wrid_completor(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
