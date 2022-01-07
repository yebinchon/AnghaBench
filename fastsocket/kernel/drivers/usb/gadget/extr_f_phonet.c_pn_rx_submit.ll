; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_phonet.c_pn_rx_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_phonet.c_pn_rx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_phonet = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.usb_request = type { %struct.page*, i32, i32 }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f_phonet*, %struct.usb_request*, i32)* @pn_rx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_rx_submit(%struct.f_phonet* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f_phonet*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  store %struct.f_phonet* %0, %struct.f_phonet** %5, align 8
  store %struct.usb_request* %1, %struct.usb_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.f_phonet*, %struct.f_phonet** %5, align 8
  %12 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %11, i32 0, i32 1
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.page* @__netdev_alloc_page(%struct.net_device* %14, i32 %15)
  store %struct.page* %16, %struct.page** %9, align 8
  %17 = load %struct.page*, %struct.page** %9, align 8
  %18 = icmp ne %struct.page* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %48

22:                                               ; preds = %3
  %23 = load %struct.page*, %struct.page** %9, align 8
  %24 = call i32 @page_address(%struct.page* %23)
  %25 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %26 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %29 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.page*, %struct.page** %9, align 8
  %31 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %32 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %31, i32 0, i32 0
  store %struct.page* %30, %struct.page** %32, align 8
  %33 = load %struct.f_phonet*, %struct.f_phonet** %5, align 8
  %34 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @usb_ep_queue(i32 %35, %struct.usb_request* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %22
  %43 = load %struct.net_device*, %struct.net_device** %8, align 8
  %44 = load %struct.page*, %struct.page** %9, align 8
  %45 = call i32 @netdev_free_page(%struct.net_device* %43, %struct.page* %44)
  br label %46

46:                                               ; preds = %42, %22
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %19
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.page* @__netdev_alloc_page(%struct.net_device*, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @usb_ep_queue(i32, %struct.usb_request*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_free_page(%struct.net_device*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
