; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_usb_gadget_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_usb_gadget_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc = type { %struct.TYPE_11__*, %struct.TYPE_12__, %struct.usb_gadget_driver*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.usb_gadget_driver = type { i32 (%struct.TYPE_12__*)*, i64, %struct.TYPE_9__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@udc = common dso_local global %struct.udc* null, align 8
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@UDC_EP0IN_IX = common dso_local global i64 0, align 8
@UDC_EP0OUT_IX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"binding to %s returning %d\0A\00", align 1
@UDC_DEVCTL_SD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_register_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca %struct.udc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  %7 = load %struct.udc*, %struct.udc** @udc, align 8
  store %struct.udc* %7, %struct.udc** %4, align 8
  %8 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %9 = icmp ne %struct.usb_gadget_driver* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %12 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %11, i32 0, i32 0
  %13 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %12, align 8
  %14 = icmp ne i32 (%struct.TYPE_12__*)* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %17 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %22 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @USB_SPEED_HIGH, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %15, %10, %1
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %114

29:                                               ; preds = %20
  %30 = load %struct.udc*, %struct.udc** %4, align 8
  %31 = icmp ne %struct.udc* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %114

35:                                               ; preds = %29
  %36 = load %struct.udc*, %struct.udc** %4, align 8
  %37 = getelementptr inbounds %struct.udc, %struct.udc* %36, i32 0, i32 2
  %38 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %37, align 8
  %39 = icmp ne %struct.usb_gadget_driver* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %114

43:                                               ; preds = %35
  %44 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %45 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %48 = load %struct.udc*, %struct.udc** %4, align 8
  %49 = getelementptr inbounds %struct.udc, %struct.udc* %48, i32 0, i32 2
  store %struct.usb_gadget_driver* %47, %struct.usb_gadget_driver** %49, align 8
  %50 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %51 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %50, i32 0, i32 2
  %52 = load %struct.udc*, %struct.udc** %4, align 8
  %53 = getelementptr inbounds %struct.udc, %struct.udc* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %55, align 8
  %56 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %57 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %57, align 8
  %59 = load %struct.udc*, %struct.udc** %4, align 8
  %60 = getelementptr inbounds %struct.udc, %struct.udc* %59, i32 0, i32 1
  %61 = call i32 %58(%struct.TYPE_12__* %60)
  store i32 %61, i32* %5, align 4
  %62 = load %struct.udc*, %struct.udc** %4, align 8
  %63 = getelementptr inbounds %struct.udc, %struct.udc* %62, i32 0, i32 3
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load i64, i64* @UDC_EP0IN_IX, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.udc*, %struct.udc** %4, align 8
  %71 = getelementptr inbounds %struct.udc, %struct.udc* %70, i32 0, i32 3
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32 %69, i32* %76, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %43
  %80 = load %struct.udc*, %struct.udc** %4, align 8
  %81 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %82 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @DBG(%struct.udc* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load %struct.udc*, %struct.udc** %4, align 8
  %88 = getelementptr inbounds %struct.udc, %struct.udc* %87, i32 0, i32 2
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %88, align 8
  %89 = load %struct.udc*, %struct.udc** %4, align 8
  %90 = getelementptr inbounds %struct.udc, %struct.udc* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %92, align 8
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %114

94:                                               ; preds = %43
  %95 = load %struct.udc*, %struct.udc** %4, align 8
  %96 = call i32 @setup_ep0(%struct.udc* %95)
  %97 = load %struct.udc*, %struct.udc** %4, align 8
  %98 = getelementptr inbounds %struct.udc, %struct.udc* %97, i32 0, i32 0
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = call i32 @readl(i32* %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @UDC_DEVCTL_SD, align 4
  %104 = call i32 @AMD_CLEAR_BIT(i32 %103)
  %105 = and i32 %102, %104
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.udc*, %struct.udc** %4, align 8
  %108 = getelementptr inbounds %struct.udc, %struct.udc* %107, i32 0, i32 0
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = call i32 @writel(i32 %106, i32* %110)
  %112 = load %struct.udc*, %struct.udc** %4, align 8
  %113 = call i32 @usb_connect(%struct.udc* %112)
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %94, %79, %40, %32, %26
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @DBG(%struct.udc*, i8*, i32, i32) #1

declare dso_local i32 @setup_ep0(%struct.udc*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @AMD_CLEAR_BIT(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @usb_connect(%struct.udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
