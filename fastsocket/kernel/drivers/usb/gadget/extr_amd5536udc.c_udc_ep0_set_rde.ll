; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_udc_ep0_set_rde.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_udc_ep0_set_rde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.udc = type { i64, i32 }

@use_dma = common dso_local global i64 0, align 8
@set_rde = common dso_local global i32 0, align 4
@udc_timer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@UDC_RDE_TIMER_DIV = common dso_local global i32 0, align 4
@stop_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udc*)* @udc_ep0_set_rde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_ep0_set_rde(%struct.udc* %0) #0 {
  %2 = alloca %struct.udc*, align 8
  store %struct.udc* %0, %struct.udc** %2, align 8
  %3 = load i64, i64* @use_dma, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %38

5:                                                ; preds = %1
  %6 = load %struct.udc*, %struct.udc** %2, align 8
  %7 = getelementptr inbounds %struct.udc, %struct.udc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.udc*, %struct.udc** %2, align 8
  %12 = getelementptr inbounds %struct.udc, %struct.udc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10, %5
  %16 = load %struct.udc*, %struct.udc** %2, align 8
  %17 = call i32 @udc_set_rde(%struct.udc* %16)
  br label %37

18:                                               ; preds = %10
  %19 = load i32, i32* @set_rde, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = call i32 @timer_pending(%struct.TYPE_4__* @udc_timer)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* @jiffies, align 8
  %26 = load i32, i32* @HZ, align 4
  %27 = load i32, i32* @UDC_RDE_TIMER_DIV, align 4
  %28 = sdiv i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %25, %29
  store i64 %30, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udc_timer, i32 0, i32 0), align 8
  store i32 1, i32* @set_rde, align 4
  %31 = load i32, i32* @stop_timer, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %24
  %34 = call i32 @add_timer(%struct.TYPE_4__* @udc_timer)
  br label %35

35:                                               ; preds = %33, %24
  br label %36

36:                                               ; preds = %35, %21, %18
  br label %37

37:                                               ; preds = %36, %15
  br label %38

38:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32 @udc_set_rde(%struct.udc*) #1

declare dso_local i32 @timer_pending(%struct.TYPE_4__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
