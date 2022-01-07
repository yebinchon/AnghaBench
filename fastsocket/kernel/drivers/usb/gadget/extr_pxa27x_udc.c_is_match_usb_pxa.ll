; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_is_match_usb_pxa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_is_match_usb_pxa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc_usb_ep = type { i32 }
%struct.pxa_ep = type { i64, i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udc_usb_ep*, %struct.pxa_ep*, i32, i32, i32)* @is_match_usb_pxa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_match_usb_pxa(%struct.udc_usb_ep* %0, %struct.pxa_ep* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.udc_usb_ep*, align 8
  %8 = alloca %struct.pxa_ep*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.udc_usb_ep* %0, %struct.udc_usb_ep** %7, align 8
  store %struct.pxa_ep* %1, %struct.pxa_ep** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.udc_usb_ep*, %struct.udc_usb_ep** %7, align 8
  %13 = getelementptr inbounds %struct.udc_usb_ep, %struct.udc_usb_ep* %12, i32 0, i32 0
  %14 = call i64 @usb_endpoint_num(i32* %13)
  %15 = load %struct.pxa_ep*, %struct.pxa_ep** %8, align 8
  %16 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %58

20:                                               ; preds = %5
  %21 = load %struct.udc_usb_ep*, %struct.udc_usb_ep** %7, align 8
  %22 = getelementptr inbounds %struct.udc_usb_ep, %struct.udc_usb_ep* %21, i32 0, i32 0
  %23 = call i64 @usb_endpoint_dir_in(i32* %22)
  %24 = load %struct.pxa_ep*, %struct.pxa_ep** %8, align 8
  %25 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %58

29:                                               ; preds = %20
  %30 = load %struct.udc_usb_ep*, %struct.udc_usb_ep** %7, align 8
  %31 = getelementptr inbounds %struct.udc_usb_ep, %struct.udc_usb_ep* %30, i32 0, i32 0
  %32 = call i64 @usb_endpoint_type(i32* %31)
  %33 = load %struct.pxa_ep*, %struct.pxa_ep** %8, align 8
  %34 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %58

38:                                               ; preds = %29
  %39 = load %struct.pxa_ep*, %struct.pxa_ep** %8, align 8
  %40 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %38
  %45 = load %struct.pxa_ep*, %struct.pxa_ep** %8, align 8
  %46 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.pxa_ep*, %struct.pxa_ep** %8, align 8
  %52 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %44, %38
  store i32 0, i32* %6, align 4
  br label %58

57:                                               ; preds = %50
  store i32 1, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %56, %37, %28, %19
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i64 @usb_endpoint_num(i32*) #1

declare dso_local i64 @usb_endpoint_dir_in(i32*) #1

declare dso_local i64 @usb_endpoint_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
