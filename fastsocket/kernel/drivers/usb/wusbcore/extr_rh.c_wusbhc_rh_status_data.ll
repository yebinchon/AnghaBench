; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_rh.c_wusbhc_rh_status_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_rh.c_wusbhc_rh_status_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.wusbhc = type { i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wusbhc_rh_status_data(%struct.usb_hcd* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wusbhc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd* %9)
  store %struct.wusbhc* %10, %struct.wusbhc** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to i64*
  store i64* %12, i64** %8, align 8
  %13 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %14 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = add i64 %18, 8
  %20 = sub i64 %19, 1
  %21 = udiv i64 %20, 8
  store i64 %21, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %47, %2
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %25 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %23, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %22
  %30 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call %struct.TYPE_2__* @wusb_port_by_idx(%struct.wusbhc* %30, i64 %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  %39 = load i64*, i64** %8, align 8
  %40 = call i32 @set_bit(i64 %38, i64* %39)
  br label %46

41:                                               ; preds = %29
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, 1
  %44 = load i64*, i64** %8, align 8
  %45 = call i32 @clear_bit(i64 %43, i64* %44)
  br label %46

46:                                               ; preds = %41, %36
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %6, align 8
  br label %22

50:                                               ; preds = %22
  %51 = load i64, i64* %7, align 8
  %52 = trunc i64 %51 to i32
  ret i32 %52
}

declare dso_local %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd*) #1

declare dso_local %struct.TYPE_2__* @wusb_port_by_idx(%struct.wusbhc*, i64) #1

declare dso_local i32 @set_bit(i64, i64*) #1

declare dso_local i32 @clear_bit(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
