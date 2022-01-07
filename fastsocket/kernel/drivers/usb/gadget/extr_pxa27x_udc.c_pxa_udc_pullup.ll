; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_pxa_udc_pullup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_pxa_udc_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.pxa_udc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, i32)* @pxa_udc_pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_udc_pullup(%struct.usb_gadget* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pxa_udc*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %8 = call %struct.pxa_udc* @to_gadget_udc(%struct.usb_gadget* %7)
  store %struct.pxa_udc* %8, %struct.pxa_udc** %6, align 8
  %9 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %10 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @gpio_is_valid(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %18 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %44

26:                                               ; preds = %16, %2
  %27 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dplus_pullup(%struct.pxa_udc* %27, i32 %28)
  %30 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %31 = call i64 @should_enable_udc(%struct.pxa_udc* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %35 = call i32 @udc_enable(%struct.pxa_udc* %34)
  br label %36

36:                                               ; preds = %33, %26
  %37 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %38 = call i64 @should_disable_udc(%struct.pxa_udc* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %42 = call i32 @udc_disable(%struct.pxa_udc* %41)
  br label %43

43:                                               ; preds = %40, %36
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %23
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.pxa_udc* @to_gadget_udc(%struct.usb_gadget*) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @dplus_pullup(%struct.pxa_udc*, i32) #1

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
