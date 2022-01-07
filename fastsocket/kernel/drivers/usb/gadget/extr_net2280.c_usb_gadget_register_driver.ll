; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_net2280.c_usb_gadget_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_net2280.c_usb_gadget_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2280 = type { i32, %struct.usb_gadget_driver*, %struct.TYPE_13__, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.usb_gadget_driver = type { i64, i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)*, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }

@the_controller = common dso_local global %struct.net2280* null, align 8
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"bind to driver %s --> %d\0A\00", align 1
@dev_attr_function = common dso_local global i32 0, align 4
@dev_attr_queues = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%s ready, usbctl %08x stdrsp %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_register_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca %struct.net2280*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  %7 = load %struct.net2280*, %struct.net2280** @the_controller, align 8
  store %struct.net2280* %7, %struct.net2280** %4, align 8
  %8 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %9 = icmp ne %struct.usb_gadget_driver* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %12 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @USB_SPEED_HIGH, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %10
  %17 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %18 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %17, i32 0, i32 1
  %19 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %18, align 8
  %20 = icmp ne i32 (%struct.TYPE_13__*)* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %23 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %16, %10, %1
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %155

29:                                               ; preds = %21
  %30 = load %struct.net2280*, %struct.net2280** %4, align 8
  %31 = icmp ne %struct.net2280* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %155

35:                                               ; preds = %29
  %36 = load %struct.net2280*, %struct.net2280** %4, align 8
  %37 = getelementptr inbounds %struct.net2280, %struct.net2280* %36, i32 0, i32 1
  %38 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %37, align 8
  %39 = icmp ne %struct.usb_gadget_driver* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %155

43:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %55, %43
  %45 = load i32, i32* %6, align 4
  %46 = icmp ult i32 %45, 7
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load %struct.net2280*, %struct.net2280** %4, align 8
  %49 = getelementptr inbounds %struct.net2280, %struct.net2280* %48, i32 0, i32 5
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %44

58:                                               ; preds = %44
  %59 = load %struct.net2280*, %struct.net2280** %4, align 8
  %60 = getelementptr inbounds %struct.net2280, %struct.net2280* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %62 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  %64 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %65 = load %struct.net2280*, %struct.net2280** %4, align 8
  %66 = getelementptr inbounds %struct.net2280, %struct.net2280* %65, i32 0, i32 1
  store %struct.usb_gadget_driver* %64, %struct.usb_gadget_driver** %66, align 8
  %67 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %68 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %67, i32 0, i32 3
  %69 = load %struct.net2280*, %struct.net2280** %4, align 8
  %70 = getelementptr inbounds %struct.net2280, %struct.net2280* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store %struct.TYPE_11__* %68, %struct.TYPE_11__** %72, align 8
  %73 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %74 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %73, i32 0, i32 1
  %75 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %74, align 8
  %76 = load %struct.net2280*, %struct.net2280** %4, align 8
  %77 = getelementptr inbounds %struct.net2280, %struct.net2280* %76, i32 0, i32 2
  %78 = call i32 %75(%struct.TYPE_13__* %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %58
  %82 = load %struct.net2280*, %struct.net2280** %4, align 8
  %83 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %84 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 (%struct.net2280*, i8*, i32, i32, ...) @DEBUG(%struct.net2280* %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load %struct.net2280*, %struct.net2280** %4, align 8
  %90 = getelementptr inbounds %struct.net2280, %struct.net2280* %89, i32 0, i32 1
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %90, align 8
  %91 = load %struct.net2280*, %struct.net2280** %4, align 8
  %92 = getelementptr inbounds %struct.net2280, %struct.net2280* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %94, align 8
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %2, align 4
  br label %155

96:                                               ; preds = %58
  %97 = load %struct.net2280*, %struct.net2280** %4, align 8
  %98 = getelementptr inbounds %struct.net2280, %struct.net2280* %97, i32 0, i32 3
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = call i32 @device_create_file(i32* %100, i32* @dev_attr_function)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %141

105:                                              ; preds = %96
  %106 = load %struct.net2280*, %struct.net2280** %4, align 8
  %107 = getelementptr inbounds %struct.net2280, %struct.net2280* %106, i32 0, i32 3
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = call i32 @device_create_file(i32* %109, i32* @dev_attr_queues)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %135

114:                                              ; preds = %105
  %115 = load %struct.net2280*, %struct.net2280** %4, align 8
  %116 = call i32 @net2280_led_active(%struct.net2280* %115, i32 1)
  %117 = load %struct.net2280*, %struct.net2280** %4, align 8
  %118 = call i32 @ep0_start(%struct.net2280* %117)
  %119 = load %struct.net2280*, %struct.net2280** %4, align 8
  %120 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %121 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.net2280*, %struct.net2280** %4, align 8
  %125 = getelementptr inbounds %struct.net2280, %struct.net2280* %124, i32 0, i32 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = call i32 @readl(i32* %127)
  %129 = load %struct.net2280*, %struct.net2280** %4, align 8
  %130 = getelementptr inbounds %struct.net2280, %struct.net2280* %129, i32 0, i32 4
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = call i32 @readl(i32* %132)
  %134 = call i32 (%struct.net2280*, i8*, i32, i32, ...) @DEBUG(%struct.net2280* %119, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %123, i32 %128, i32 %133)
  store i32 0, i32* %2, align 4
  br label %155

135:                                              ; preds = %113
  %136 = load %struct.net2280*, %struct.net2280** %4, align 8
  %137 = getelementptr inbounds %struct.net2280, %struct.net2280* %136, i32 0, i32 3
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = call i32 @device_remove_file(i32* %139, i32* @dev_attr_function)
  br label %141

141:                                              ; preds = %135, %104
  %142 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %143 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %142, i32 0, i32 2
  %144 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %143, align 8
  %145 = load %struct.net2280*, %struct.net2280** %4, align 8
  %146 = getelementptr inbounds %struct.net2280, %struct.net2280* %145, i32 0, i32 2
  %147 = call i32 %144(%struct.TYPE_13__* %146)
  %148 = load %struct.net2280*, %struct.net2280** %4, align 8
  %149 = getelementptr inbounds %struct.net2280, %struct.net2280* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %151, align 8
  %152 = load %struct.net2280*, %struct.net2280** %4, align 8
  %153 = getelementptr inbounds %struct.net2280, %struct.net2280* %152, i32 0, i32 1
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %153, align 8
  %154 = load i32, i32* %5, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %141, %114, %81, %40, %32, %26
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @DEBUG(%struct.net2280*, i8*, i32, i32, ...) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @net2280_led_active(%struct.net2280*, i32) #1

declare dso_local i32 @ep0_start(%struct.net2280*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
