; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_iso_alloc_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_iso_alloc_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_2__*, i32, i32, %struct.usb_device* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.usb_device = type { i32 }
%struct.usb_endpoint_descriptor = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@iso_callback = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* (%struct.usb_device*, i32, %struct.usb_endpoint_descriptor*, i64)* @iso_alloc_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @iso_alloc_urb(%struct.usb_device* %0, i32 %1, %struct.usb_endpoint_descriptor* %2, i64 %3) #0 {
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.urb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.usb_endpoint_descriptor* %2, %struct.usb_endpoint_descriptor** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %18 = icmp ne %struct.usb_endpoint_descriptor* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %4
  store %struct.urb* null, %struct.urb** %5, align 8
  br label %135

20:                                               ; preds = %16
  %21 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %22 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  %25 = and i32 2047, %24
  store i32 %25, i32* %12, align 4
  %26 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %27 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  %30 = ashr i32 %29, 11
  %31 = and i32 3, %30
  %32 = add nsw i32 1, %31
  %33 = load i32, i32* %12, align 4
  %34 = mul i32 %33, %32
  store i32 %34, i32* %12, align 4
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @DIV_ROUND_UP(i64 %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.urb* @usb_alloc_urb(i32 %38, i32 %39)
  store %struct.urb* %40, %struct.urb** %10, align 8
  %41 = load %struct.urb*, %struct.urb** %10, align 8
  %42 = icmp ne %struct.urb* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %20
  %44 = load %struct.urb*, %struct.urb** %10, align 8
  store %struct.urb* %44, %struct.urb** %5, align 8
  br label %135

45:                                               ; preds = %20
  %46 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %47 = load %struct.urb*, %struct.urb** %10, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 9
  store %struct.usb_device* %46, %struct.usb_device** %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.urb*, %struct.urb** %10, align 8
  %51 = getelementptr inbounds %struct.urb, %struct.urb* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.urb*, %struct.urb** %10, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.urb*, %struct.urb** %10, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = load %struct.urb*, %struct.urb** %10, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 8
  %63 = call i32 @usb_buffer_alloc(%struct.usb_device* %58, i64 %59, i32 %60, i32* %62)
  %64 = load %struct.urb*, %struct.urb** %10, align 8
  %65 = getelementptr inbounds %struct.urb, %struct.urb* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 8
  %66 = load %struct.urb*, %struct.urb** %10, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %45
  %71 = load %struct.urb*, %struct.urb** %10, align 8
  %72 = call i32 @usb_free_urb(%struct.urb* %71)
  store %struct.urb* null, %struct.urb** %5, align 8
  br label %135

73:                                               ; preds = %45
  %74 = load %struct.urb*, %struct.urb** %10, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @memset(i32 %76, i32 0, i64 %77)
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %115, %73
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %118

83:                                               ; preds = %79
  %84 = load i64, i64* %9, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i32, i32* %12, align 4
  %87 = call i64 @min(i32 %85, i32 %86)
  %88 = load %struct.urb*, %struct.urb** %10, align 8
  %89 = getelementptr inbounds %struct.urb, %struct.urb* %88, i32 0, i32 6
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i64 %87, i64* %94, align 8
  %95 = load %struct.urb*, %struct.urb** %10, align 8
  %96 = getelementptr inbounds %struct.urb, %struct.urb* %95, i32 0, i32 6
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %9, align 8
  %104 = sub nsw i64 %103, %102
  store i64 %104, i64* %9, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %11, align 4
  %107 = mul i32 %105, %106
  %108 = load %struct.urb*, %struct.urb** %10, align 8
  %109 = getelementptr inbounds %struct.urb, %struct.urb* %108, i32 0, i32 6
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 %107, i32* %114, align 8
  br label %115

115:                                              ; preds = %83
  %116 = load i32, i32* %11, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %79

118:                                              ; preds = %79
  %119 = load i32, i32* @iso_callback, align 4
  %120 = load %struct.urb*, %struct.urb** %10, align 8
  %121 = getelementptr inbounds %struct.urb, %struct.urb* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 8
  %122 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %123 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, 1
  %126 = shl i32 1, %125
  %127 = load %struct.urb*, %struct.urb** %10, align 8
  %128 = getelementptr inbounds %struct.urb, %struct.urb* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* @URB_ISO_ASAP, align 4
  %130 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.urb*, %struct.urb** %10, align 8
  %133 = getelementptr inbounds %struct.urb, %struct.urb* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 4
  %134 = load %struct.urb*, %struct.urb** %10, align 8
  store %struct.urb* %134, %struct.urb** %5, align 8
  br label %135

135:                                              ; preds = %118, %70, %43, %19
  %136 = load %struct.urb*, %struct.urb** %5, align 8
  ret %struct.urb* %136
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_buffer_alloc(%struct.usb_device*, i64, i32, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i64 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
