; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_ep0_prime_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_ep0_prime_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_udc = type { i32, i32, %struct.qe_ep* }
%struct.qe_ep = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@DATA_STATE_NEED_ZLP = common dso_local global i32 0, align 4
@SETUP_STATUS = common dso_local global i32 0, align 4
@NO_REQ = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@WAIT_FOR_OUT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qe_udc*, i32)* @ep0_prime_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep0_prime_status(%struct.qe_udc* %0, i32 %1) #0 {
  %3 = alloca %struct.qe_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qe_ep*, align 8
  store %struct.qe_udc* %0, %struct.qe_udc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %7 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %6, i32 0, i32 2
  %8 = load %struct.qe_ep*, %struct.qe_ep** %7, align 8
  %9 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %8, i64 0
  store %struct.qe_ep* %9, %struct.qe_ep** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @USB_DIR_IN, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load i32, i32* @DATA_STATE_NEED_ZLP, align 4
  %15 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %16 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @USB_DIR_IN, align 4
  %18 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %19 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %21 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %22 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SETUP_STATUS, align 4
  %25 = load i32, i32* @NO_REQ, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @sendnulldata(%struct.qe_ep* %20, i32 %23, i32 %26)
  br label %35

28:                                               ; preds = %2
  %29 = load i32, i32* @USB_DIR_OUT, align 4
  %30 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %31 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @WAIT_FOR_OUT_STATUS, align 4
  %33 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %34 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %28, %13
  ret i32 0
}

declare dso_local i32 @sendnulldata(%struct.qe_ep*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
