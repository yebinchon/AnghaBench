; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_acm.c_acm_cdc_notify_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_acm.c_acm_cdc_notify_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32, %struct.f_acm* }
%struct.f_acm = type { i32, i32, %struct.usb_request* }

@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @acm_cdc_notify_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acm_cdc_notify_complete(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.f_acm*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %7 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %8 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %7, i32 0, i32 1
  %9 = load %struct.f_acm*, %struct.f_acm** %8, align 8
  store %struct.f_acm* %9, %struct.f_acm** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.f_acm*, %struct.f_acm** %5, align 8
  %11 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %14 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ESHUTDOWN, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.f_acm*, %struct.f_acm** %5, align 8
  %21 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %25 = load %struct.f_acm*, %struct.f_acm** %5, align 8
  %26 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %25, i32 0, i32 2
  store %struct.usb_request* %24, %struct.usb_request** %26, align 8
  %27 = load %struct.f_acm*, %struct.f_acm** %5, align 8
  %28 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load %struct.f_acm*, %struct.f_acm** %5, align 8
  %34 = call i32 @acm_notify_serial_state(%struct.f_acm* %33)
  br label %35

35:                                               ; preds = %32, %23
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @acm_notify_serial_state(%struct.f_acm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
