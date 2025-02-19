; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_zero_in_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_zero_in_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_virt_device = type { i32 }
%struct.xhci_input_control_ctx = type { i64, i64 }
%struct.xhci_ep_ctx = type { i64, i64, i64, i64 }
%struct.xhci_slot_ctx = type { i32 }

@LAST_CTX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_virt_device*)* @xhci_zero_in_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_zero_in_ctx(%struct.xhci_hcd* %0, %struct.xhci_virt_device* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %struct.xhci_virt_device*, align 8
  %5 = alloca %struct.xhci_input_control_ctx*, align 8
  %6 = alloca %struct.xhci_ep_ctx*, align 8
  %7 = alloca %struct.xhci_slot_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %struct.xhci_virt_device* %1, %struct.xhci_virt_device** %4, align 8
  %9 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %10 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %4, align 8
  %11 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.xhci_input_control_ctx* @xhci_get_input_control_ctx(%struct.xhci_hcd* %9, i32 %12)
  store %struct.xhci_input_control_ctx* %13, %struct.xhci_input_control_ctx** %5, align 8
  %14 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.xhci_input_control_ctx, %struct.xhci_input_control_ctx* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.xhci_input_control_ctx, %struct.xhci_input_control_ctx* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %19 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %4, align 8
  %20 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.xhci_slot_ctx* @xhci_get_slot_ctx(%struct.xhci_hcd* %18, i32 %21)
  store %struct.xhci_slot_ctx* %22, %struct.xhci_slot_ctx** %7, align 8
  %23 = load i32, i32* @LAST_CTX_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = call i32 @cpu_to_le32(i32 %24)
  %26 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %7, align 8
  %27 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = call i32 @LAST_CTX(i32 1)
  %31 = call i32 @cpu_to_le32(i32 %30)
  %32 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %7, align 8
  %33 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %54, %2
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 31
  br i1 %38, label %39, label %57

39:                                               ; preds = %36
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %41 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %4, align 8
  %42 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %40, i32 %43, i32 %44)
  store %struct.xhci_ep_ctx* %45, %struct.xhci_ep_ctx** %6, align 8
  %46 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %6, align 8
  %47 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %6, align 8
  %51 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %6, align 8
  %53 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %39
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %36

57:                                               ; preds = %36
  ret void
}

declare dso_local %struct.xhci_input_control_ctx* @xhci_get_input_control_ctx(%struct.xhci_hcd*, i32) #1

declare dso_local %struct.xhci_slot_ctx* @xhci_get_slot_ctx(%struct.xhci_hcd*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @LAST_CTX(i32) #1

declare dso_local %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
