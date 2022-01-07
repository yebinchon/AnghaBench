; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_dummy_free_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_dummy_free_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i64 }
%struct.usb_request = type { i32 }
%struct.dummy_ep = type { i32 }
%struct.dummy_request = type { i32 }

@ep0name = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @dummy_free_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dummy_free_request(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.dummy_ep*, align 8
  %6 = alloca %struct.dummy_request*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %7 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %8 = call %struct.dummy_ep* @usb_ep_to_dummy_ep(%struct.usb_ep* %7)
  store %struct.dummy_ep* %8, %struct.dummy_ep** %5, align 8
  %9 = load %struct.dummy_ep*, %struct.dummy_ep** %5, align 8
  %10 = icmp ne %struct.dummy_ep* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %13 = icmp ne %struct.usb_request* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load %struct.dummy_ep*, %struct.dummy_ep** %5, align 8
  %16 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %21 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ep0name, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %11, %2
  br label %38

26:                                               ; preds = %19, %14
  %27 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %28 = call %struct.dummy_request* @usb_request_to_dummy_request(%struct.usb_request* %27)
  store %struct.dummy_request* %28, %struct.dummy_request** %6, align 8
  %29 = load %struct.dummy_request*, %struct.dummy_request** %6, align 8
  %30 = getelementptr inbounds %struct.dummy_request, %struct.dummy_request* %29, i32 0, i32 0
  %31 = call i32 @list_empty(i32* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load %struct.dummy_request*, %struct.dummy_request** %6, align 8
  %37 = call i32 @kfree(%struct.dummy_request* %36)
  br label %38

38:                                               ; preds = %26, %25
  ret void
}

declare dso_local %struct.dummy_ep* @usb_ep_to_dummy_ep(%struct.usb_ep*) #1

declare dso_local %struct.dummy_request* @usb_request_to_dummy_request(%struct.usb_request*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @kfree(%struct.dummy_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
