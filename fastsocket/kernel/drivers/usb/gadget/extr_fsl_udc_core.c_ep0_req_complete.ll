; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_ep0_req_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_ep0_req_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fsl_udc = type { i64, i32, i32 }
%struct.fsl_ep = type { i32 }
%struct.fsl_req = type { i32 }

@USB_STATE_ADDRESS = common dso_local global i64 0, align 8
@USB_DEVICE_ADDRESS_BIT_POS = common dso_local global i32 0, align 4
@dr_regs = common dso_local global %struct.TYPE_2__* null, align 8
@EP_DIR_OUT = common dso_local global i32 0, align 4
@EP_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unexpect ep0 packets\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_udc*, %struct.fsl_ep*, %struct.fsl_req*)* @ep0_req_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep0_req_complete(%struct.fsl_udc* %0, %struct.fsl_ep* %1, %struct.fsl_req* %2) #0 {
  %4 = alloca %struct.fsl_udc*, align 8
  %5 = alloca %struct.fsl_ep*, align 8
  %6 = alloca %struct.fsl_req*, align 8
  %7 = alloca i32, align 4
  store %struct.fsl_udc* %0, %struct.fsl_udc** %4, align 8
  store %struct.fsl_ep* %1, %struct.fsl_ep** %5, align 8
  store %struct.fsl_req* %2, %struct.fsl_req** %6, align 8
  %8 = load %struct.fsl_udc*, %struct.fsl_udc** %4, align 8
  %9 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @USB_STATE_ADDRESS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.fsl_udc*, %struct.fsl_udc** %4, align 8
  %15 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @USB_DEVICE_ADDRESS_BIT_POS, align 4
  %19 = shl i32 %17, %18
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dr_regs, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @fsl_writel(i32 %19, i32* %21)
  br label %23

23:                                               ; preds = %13, %3
  %24 = load %struct.fsl_ep*, %struct.fsl_ep** %5, align 8
  %25 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %26 = call i32 @done(%struct.fsl_ep* %24, %struct.fsl_req* %25, i32 0)
  %27 = load %struct.fsl_udc*, %struct.fsl_udc** %4, align 8
  %28 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %53 [
    i32 130, label %30
    i32 131, label %39
    i32 129, label %48
    i32 128, label %51
  ]

30:                                               ; preds = %23
  %31 = load %struct.fsl_udc*, %struct.fsl_udc** %4, align 8
  %32 = load i32, i32* @EP_DIR_OUT, align 4
  %33 = call i32 @ep0_prime_status(%struct.fsl_udc* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.fsl_udc*, %struct.fsl_udc** %4, align 8
  %37 = call i32 @ep0stall(%struct.fsl_udc* %36)
  br label %38

38:                                               ; preds = %35, %30
  br label %56

39:                                               ; preds = %23
  %40 = load %struct.fsl_udc*, %struct.fsl_udc** %4, align 8
  %41 = load i32, i32* @EP_DIR_IN, align 4
  %42 = call i32 @ep0_prime_status(%struct.fsl_udc* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.fsl_udc*, %struct.fsl_udc** %4, align 8
  %46 = call i32 @ep0stall(%struct.fsl_udc* %45)
  br label %47

47:                                               ; preds = %44, %39
  br label %56

48:                                               ; preds = %23
  %49 = load %struct.fsl_udc*, %struct.fsl_udc** %4, align 8
  %50 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %49, i32 0, i32 1
  store i32 128, i32* %50, align 8
  br label %56

51:                                               ; preds = %23
  %52 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %56

53:                                               ; preds = %23
  %54 = load %struct.fsl_udc*, %struct.fsl_udc** %4, align 8
  %55 = call i32 @ep0stall(%struct.fsl_udc* %54)
  br label %56

56:                                               ; preds = %53, %51, %48, %47, %38
  ret void
}

declare dso_local i32 @fsl_writel(i32, i32*) #1

declare dso_local i32 @done(%struct.fsl_ep*, %struct.fsl_req*, i32) #1

declare dso_local i32 @ep0_prime_status(%struct.fsl_udc*, i32) #1

declare dso_local i32 @ep0stall(%struct.fsl_udc*) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
