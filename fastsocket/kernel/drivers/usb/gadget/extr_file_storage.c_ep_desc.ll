; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_ep_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_ep_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i64 }
%struct.usb_endpoint_descriptor = type { i32 }

@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_endpoint_descriptor* (%struct.usb_gadget*, %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor*)* @ep_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_endpoint_descriptor* @ep_desc(%struct.usb_gadget* %0, %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor* %2) #0 {
  %4 = alloca %struct.usb_endpoint_descriptor*, align 8
  %5 = alloca %struct.usb_gadget*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %5, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %6, align 8
  store %struct.usb_endpoint_descriptor* %2, %struct.usb_endpoint_descriptor** %7, align 8
  %8 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %9 = call i64 @gadget_is_dualspeed(%struct.usb_gadget* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %13 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @USB_SPEED_HIGH, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  store %struct.usb_endpoint_descriptor* %18, %struct.usb_endpoint_descriptor** %4, align 8
  br label %21

19:                                               ; preds = %11, %3
  %20 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  store %struct.usb_endpoint_descriptor* %20, %struct.usb_endpoint_descriptor** %4, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  ret %struct.usb_endpoint_descriptor* %22
}

declare dso_local i64 @gadget_is_dualspeed(%struct.usb_gadget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
