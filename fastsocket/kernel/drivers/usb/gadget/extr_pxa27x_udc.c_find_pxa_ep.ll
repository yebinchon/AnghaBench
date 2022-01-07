; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_find_pxa_ep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_find_pxa_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_ep = type { i32 }
%struct.pxa_udc = type { i32, i32, i32, %struct.pxa_ep*, %struct.udc_usb_ep* }
%struct.udc_usb_ep = type { i32 }

@NR_PXA_ENDPOINTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pxa_ep* (%struct.pxa_udc*, %struct.udc_usb_ep*)* @find_pxa_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pxa_ep* @find_pxa_ep(%struct.pxa_udc* %0, %struct.udc_usb_ep* %1) #0 {
  %3 = alloca %struct.pxa_ep*, align 8
  %4 = alloca %struct.pxa_udc*, align 8
  %5 = alloca %struct.udc_usb_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pxa_ep*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pxa_udc* %0, %struct.pxa_udc** %4, align 8
  store %struct.udc_usb_ep* %1, %struct.udc_usb_ep** %5, align 8
  %11 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %12 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %15 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %18 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load %struct.udc_usb_ep*, %struct.udc_usb_ep** %5, align 8
  %21 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %22 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %21, i32 0, i32 4
  %23 = load %struct.udc_usb_ep*, %struct.udc_usb_ep** %22, align 8
  %24 = getelementptr inbounds %struct.udc_usb_ep, %struct.udc_usb_ep* %23, i64 0
  %25 = icmp eq %struct.udc_usb_ep* %20, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %28 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %27, i32 0, i32 3
  %29 = load %struct.pxa_ep*, %struct.pxa_ep** %28, align 8
  %30 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %29, i64 0
  store %struct.pxa_ep* %30, %struct.pxa_ep** %3, align 8
  br label %57

31:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %32

32:                                               ; preds = %53, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @NR_PXA_ENDPOINTS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load %struct.pxa_udc*, %struct.pxa_udc** %4, align 8
  %38 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %37, i32 0, i32 3
  %39 = load %struct.pxa_ep*, %struct.pxa_ep** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %39, i64 %41
  store %struct.pxa_ep* %42, %struct.pxa_ep** %7, align 8
  %43 = load %struct.udc_usb_ep*, %struct.udc_usb_ep** %5, align 8
  %44 = load %struct.pxa_ep*, %struct.pxa_ep** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @is_match_usb_pxa(%struct.udc_usb_ep* %43, %struct.pxa_ep* %44, i32 %45, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = load %struct.pxa_ep*, %struct.pxa_ep** %7, align 8
  store %struct.pxa_ep* %51, %struct.pxa_ep** %3, align 8
  br label %57

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %32

56:                                               ; preds = %32
  store %struct.pxa_ep* null, %struct.pxa_ep** %3, align 8
  br label %57

57:                                               ; preds = %56, %50, %26
  %58 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  ret %struct.pxa_ep* %58
}

declare dso_local i64 @is_match_usb_pxa(%struct.udc_usb_ep*, %struct.pxa_ep*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
