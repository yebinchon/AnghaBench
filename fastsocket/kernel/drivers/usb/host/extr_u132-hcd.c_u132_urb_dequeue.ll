; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_urb_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_urb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i32 }
%struct.u132 = type { i32, %struct.u132_endp**, %struct.u132_udev*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.u132_endp = type { i32 }
%struct.u132_udev = type { i64*, i64* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"device has been removed %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @u132_urb_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u132_urb_dequeue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.u132*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.u132_udev*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.u132_endp*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.u132_endp*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %18 = call %struct.u132* @hcd_to_u132(%struct.usb_hcd* %17)
  store %struct.u132* %18, %struct.u132** %8, align 8
  %19 = load %struct.u132*, %struct.u132** %8, align 8
  %20 = getelementptr inbounds %struct.u132, %struct.u132* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load %struct.u132*, %struct.u132** %8, align 8
  %25 = getelementptr inbounds %struct.u132, %struct.u132* %24, i32 0, i32 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.u132*, %struct.u132** %8, align 8
  %29 = getelementptr inbounds %struct.u132, %struct.u132* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %98

34:                                               ; preds = %3
  %35 = load %struct.urb*, %struct.urb** %6, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @usb_pipedevice(i32 %37)
  store i64 %38, i64* %9, align 8
  %39 = load %struct.urb*, %struct.urb** %6, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @usb_pipeendpoint(i32 %41)
  store i64 %42, i64* %10, align 8
  %43 = load %struct.u132*, %struct.u132** %8, align 8
  %44 = getelementptr inbounds %struct.u132, %struct.u132* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %11, align 8
  %50 = load %struct.u132*, %struct.u132** %8, align 8
  %51 = getelementptr inbounds %struct.u132, %struct.u132* %50, i32 0, i32 2
  %52 = load %struct.u132_udev*, %struct.u132_udev** %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %52, i64 %53
  store %struct.u132_udev* %54, %struct.u132_udev** %12, align 8
  %55 = load %struct.urb*, %struct.urb** %6, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @usb_pipein(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %34
  %61 = load %struct.u132_udev*, %struct.u132_udev** %12, align 8
  %62 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %13, align 8
  %67 = load %struct.u132*, %struct.u132** %8, align 8
  %68 = getelementptr inbounds %struct.u132, %struct.u132* %67, i32 0, i32 1
  %69 = load %struct.u132_endp**, %struct.u132_endp*** %68, align 8
  %70 = load i64, i64* %13, align 8
  %71 = sub i64 %70, 1
  %72 = getelementptr inbounds %struct.u132_endp*, %struct.u132_endp** %69, i64 %71
  %73 = load %struct.u132_endp*, %struct.u132_endp** %72, align 8
  store %struct.u132_endp* %73, %struct.u132_endp** %14, align 8
  %74 = load %struct.u132*, %struct.u132** %8, align 8
  %75 = load %struct.u132_endp*, %struct.u132_endp** %14, align 8
  %76 = load %struct.urb*, %struct.urb** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @u132_endp_urb_dequeue(%struct.u132* %74, %struct.u132_endp* %75, %struct.urb* %76, i32 %77)
  store i32 %78, i32* %4, align 4
  br label %98

79:                                               ; preds = %34
  %80 = load %struct.u132_udev*, %struct.u132_udev** %12, align 8
  %81 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %15, align 8
  %86 = load %struct.u132*, %struct.u132** %8, align 8
  %87 = getelementptr inbounds %struct.u132, %struct.u132* %86, i32 0, i32 1
  %88 = load %struct.u132_endp**, %struct.u132_endp*** %87, align 8
  %89 = load i64, i64* %15, align 8
  %90 = sub i64 %89, 1
  %91 = getelementptr inbounds %struct.u132_endp*, %struct.u132_endp** %88, i64 %90
  %92 = load %struct.u132_endp*, %struct.u132_endp** %91, align 8
  store %struct.u132_endp* %92, %struct.u132_endp** %16, align 8
  %93 = load %struct.u132*, %struct.u132** %8, align 8
  %94 = load %struct.u132_endp*, %struct.u132_endp** %16, align 8
  %95 = load %struct.urb*, %struct.urb** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @u132_endp_urb_dequeue(%struct.u132* %93, %struct.u132_endp* %94, %struct.urb* %95, i32 %96)
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %79, %60, %23
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.u132* @hcd_to_u132(%struct.usb_hcd*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @usb_pipedevice(i32) #1

declare dso_local i64 @usb_pipeendpoint(i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @u132_endp_urb_dequeue(%struct.u132*, %struct.u132_endp*, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
