; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_endpoint_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_endpoint_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_container_ctx = type { i32 }
%struct.xhci_ep_ctx = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_endpoint_copy(%struct.xhci_hcd* %0, %struct.xhci_container_ctx* %1, %struct.xhci_container_ctx* %2, i32 %3) #0 {
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.xhci_container_ctx*, align 8
  %7 = alloca %struct.xhci_container_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xhci_ep_ctx*, align 8
  %10 = alloca %struct.xhci_ep_ctx*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store %struct.xhci_container_ctx* %1, %struct.xhci_container_ctx** %6, align 8
  store %struct.xhci_container_ctx* %2, %struct.xhci_container_ctx** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %12 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %11, %struct.xhci_container_ctx* %12, i32 %13)
  store %struct.xhci_ep_ctx* %14, %struct.xhci_ep_ctx** %9, align 8
  %15 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %16 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %15, %struct.xhci_container_ctx* %16, i32 %17)
  store %struct.xhci_ep_ctx* %18, %struct.xhci_ep_ctx** %10, align 8
  %19 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %9, align 8
  %20 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %10, align 8
  %23 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %9, align 8
  %25 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %10, align 8
  %28 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %9, align 8
  %30 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %10, align 8
  %33 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %9, align 8
  %35 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %10, align 8
  %38 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  ret void
}

declare dso_local %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd*, %struct.xhci_container_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
