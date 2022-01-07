; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_gmidi.c_gmidi_setup_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_gmidi.c_gmidi_setup_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i64 }
%struct.usb_request = type { i64, i64, i64 }
%struct.gmidi_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"setup complete --> %d, %d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @gmidi_setup_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmidi_setup_complete(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %5 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %6 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %11 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %14 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %9, %2
  %18 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %19 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.gmidi_device*
  %22 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %23 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %26 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %29 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @DBG(%struct.gmidi_device* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %27, i64 %30)
  br label %32

32:                                               ; preds = %17, %9
  ret void
}

declare dso_local i32 @DBG(%struct.gmidi_device*, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
