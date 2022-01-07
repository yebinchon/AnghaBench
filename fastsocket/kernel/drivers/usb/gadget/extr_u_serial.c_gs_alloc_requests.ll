; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_serial.c_gs_alloc_requests.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_serial.c_gs_alloc_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.list_head = type { i32 }
%struct.usb_request = type { void (%struct.usb_ep.0*, %struct.usb_request*)*, i32 }
%struct.usb_ep.0 = type opaque

@QUEUE_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.list_head*, void (%struct.usb_ep*, %struct.usb_request*)*)* @gs_alloc_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_alloc_requests(%struct.usb_ep* %0, %struct.list_head* %1, void (%struct.usb_ep*, %struct.usb_request*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca void (%struct.usb_ep*, %struct.usb_request*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_request*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store void (%struct.usb_ep*, %struct.usb_request*)* %2, void (%struct.usb_ep*, %struct.usb_request*)** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %42, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @QUEUE_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %10
  %15 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %16 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %17 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.usb_request* @gs_alloc_req(%struct.usb_ep* %15, i32 %18, i32 %19)
  store %struct.usb_request* %20, %struct.usb_request** %9, align 8
  %21 = load %struct.usb_request*, %struct.usb_request** %9, align 8
  %22 = icmp ne %struct.usb_request* %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %14
  %24 = load %struct.list_head*, %struct.list_head** %6, align 8
  %25 = call i64 @list_empty(%struct.list_head* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  br label %31

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32 [ %29, %27 ], [ 0, %30 ]
  store i32 %32, i32* %4, align 4
  br label %46

33:                                               ; preds = %14
  %34 = load void (%struct.usb_ep*, %struct.usb_request*)*, void (%struct.usb_ep*, %struct.usb_request*)** %7, align 8
  %35 = bitcast void (%struct.usb_ep*, %struct.usb_request*)* %34 to void (%struct.usb_ep.0*, %struct.usb_request*)*
  %36 = load %struct.usb_request*, %struct.usb_request** %9, align 8
  %37 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %36, i32 0, i32 0
  store void (%struct.usb_ep.0*, %struct.usb_request*)* %35, void (%struct.usb_ep.0*, %struct.usb_request*)** %37, align 8
  %38 = load %struct.usb_request*, %struct.usb_request** %9, align 8
  %39 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %38, i32 0, i32 1
  %40 = load %struct.list_head*, %struct.list_head** %6, align 8
  %41 = call i32 @list_add_tail(i32* %39, %struct.list_head* %40)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %10

45:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.usb_request* @gs_alloc_req(%struct.usb_ep*, i32, i32) #1

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
