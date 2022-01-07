; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_udc_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_udc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa25x_udc = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@UDCCR_UDE = common dso_local global i32 0, align 4
@UDCCR_SUSIR = common dso_local global i32 0, align 4
@UDCCR_RESIR = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@UDCCR = common dso_local global i32 0, align 4
@UDCCR_UDA = common dso_local global i32 0, align 4
@UDCCR_RSTIR = common dso_local global i32 0, align 4
@UDCCFR_ACM = common dso_local global i32 0, align 4
@UDCCFR_MB1 = common dso_local global i32 0, align 4
@UDCCFR = common dso_local global i32 0, align 4
@UDC_RES1 = common dso_local global i32 0, align 4
@UDC_RES2 = common dso_local global i32 0, align 4
@UDCCR_SRM = common dso_local global i32 0, align 4
@UDCCR_REM = common dso_local global i32 0, align 4
@UICR0_IM0 = common dso_local global i32 0, align 4
@UICR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa25x_udc*)* @udc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_enable(%struct.pxa25x_udc* %0) #0 {
  %2 = alloca %struct.pxa25x_udc*, align 8
  store %struct.pxa25x_udc* %0, %struct.pxa25x_udc** %2, align 8
  %3 = load i32, i32* @UDCCR_UDE, align 4
  %4 = call i32 @udc_clear_mask_UDCCR(i32 %3)
  %5 = load i32, i32* @UDCCR_SUSIR, align 4
  %6 = load i32, i32* @UDCCR_RESIR, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @udc_ack_int_UDCCR(i32 %7)
  %9 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %10 = call i32 @ep0_idle(%struct.pxa25x_udc* %9)
  %11 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %12 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %13 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %16 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @UDCCR_UDE, align 4
  %19 = call i32 @udc_set_mask_UDCCR(i32 %18)
  %20 = load i32, i32* @UDCCR, align 4
  %21 = load i32, i32* @UDCCR_UDA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @UDCCR_RSTIR, align 4
  %26 = call i32 @udc_ack_int_UDCCR(i32 %25)
  br label %27

27:                                               ; preds = %24, %1
  %28 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %29 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @UDCCFR_ACM, align 4
  %34 = load i32, i32* @UDCCFR_MB1, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* @UDCCFR, align 4
  br label %37

36:                                               ; preds = %27
  store i32 0, i32* @UDC_RES1, align 4
  store i32 0, i32* @UDC_RES2, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = load i32, i32* @UDCCR_SRM, align 4
  %39 = load i32, i32* @UDCCR_REM, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @udc_clear_mask_UDCCR(i32 %40)
  %42 = load i32, i32* @UICR0_IM0, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* @UICR0, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* @UICR0, align 4
  %46 = call i32 (...) @pullup_on()
  ret void
}

declare dso_local i32 @udc_clear_mask_UDCCR(i32) #1

declare dso_local i32 @udc_ack_int_UDCCR(i32) #1

declare dso_local i32 @ep0_idle(%struct.pxa25x_udc*) #1

declare dso_local i32 @udc_set_mask_UDCCR(i32) #1

declare dso_local i32 @pullup_on(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
