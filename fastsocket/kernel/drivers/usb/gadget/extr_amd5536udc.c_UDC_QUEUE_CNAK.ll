; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_UDC_QUEUE_CNAK.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_UDC_QUEUE_CNAK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc_ep = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UDC_EPCTL_NAK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"NAK could not be cleared for ep%d\0A\00", align 1
@cnak_pending = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udc_ep*, i32)* @UDC_QUEUE_CNAK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UDC_QUEUE_CNAK(%struct.udc_ep* %0, i32 %1) #0 {
  %3 = alloca %struct.udc_ep*, align 8
  %4 = alloca i32, align 4
  store %struct.udc_ep* %0, %struct.udc_ep** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %6 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @readl(i32* %8)
  %10 = load i32, i32* @UDC_EPCTL_NAK, align 4
  %11 = call i32 @AMD_BIT(i32 %10)
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %16 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @DBG(i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = shl i32 1, %20
  %22 = load i32, i32* @cnak_pending, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* @cnak_pending, align 4
  %24 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %25 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %32

26:                                               ; preds = %2
  %27 = load i32, i32* @cnak_pending, align 4
  %28 = load i32, i32* %4, align 4
  %29 = shl i32 1, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %27, %30
  store i32 %31, i32* @cnak_pending, align 4
  br label %32

32:                                               ; preds = %26, %14
  ret void
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @AMD_BIT(i32) #1

declare dso_local i32 @DBG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
