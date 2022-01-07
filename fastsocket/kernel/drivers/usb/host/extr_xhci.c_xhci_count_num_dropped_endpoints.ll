; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_count_num_dropped_endpoints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_count_num_dropped_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_container_ctx = type { i32 }
%struct.xhci_input_control_ctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_container_ctx*)* @xhci_count_num_dropped_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_count_num_dropped_endpoints(%struct.xhci_hcd* %0, %struct.xhci_container_ctx* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %struct.xhci_container_ctx*, align 8
  %5 = alloca %struct.xhci_input_control_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %struct.xhci_container_ctx* %1, %struct.xhci_container_ctx** %4, align 8
  %8 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %9 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %4, align 8
  %10 = call %struct.xhci_input_control_ctx* @xhci_get_input_control_ctx(%struct.xhci_hcd* %8, %struct.xhci_container_ctx* %9)
  store %struct.xhci_input_control_ctx* %10, %struct.xhci_input_control_ctx** %5, align 8
  %11 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.xhci_input_control_ctx, %struct.xhci_input_control_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 2
  store i32 %14, i32* %6, align 4
  %15 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.xhci_input_control_ctx, %struct.xhci_input_control_ctx* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 2
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @hweight32(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @hweight32(i32 %23)
  %25 = sub i32 %20, %24
  ret i32 %25
}

declare dso_local %struct.xhci_input_control_ctx* @xhci_get_input_control_ctx(%struct.xhci_hcd*, %struct.xhci_container_ctx*) #1

declare dso_local i32 @hweight32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
