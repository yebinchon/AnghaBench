; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_udc_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_udc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa25x_udc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UDCCR_SRM = common dso_local global i32 0, align 4
@UDCCR_REM = common dso_local global i32 0, align 4
@UICR1 = common dso_local global i32 0, align 4
@UICR0 = common dso_local global i32 0, align 4
@UFNRH_SIM = common dso_local global i32 0, align 4
@UFNRH = common dso_local global i32 0, align 4
@UDCCR_UDE = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa25x_udc*)* @udc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_disable(%struct.pxa25x_udc* %0) #0 {
  %2 = alloca %struct.pxa25x_udc*, align 8
  store %struct.pxa25x_udc* %0, %struct.pxa25x_udc** %2, align 8
  %3 = load i32, i32* @UDCCR_SRM, align 4
  %4 = load i32, i32* @UDCCR_REM, align 4
  %5 = or i32 %3, %4
  %6 = call i32 @udc_set_mask_UDCCR(i32 %5)
  store i32 255, i32* @UICR1, align 4
  store i32 255, i32* @UICR0, align 4
  %7 = load i32, i32* @UFNRH_SIM, align 4
  store i32 %7, i32* @UFNRH, align 4
  %8 = call i32 (...) @pullup_off()
  %9 = load i32, i32* @UDCCR_UDE, align 4
  %10 = call i32 @udc_clear_mask_UDCCR(i32 %9)
  %11 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %12 = call i32 @ep0_idle(%struct.pxa25x_udc* %11)
  %13 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %14 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %15 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  ret void
}

declare dso_local i32 @udc_set_mask_UDCCR(i32) #1

declare dso_local i32 @pullup_off(...) #1

declare dso_local i32 @udc_clear_mask_UDCCR(i32) #1

declare dso_local i32 @ep0_idle(%struct.pxa25x_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
