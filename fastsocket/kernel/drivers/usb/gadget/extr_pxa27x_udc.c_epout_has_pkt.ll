; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_epout_has_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_epout_has_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_ep = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@UDCCSR = common dso_local global i32 0, align 4
@UDCCSR0_OPC = common dso_local global i32 0, align 4
@UDCCSR_PC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_ep*)* @epout_has_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epout_has_pkt(%struct.pxa_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pxa_ep*, align 8
  store %struct.pxa_ep* %0, %struct.pxa_ep** %3, align 8
  %4 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %5 = call i64 @is_ep0(%struct.pxa_ep* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %9 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %31

15:                                               ; preds = %7, %1
  %16 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %17 = call i64 @is_ep0(%struct.pxa_ep* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %21 = load i32, i32* @UDCCSR, align 4
  %22 = call i32 @udc_ep_readl(%struct.pxa_ep* %20, i32 %21)
  %23 = load i32, i32* @UDCCSR0_OPC, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %2, align 4
  br label %31

25:                                               ; preds = %15
  %26 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %27 = load i32, i32* @UDCCSR, align 4
  %28 = call i32 @udc_ep_readl(%struct.pxa_ep* %26, i32 %27)
  %29 = load i32, i32* @UDCCSR_PC, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %25, %19, %12
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @is_ep0(%struct.pxa_ep*) #1

declare dso_local i32 @udc_ep_readl(%struct.pxa_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
