; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_pullup_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_pullup_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.pxa2xx_udc_mach_info* }
%struct.pxa2xx_udc_mach_info = type { i32 (i32)*, i32, i32 }

@the_controller = common dso_local global %struct.TYPE_2__* null, align 8
@PXA2XX_UDC_CMD_CONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pullup_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pullup_on() #0 {
  %1 = alloca %struct.pxa2xx_udc_mach_info*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_controller, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %4, align 8
  store %struct.pxa2xx_udc_mach_info* %5, %struct.pxa2xx_udc_mach_info** %1, align 8
  %6 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %1, align 8
  %7 = getelementptr inbounds %struct.pxa2xx_udc_mach_info, %struct.pxa2xx_udc_mach_info* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %2, align 4
  %12 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %1, align 8
  %13 = getelementptr inbounds %struct.pxa2xx_udc_mach_info, %struct.pxa2xx_udc_mach_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @gpio_is_valid(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %0
  %18 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %1, align 8
  %19 = getelementptr inbounds %struct.pxa2xx_udc_mach_info, %struct.pxa2xx_udc_mach_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @gpio_set_value(i32 %20, i32 %21)
  br label %35

23:                                               ; preds = %0
  %24 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %1, align 8
  %25 = getelementptr inbounds %struct.pxa2xx_udc_mach_info, %struct.pxa2xx_udc_mach_info* %24, i32 0, i32 0
  %26 = load i32 (i32)*, i32 (i32)** %25, align 8
  %27 = icmp ne i32 (i32)* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %1, align 8
  %30 = getelementptr inbounds %struct.pxa2xx_udc_mach_info, %struct.pxa2xx_udc_mach_info* %29, i32 0, i32 0
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = load i32, i32* @PXA2XX_UDC_CMD_CONNECT, align 4
  %33 = call i32 %31(i32 %32)
  br label %34

34:                                               ; preds = %28, %23
  br label %35

35:                                               ; preds = %34, %17
  ret void
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
