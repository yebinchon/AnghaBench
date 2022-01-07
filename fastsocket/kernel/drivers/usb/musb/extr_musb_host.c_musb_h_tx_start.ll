; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musb_host.c_musb_h_tx_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musb_host.c_musb_h_tx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb_hw_ep = type { i32, i64 }

@MUSB_TXCSR = common dso_local global i32 0, align 4
@MUSB_TXCSR_TXPKTRDY = common dso_local global i32 0, align 4
@MUSB_TXCSR_H_WZC_BITS = common dso_local global i32 0, align 4
@MUSB_CSR0_H_SETUPPKT = common dso_local global i32 0, align 4
@MUSB_CSR0_TXPKTRDY = common dso_local global i32 0, align 4
@MUSB_CSR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb_hw_ep*)* @musb_h_tx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musb_h_tx_start(%struct.musb_hw_ep* %0) #0 {
  %2 = alloca %struct.musb_hw_ep*, align 8
  %3 = alloca i32, align 4
  store %struct.musb_hw_ep* %0, %struct.musb_hw_ep** %2, align 8
  %4 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %2, align 8
  %5 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %2, align 8
  %10 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MUSB_TXCSR, align 4
  %13 = call i32 @musb_readw(i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @MUSB_TXCSR_TXPKTRDY, align 4
  %15 = load i32, i32* @MUSB_TXCSR_H_WZC_BITS, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %2, align 8
  %20 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MUSB_TXCSR, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @musb_writew(i32 %21, i32 %22, i32 %23)
  br label %35

25:                                               ; preds = %1
  %26 = load i32, i32* @MUSB_CSR0_H_SETUPPKT, align 4
  %27 = load i32, i32* @MUSB_CSR0_TXPKTRDY, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %3, align 4
  %29 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %2, align 8
  %30 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MUSB_CSR0, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @musb_writew(i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %25, %8
  ret void
}

declare dso_local i32 @musb_readw(i32, i32) #1

declare dso_local i32 @musb_writew(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
