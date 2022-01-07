; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_usb_gadget_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_usb_gadget_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_udc = type { %struct.TYPE_8__, %struct.usb_gadget_driver*, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.usb_gadget_driver = type { i64, i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)*, %struct.TYPE_7__, i32, i32 }

@the_controller = common dso_local global %struct.pxa_udc* null, align 8
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"device_add error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"bind to driver %s --> error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"registered gadget driver '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"can't bind to transceiver\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_register_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca %struct.pxa_udc*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  %6 = load %struct.pxa_udc*, %struct.pxa_udc** @the_controller, align 8
  store %struct.pxa_udc* %6, %struct.pxa_udc** %4, align 8
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
  br label %152

33:                                               ; preds = %25
  %34 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %35 = icmp ne %struct.pxa_udc* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %152

39:                                               ; preds = %33
  %40 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %41 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %40, i32 0, i32 1
  %42 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %41, align 8
  %43 = icmp ne %struct.usb_gadget_driver* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %152

47:                                               ; preds = %39
  %48 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %49 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %50 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %49, i32 0, i32 1
  store %struct.usb_gadget_driver* %48, %struct.usb_gadget_driver** %50, align 8
  %51 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %52 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %51, i32 0, i32 3
  %53 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %54 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %56, align 8
  %57 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %58 = call i32 @dplus_pullup(%struct.pxa_udc* %57, i32 1)
  %59 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %60 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = call i32 @device_add(%struct.TYPE_9__* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %47
  %66 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %67 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 (i32, i8*, ...) @dev_err(i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %144

71:                                               ; preds = %47
  %72 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %73 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %72, i32 0, i32 1
  %74 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %73, align 8
  %75 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %76 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %75, i32 0, i32 0
  %77 = call i32 %74(%struct.TYPE_8__* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %71
  %81 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %82 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %85 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 (i32, i8*, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %88)
  br label %139

90:                                               ; preds = %71
  %91 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %92 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %95 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dev_dbg(i32 %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %100 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %90
  %104 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %105 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %108 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %107, i32 0, i32 0
  %109 = call i32 @otg_set_peripheral(i64 %106, %struct.TYPE_8__* %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %103
  %113 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %114 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i32, i8*, ...) @dev_err(i32 %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %126

117:                                              ; preds = %103
  br label %118

118:                                              ; preds = %117, %90
  %119 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %120 = call i64 @should_enable_udc(%struct.pxa_udc* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %124 = call i32 @udc_enable(%struct.pxa_udc* %123)
  br label %125

125:                                              ; preds = %122, %118
  store i32 0, i32* %2, align 4
  br label %152

126:                                              ; preds = %112
  %127 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %128 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %127, i32 0, i32 2
  %129 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %128, align 8
  %130 = icmp ne i32 (%struct.TYPE_8__*)* %129, null
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %133 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %132, i32 0, i32 2
  %134 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %133, align 8
  %135 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %136 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %135, i32 0, i32 0
  %137 = call i32 %134(%struct.TYPE_8__* %136)
  br label %138

138:                                              ; preds = %131, %126
  br label %139

139:                                              ; preds = %138, %80
  %140 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %141 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = call i32 @device_del(%struct.TYPE_9__* %142)
  br label %144

144:                                              ; preds = %139, %65
  %145 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %146 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %145, i32 0, i32 1
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %146, align 8
  %147 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %148 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %150, align 8
  %151 = load i32, i32* %5, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %144, %125, %44, %36, %30
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @dplus_pullup(%struct.pxa_udc*, i32) #1

declare dso_local i32 @device_add(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @otg_set_peripheral(i64, %struct.TYPE_8__*) #1

declare dso_local i64 @should_enable_udc(%struct.pxa_udc*) #1

declare dso_local i32 @udc_enable(%struct.pxa_udc*) #1

declare dso_local i32 @device_del(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
