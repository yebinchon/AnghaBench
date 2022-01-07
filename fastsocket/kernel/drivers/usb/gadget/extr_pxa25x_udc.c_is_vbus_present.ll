; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_is_vbus_present.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_is_vbus_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.pxa2xx_udc_mach_info* }
%struct.pxa2xx_udc_mach_info = type { i32 (...)*, i64, i32 }

@the_controller = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @is_vbus_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_vbus_present() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pxa2xx_udc_mach_info*, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_controller, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %5, align 8
  store %struct.pxa2xx_udc_mach_info* %6, %struct.pxa2xx_udc_mach_info** %2, align 8
  %7 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %2, align 8
  %8 = getelementptr inbounds %struct.pxa2xx_udc_mach_info, %struct.pxa2xx_udc_mach_info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @gpio_is_valid(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %0
  %13 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %2, align 8
  %14 = getelementptr inbounds %struct.pxa2xx_udc_mach_info, %struct.pxa2xx_udc_mach_info* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @gpio_get_value(i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %2, align 8
  %18 = getelementptr inbounds %struct.pxa2xx_udc_mach_info, %struct.pxa2xx_udc_mach_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %1, align 4
  br label %43

26:                                               ; preds = %12
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %1, align 4
  br label %43

32:                                               ; preds = %0
  %33 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %2, align 8
  %34 = getelementptr inbounds %struct.pxa2xx_udc_mach_info, %struct.pxa2xx_udc_mach_info* %33, i32 0, i32 0
  %35 = load i32 (...)*, i32 (...)** %34, align 8
  %36 = icmp ne i32 (...)* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %2, align 8
  %39 = getelementptr inbounds %struct.pxa2xx_udc_mach_info, %struct.pxa2xx_udc_mach_info* %38, i32 0, i32 0
  %40 = load i32 (...)*, i32 (...)** %39, align 8
  %41 = call i32 (...) %40()
  store i32 %41, i32* %1, align 4
  br label %43

42:                                               ; preds = %32
  store i32 1, i32* %1, align 4
  br label %43

43:                                               ; preds = %42, %37, %26, %21
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
