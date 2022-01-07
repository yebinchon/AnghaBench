; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_udc_reinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_udc_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa25x_udc = type { %struct.TYPE_6__, %struct.pxa25x_ep*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pxa25x_ep = type { i64, i32, i64, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EP0_IDLE = common dso_local global i32 0, align 4
@PXA_UDC_NUM_ENDPOINTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa25x_udc*)* @udc_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_reinit(%struct.pxa25x_udc* %0) #0 {
  %2 = alloca %struct.pxa25x_udc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pxa25x_ep*, align 8
  store %struct.pxa25x_udc* %0, %struct.pxa25x_udc** %2, align 8
  %5 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %6 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %10 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load i32, i32* @EP0_IDLE, align 4
  %16 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %17 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  store i64 0, i64* %3, align 8
  br label %18

18:                                               ; preds = %48, %1
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @PXA_UDC_NUM_ENDPOINTS, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %18
  %23 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %24 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %23, i32 0, i32 1
  %25 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %25, i64 %26
  store %struct.pxa25x_ep* %27, %struct.pxa25x_ep** %4, align 8
  %28 = load i64, i64* %3, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %32 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %35 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = call i32 @list_add_tail(i32* %33, i32* %36)
  br label %38

38:                                               ; preds = %30, %22
  %39 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %40 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %42 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %44 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %43, i32 0, i32 1
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %47 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %38
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %3, align 8
  br label %18

51:                                               ; preds = %18
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
