; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_ci13xxx_udc.c_hw_device_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_ci13xxx_udc.c_hw_device_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAP_ENDPTLISTADDR = common dso_local global i32 0, align 4
@CAP_USBINTR = common dso_local global i32 0, align 4
@USBi_UI = common dso_local global i32 0, align 4
@USBi_UEI = common dso_local global i32 0, align 4
@USBi_PCI = common dso_local global i32 0, align 4
@USBi_URI = common dso_local global i32 0, align 4
@USBi_SLI = common dso_local global i32 0, align 4
@CAP_USBCMD = common dso_local global i32 0, align 4
@USBCMD_RS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hw_device_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_device_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = load i32, i32* @CAP_ENDPTLISTADDR, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @hw_cwrite(i32 %6, i32 -1, i32 %7)
  %9 = load i32, i32* @CAP_USBINTR, align 4
  %10 = load i32, i32* @USBi_UI, align 4
  %11 = load i32, i32* @USBi_UEI, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @USBi_PCI, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @USBi_URI, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @USBi_SLI, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @hw_cwrite(i32 %9, i32 -1, i32 %18)
  %20 = load i32, i32* @CAP_USBCMD, align 4
  %21 = load i32, i32* @USBCMD_RS, align 4
  %22 = load i32, i32* @USBCMD_RS, align 4
  %23 = call i32 @hw_cwrite(i32 %20, i32 %21, i32 %22)
  br label %30

24:                                               ; preds = %1
  %25 = load i32, i32* @CAP_USBCMD, align 4
  %26 = load i32, i32* @USBCMD_RS, align 4
  %27 = call i32 @hw_cwrite(i32 %25, i32 %26, i32 0)
  %28 = load i32, i32* @CAP_USBINTR, align 4
  %29 = call i32 @hw_cwrite(i32 %28, i32 -1, i32 0)
  br label %30

30:                                               ; preds = %24, %5
  ret i32 0
}

declare dso_local i32 @hw_cwrite(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
