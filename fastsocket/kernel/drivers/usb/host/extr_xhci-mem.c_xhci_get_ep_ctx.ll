; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_get_ep_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_get_ep_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_ep_ctx = type { i32 }
%struct.xhci_hcd = type { i32 }
%struct.xhci_container_ctx = type { i64, i64 }

@XHCI_CTX_TYPE_INPUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %0, %struct.xhci_container_ctx* %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_container_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_container_ctx* %1, %struct.xhci_container_ctx** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = add i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.xhci_container_ctx, %struct.xhci_container_ctx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @XHCI_CTX_TYPE_INPUT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.xhci_container_ctx, %struct.xhci_container_ctx* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %23 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CTX_SIZE(i32 %24)
  %26 = mul i32 %21, %25
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %20, %27
  %29 = inttoptr i64 %28 to %struct.xhci_ep_ctx*
  ret %struct.xhci_ep_ctx* %29
}

declare dso_local i32 @CTX_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
