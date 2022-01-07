; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_usb_gadget_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_usb_gadget_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa25x_udc = type { i32, %struct.TYPE_8__, i64, %struct.usb_gadget_driver* }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.usb_gadget_driver = type { i64, i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)*, %struct.TYPE_7__, i32, i32 }

@the_controller = common dso_local global %struct.pxa25x_udc* null, align 8
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"bind to driver %s --> error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"registered gadget driver '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"can't bind to transceiver\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_register_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca %struct.pxa25x_udc*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  %6 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** @the_controller, align 8
  store %struct.pxa25x_udc* %6, %struct.pxa25x_udc** %4, align 8
  %7 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %8 = icmp ne %struct.usb_gadget_driver* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %11 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USB_SPEED_FULL, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %30, label %15

15:                                               ; preds = %9
  %16 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %17 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %16, i32 0, i32 1
  %18 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %17, align 8
  %19 = icmp ne i32 (%struct.TYPE_8__*)* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %22 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %27 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25, %20, %15, %9, %1
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %135

33:                                               ; preds = %25
  %34 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %35 = icmp ne %struct.pxa25x_udc* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %135

39:                                               ; preds = %33
  %40 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %41 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %40, i32 0, i32 3
  %42 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %41, align 8
  %43 = icmp ne %struct.usb_gadget_driver* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %135

47:                                               ; preds = %39
  %48 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %49 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %50 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %49, i32 0, i32 3
  store %struct.usb_gadget_driver* %48, %struct.usb_gadget_driver** %50, align 8
  %51 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %52 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %51, i32 0, i32 3
  %53 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %54 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %56, align 8
  %57 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %58 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %60 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = call i32 @device_add(%struct.TYPE_9__* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %47
  br label %66

66:                                               ; preds = %83, %65
  %67 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %68 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %67, i32 0, i32 3
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %68, align 8
  %69 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %70 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %72, align 8
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %135

74:                                               ; preds = %47
  %75 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %76 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %75, i32 0, i32 1
  %77 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %76, align 8
  %78 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %79 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %78, i32 0, i32 1
  %80 = call i32 %77(%struct.TYPE_8__* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %74
  %84 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %85 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 (i8*, ...) @DMSG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %91 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = call i32 @device_del(%struct.TYPE_9__* %92)
  br label %66

94:                                               ; preds = %74
  %95 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %96 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i8*, ...) @DMSG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %101 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %128

104:                                              ; preds = %94
  %105 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %106 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %109 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %108, i32 0, i32 1
  %110 = call i32 @otg_set_peripheral(i64 %107, %struct.TYPE_8__* %109)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %104
  %114 = call i32 (i8*, ...) @DMSG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %115 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %116 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %115, i32 0, i32 2
  %117 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %116, align 8
  %118 = icmp ne i32 (%struct.TYPE_8__*)* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %121 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %120, i32 0, i32 2
  %122 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %121, align 8
  %123 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %124 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %123, i32 0, i32 1
  %125 = call i32 %122(%struct.TYPE_8__* %124)
  br label %126

126:                                              ; preds = %119, %113
  br label %133

127:                                              ; preds = %104
  br label %128

128:                                              ; preds = %127, %94
  %129 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %130 = call i32 @pullup(%struct.pxa25x_udc* %129)
  %131 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %132 = call i32 @dump_state(%struct.pxa25x_udc* %131)
  store i32 0, i32* %2, align 4
  br label %135

133:                                              ; preds = %126
  %134 = load i32, i32* %5, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %133, %128, %66, %44, %36, %30
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @device_add(%struct.TYPE_9__*) #1

declare dso_local i32 @DMSG(i8*, ...) #1

declare dso_local i32 @device_del(%struct.TYPE_9__*) #1

declare dso_local i32 @otg_set_peripheral(i64, %struct.TYPE_8__*) #1

declare dso_local i32 @pullup(%struct.pxa25x_udc*) #1

declare dso_local i32 @dump_state(%struct.pxa25x_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
