; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_ep_is_full.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_ep_is_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_ep = type { i32 }

@UDCCSR = common dso_local global i32 0, align 4
@UDCCSR0_IPR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@UDCCSR_BNF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_ep*)* @ep_is_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_is_full(%struct.pxa_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pxa_ep*, align 8
  store %struct.pxa_ep* %0, %struct.pxa_ep** %3, align 8
  %4 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %5 = call i64 @is_ep0(%struct.pxa_ep* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %9 = load i32, i32* @UDCCSR, align 4
  %10 = call i32 @udc_ep_readl(%struct.pxa_ep* %8, i32 %9)
  %11 = load i32, i32* @UDCCSR0_IPR, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %2, align 4
  br label %30

13:                                               ; preds = %1
  %14 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %15 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %30

21:                                               ; preds = %13
  %22 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %23 = load i32, i32* @UDCCSR, align 4
  %24 = call i32 @udc_ep_readl(%struct.pxa_ep* %22, i32 %23)
  %25 = load i32, i32* @UDCCSR_BNF, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %21, %18, %7
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @is_ep0(%struct.pxa_ep*) #1

declare dso_local i32 @udc_ep_readl(%struct.pxa_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
