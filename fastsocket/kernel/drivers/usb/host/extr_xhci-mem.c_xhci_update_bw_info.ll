; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_update_bw_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_update_bw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_container_ctx = type { i32 }
%struct.xhci_input_control_ctx = type { i32 }
%struct.xhci_virt_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xhci_bw_info }
%struct.xhci_bw_info = type { i32, i32, i32, i64, i64, i32 }
%struct.xhci_ep_ctx = type { i32, i32, i32 }

@ISOC_OUT_EP = common dso_local global i32 0, align 4
@INT_OUT_EP = common dso_local global i32 0, align 4
@ISOC_IN_EP = common dso_local global i32 0, align 4
@INT_IN_EP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_update_bw_info(%struct.xhci_hcd* %0, %struct.xhci_container_ctx* %1, %struct.xhci_input_control_ctx* %2, %struct.xhci_virt_device* %3) #0 {
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.xhci_container_ctx*, align 8
  %7 = alloca %struct.xhci_input_control_ctx*, align 8
  %8 = alloca %struct.xhci_virt_device*, align 8
  %9 = alloca %struct.xhci_bw_info*, align 8
  %10 = alloca %struct.xhci_ep_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store %struct.xhci_container_ctx* %1, %struct.xhci_container_ctx** %6, align 8
  store %struct.xhci_input_control_ctx* %2, %struct.xhci_input_control_ctx** %7, align 8
  store %struct.xhci_virt_device* %3, %struct.xhci_virt_device** %8, align 8
  store i32 1, i32* %12, align 4
  br label %13

13:                                               ; preds = %109, %4
  %14 = load i32, i32* %12, align 4
  %15 = icmp slt i32 %14, 31
  br i1 %15, label %16, label %112

16:                                               ; preds = %13
  %17 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %8, align 8
  %18 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.xhci_bw_info* %23, %struct.xhci_bw_info** %9, align 8
  %24 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %7, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i64 @EP_IS_ADDED(%struct.xhci_input_control_ctx* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %16
  %29 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %7, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i64 @EP_IS_DROPPED(%struct.xhci_input_control_ctx* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %9, align 8
  %35 = call i32 @xhci_clear_endpoint_bw_info(%struct.xhci_bw_info* %34)
  br label %109

36:                                               ; preds = %28, %16
  %37 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %7, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i64 @EP_IS_ADDED(%struct.xhci_input_control_ctx* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %108

41:                                               ; preds = %36
  %42 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %43 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %6, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %42, %struct.xhci_container_ctx* %43, i32 %44)
  store %struct.xhci_ep_ctx* %45, %struct.xhci_ep_ctx** %10, align 8
  %46 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %10, align 8
  %47 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  %50 = call i32 @CTX_TO_EP_TYPE(i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @ISOC_OUT_EP, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %41
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @INT_OUT_EP, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @ISOC_IN_EP, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @INT_IN_EP, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %109

67:                                               ; preds = %62, %58, %54, %41
  %68 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %10, align 8
  %69 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = call i32 @CTX_TO_EP_INTERVAL(i32 %71)
  %73 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %9, align 8
  %74 = getelementptr inbounds %struct.xhci_bw_info, %struct.xhci_bw_info* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %10, align 8
  %76 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  %79 = call i64 @CTX_TO_EP_MULT(i32 %78)
  %80 = add nsw i64 %79, 1
  %81 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %9, align 8
  %82 = getelementptr inbounds %struct.xhci_bw_info, %struct.xhci_bw_info* %81, i32 0, i32 4
  store i64 %80, i64* %82, align 8
  %83 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %10, align 8
  %84 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le32_to_cpu(i32 %85)
  %87 = call i64 @CTX_TO_MAX_BURST(i32 %86)
  %88 = add nsw i64 %87, 1
  %89 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %9, align 8
  %90 = getelementptr inbounds %struct.xhci_bw_info, %struct.xhci_bw_info* %89, i32 0, i32 3
  store i64 %88, i64* %90, align 8
  %91 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %10, align 8
  %92 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le32_to_cpu(i32 %93)
  %95 = call i32 @MAX_PACKET_DECODED(i32 %94)
  %96 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %9, align 8
  %97 = getelementptr inbounds %struct.xhci_bw_info, %struct.xhci_bw_info* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %9, align 8
  %100 = getelementptr inbounds %struct.xhci_bw_info, %struct.xhci_bw_info* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %10, align 8
  %102 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le32_to_cpu(i32 %103)
  %105 = call i32 @CTX_TO_MAX_ESIT_PAYLOAD(i32 %104)
  %106 = load %struct.xhci_bw_info*, %struct.xhci_bw_info** %9, align 8
  %107 = getelementptr inbounds %struct.xhci_bw_info, %struct.xhci_bw_info* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %67, %36
  br label %109

109:                                              ; preds = %108, %66, %33
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %13

112:                                              ; preds = %13
  ret void
}

declare dso_local i64 @EP_IS_ADDED(%struct.xhci_input_control_ctx*, i32) #1

declare dso_local i64 @EP_IS_DROPPED(%struct.xhci_input_control_ctx*, i32) #1

declare dso_local i32 @xhci_clear_endpoint_bw_info(%struct.xhci_bw_info*) #1

declare dso_local %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd*, %struct.xhci_container_ctx*, i32) #1

declare dso_local i32 @CTX_TO_EP_TYPE(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @CTX_TO_EP_INTERVAL(i32) #1

declare dso_local i64 @CTX_TO_EP_MULT(i32) #1

declare dso_local i64 @CTX_TO_MAX_BURST(i32) #1

declare dso_local i32 @MAX_PACKET_DECODED(i32) #1

declare dso_local i32 @CTX_TO_MAX_ESIT_PAYLOAD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
