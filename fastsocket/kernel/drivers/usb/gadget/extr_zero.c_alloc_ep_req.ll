; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_zero.c_alloc_ep_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_zero.c_alloc_ep_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_request = type { i32, i32 }
%struct.usb_ep = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@buflen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_request* @alloc_ep_req(%struct.usb_ep* %0) #0 {
  %2 = alloca %struct.usb_ep*, align 8
  %3 = alloca %struct.usb_request*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %2, align 8
  %4 = load %struct.usb_ep*, %struct.usb_ep** %2, align 8
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call %struct.usb_request* @usb_ep_alloc_request(%struct.usb_ep* %4, i32 %5)
  store %struct.usb_request* %6, %struct.usb_request** %3, align 8
  %7 = load %struct.usb_request*, %struct.usb_request** %3, align 8
  %8 = icmp ne %struct.usb_request* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load i32, i32* @buflen, align 4
  %11 = load %struct.usb_request*, %struct.usb_request** %3, align 8
  %12 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @buflen, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call i32 @kmalloc(i32 %13, i32 %14)
  %16 = load %struct.usb_request*, %struct.usb_request** %3, align 8
  %17 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.usb_request*, %struct.usb_request** %3, align 8
  %19 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %9
  %23 = load %struct.usb_ep*, %struct.usb_ep** %2, align 8
  %24 = load %struct.usb_request*, %struct.usb_request** %3, align 8
  %25 = call i32 @usb_ep_free_request(%struct.usb_ep* %23, %struct.usb_request* %24)
  store %struct.usb_request* null, %struct.usb_request** %3, align 8
  br label %26

26:                                               ; preds = %22, %9
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.usb_request*, %struct.usb_request** %3, align 8
  ret %struct.usb_request* %28
}

declare dso_local %struct.usb_request* @usb_ep_alloc_request(%struct.usb_ep*, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @usb_ep_free_request(%struct.usb_ep*, %struct.usb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
