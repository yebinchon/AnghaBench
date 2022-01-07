; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_ep0_req_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_ep0_req_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_udc = type { i32, i32, %struct.qe_ep* }
%struct.qe_ep = type { i32 }
%struct.qe_req = type { i32 }

@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unexpected interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qe_udc*, %struct.qe_req*)* @ep0_req_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep0_req_complete(%struct.qe_udc* %0, %struct.qe_req* %1) #0 {
  %3 = alloca %struct.qe_udc*, align 8
  %4 = alloca %struct.qe_req*, align 8
  %5 = alloca %struct.qe_ep*, align 8
  store %struct.qe_udc* %0, %struct.qe_udc** %3, align 8
  store %struct.qe_req* %1, %struct.qe_req** %4, align 8
  %6 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %7 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %6, i32 0, i32 2
  %8 = load %struct.qe_ep*, %struct.qe_ep** %7, align 8
  %9 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %8, i64 0
  store %struct.qe_ep* %9, %struct.qe_ep** %5, align 8
  %10 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %11 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %54 [
    i32 130, label %13
    i32 132, label %25
    i32 131, label %31
    i32 129, label %43
    i32 128, label %49
  ]

13:                                               ; preds = %2
  %14 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %15 = load %struct.qe_req*, %struct.qe_req** %4, align 8
  %16 = call i32 @done(%struct.qe_ep* %14, %struct.qe_req* %15, i32 0)
  %17 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %18 = load i32, i32* @USB_DIR_OUT, align 4
  %19 = call i32 @ep0_prime_status(%struct.qe_udc* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %23 = call i32 @qe_ep0_stall(%struct.qe_udc* %22)
  br label %24

24:                                               ; preds = %21, %13
  br label %57

25:                                               ; preds = %2
  %26 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %27 = load %struct.qe_req*, %struct.qe_req** %4, align 8
  %28 = call i32 @done(%struct.qe_ep* %26, %struct.qe_req* %27, i32 0)
  %29 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %30 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %29, i32 0, i32 0
  store i32 128, i32* %30, align 8
  br label %57

31:                                               ; preds = %2
  %32 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %33 = load %struct.qe_req*, %struct.qe_req** %4, align 8
  %34 = call i32 @done(%struct.qe_ep* %32, %struct.qe_req* %33, i32 0)
  %35 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %36 = load i32, i32* @USB_DIR_IN, align 4
  %37 = call i32 @ep0_prime_status(%struct.qe_udc* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %41 = call i32 @qe_ep0_stall(%struct.qe_udc* %40)
  br label %42

42:                                               ; preds = %39, %31
  br label %57

43:                                               ; preds = %2
  %44 = load %struct.qe_ep*, %struct.qe_ep** %5, align 8
  %45 = load %struct.qe_req*, %struct.qe_req** %4, align 8
  %46 = call i32 @done(%struct.qe_ep* %44, %struct.qe_req* %45, i32 0)
  %47 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %48 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %47, i32 0, i32 0
  store i32 128, i32* %48, align 8
  br label %57

49:                                               ; preds = %2
  %50 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %51 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_vdbg(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %57

54:                                               ; preds = %2
  %55 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %56 = call i32 @qe_ep0_stall(%struct.qe_udc* %55)
  br label %57

57:                                               ; preds = %54, %49, %43, %42, %25, %24
  ret void
}

declare dso_local i32 @done(%struct.qe_ep*, %struct.qe_req*, i32) #1

declare dso_local i32 @ep0_prime_status(%struct.qe_udc*, i32) #1

declare dso_local i32 @qe_ep0_stall(%struct.qe_udc*) #1

declare dso_local i32 @dev_vdbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
