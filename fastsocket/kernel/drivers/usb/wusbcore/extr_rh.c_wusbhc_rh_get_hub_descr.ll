; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_rh.c_wusbhc_rh_get_hub_descr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_rh.c_wusbhc_rh_get_hub_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32 }
%struct.usb_hub_descriptor = type { i32, i32, i32, %struct.TYPE_4__, i64, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wusbhc*, i32, i32, %struct.usb_hub_descriptor*, i32)* @wusbhc_rh_get_hub_descr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wusbhc_rh_get_hub_descr(%struct.wusbhc* %0, i32 %1, i32 %2, %struct.usb_hub_descriptor* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wusbhc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_hub_descriptor*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.usb_hub_descriptor* %3, %struct.usb_hub_descriptor** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.wusbhc*, %struct.wusbhc** %7, align 8
  %15 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %16, 8
  %18 = add nsw i32 1, %17
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = mul nsw i32 2, %19
  %21 = add nsw i32 7, %20
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @ENOSPC, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %66

28:                                               ; preds = %5
  %29 = load i32, i32* %12, align 4
  %30 = mul nsw i32 2, %29
  %31 = add nsw i32 7, %30
  %32 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %10, align 8
  %33 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %10, align 8
  %35 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %34, i32 0, i32 1
  store i32 41, i32* %35, align 4
  %36 = load %struct.wusbhc*, %struct.wusbhc** %7, align 8
  %37 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %10, align 8
  %40 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = call i32 @cpu_to_le16(i32 16)
  %42 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %10, align 8
  %43 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %10, align 8
  %45 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %44, i32 0, i32 5
  store i64 0, i64* %45, align 8
  %46 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %10, align 8
  %47 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %10, align 8
  %49 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @memset(i32* %53, i32 0, i32 %54)
  %56 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %10, align 8
  %57 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @memset(i32* %63, i32 255, i32 %64)
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %28, %25
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
