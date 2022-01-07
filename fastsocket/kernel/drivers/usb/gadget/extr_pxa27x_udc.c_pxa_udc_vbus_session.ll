; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_pxa_udc_vbus_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_pxa_udc_vbus_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.pxa_udc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, i32)* @pxa_udc_vbus_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_udc_vbus_session(%struct.usb_gadget* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pxa_udc*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %7 = call %struct.pxa_udc* @to_gadget_udc(%struct.usb_gadget* %6)
  store %struct.pxa_udc* %7, %struct.pxa_udc** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %10 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %12 = call i64 @should_enable_udc(%struct.pxa_udc* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %16 = call i32 @udc_enable(%struct.pxa_udc* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %19 = call i64 @should_disable_udc(%struct.pxa_udc* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %23 = call i32 @udc_disable(%struct.pxa_udc* %22)
  br label %24

24:                                               ; preds = %21, %17
  ret i32 0
}

declare dso_local %struct.pxa_udc* @to_gadget_udc(%struct.usb_gadget*) #1

declare dso_local i64 @should_enable_udc(%struct.pxa_udc*) #1

declare dso_local i32 @udc_enable(%struct.pxa_udc*) #1

declare dso_local i64 @should_disable_udc(%struct.pxa_udc*) #1

declare dso_local i32 @udc_disable(%struct.pxa_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
