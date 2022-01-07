; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_driver.c_usb_match_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_driver.c_usb_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i32, i32 }
%struct.usb_device_id = type { i32, i64, i64, i64, i64, i64, i64, i64 }

@USB_DEVICE_ID_MATCH_VENDOR = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_PRODUCT = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_DEV_LO = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_DEV_HI = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_DEV_CLASS = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_DEV_SUBCLASS = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_DEV_PROTOCOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_match_device(%struct.usb_device* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %6 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %7 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @USB_DEVICE_ID_MATCH_VENDOR, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %14 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @le16_to_cpu(i32 %19)
  %21 = icmp ne i64 %15, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %129

23:                                               ; preds = %12, %2
  %24 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %25 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @USB_DEVICE_ID_MATCH_PRODUCT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %32 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @le16_to_cpu(i32 %37)
  %39 = icmp ne i64 %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %129

41:                                               ; preds = %30, %23
  %42 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %43 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @USB_DEVICE_ID_MATCH_DEV_LO, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %50 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %53 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @le16_to_cpu(i32 %55)
  %57 = icmp sgt i64 %51, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %129

59:                                               ; preds = %48, %41
  %60 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %61 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @USB_DEVICE_ID_MATCH_DEV_HI, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %59
  %67 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %68 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %71 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @le16_to_cpu(i32 %73)
  %75 = icmp slt i64 %69, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %129

77:                                               ; preds = %66, %59
  %78 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %79 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @USB_DEVICE_ID_MATCH_DEV_CLASS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %77
  %85 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %86 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %89 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %87, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %129

94:                                               ; preds = %84, %77
  %95 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %96 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @USB_DEVICE_ID_MATCH_DEV_SUBCLASS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %94
  %102 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %103 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %106 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %104, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %129

111:                                              ; preds = %101, %94
  %112 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %113 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @USB_DEVICE_ID_MATCH_DEV_PROTOCOL, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %111
  %119 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %120 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %123 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %121, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  store i32 0, i32* %3, align 4
  br label %129

128:                                              ; preds = %118, %111
  store i32 1, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %127, %110, %93, %76, %58, %40, %22
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
