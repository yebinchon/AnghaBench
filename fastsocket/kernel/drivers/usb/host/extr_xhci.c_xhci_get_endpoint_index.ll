; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_get_endpoint_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_get_endpoint_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_endpoint_descriptor = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_get_endpoint_index(%struct.usb_endpoint_descriptor* %0) #0 {
  %2 = alloca %struct.usb_endpoint_descriptor*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_endpoint_descriptor* %0, %struct.usb_endpoint_descriptor** %2, align 8
  %4 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %2, align 8
  %5 = call i64 @usb_endpoint_xfer_control(%struct.usb_endpoint_descriptor* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %2, align 8
  %9 = call i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %8)
  %10 = mul nsw i32 %9, 2
  store i32 %10, i32* %3, align 4
  br label %22

11:                                               ; preds = %1
  %12 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %2, align 8
  %13 = call i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %12)
  %14 = mul nsw i32 %13, 2
  %15 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %2, align 8
  %16 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %15)
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  %20 = add i32 %14, %19
  %21 = sub i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %11, %7
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i64 @usb_endpoint_xfer_control(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
