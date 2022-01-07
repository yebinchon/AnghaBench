; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_test_trb_in_td.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_test_trb_in_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%union.xhci_trb = type { i32 }
%struct.xhci_segment = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"WARN: %s TRB math test %d failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Tested TRB math w/ seg %p and input DMA 0x%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"starting TRB %p (0x%llx DMA), ending TRB %p (0x%llx DMA)\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Expected seg %p, got seg %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_segment*, %union.xhci_trb*, %union.xhci_trb*, i64, %struct.xhci_segment*, i8*, i32)* @xhci_test_trb_in_td to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_test_trb_in_td(%struct.xhci_hcd* %0, %struct.xhci_segment* %1, %union.xhci_trb* %2, %union.xhci_trb* %3, i64 %4, %struct.xhci_segment* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.xhci_hcd*, align 8
  %11 = alloca %struct.xhci_segment*, align 8
  %12 = alloca %union.xhci_trb*, align 8
  %13 = alloca %union.xhci_trb*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.xhci_segment*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.xhci_segment*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %10, align 8
  store %struct.xhci_segment* %1, %struct.xhci_segment** %11, align 8
  store %union.xhci_trb* %2, %union.xhci_trb** %12, align 8
  store %union.xhci_trb* %3, %union.xhci_trb** %13, align 8
  store i64 %4, i64* %14, align 8
  store %struct.xhci_segment* %5, %struct.xhci_segment** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load %struct.xhci_segment*, %struct.xhci_segment** %11, align 8
  %22 = load %union.xhci_trb*, %union.xhci_trb** %12, align 8
  %23 = call i64 @xhci_trb_virt_to_dma(%struct.xhci_segment* %21, %union.xhci_trb* %22)
  store i64 %23, i64* %18, align 8
  %24 = load %struct.xhci_segment*, %struct.xhci_segment** %11, align 8
  %25 = load %union.xhci_trb*, %union.xhci_trb** %13, align 8
  %26 = call i64 @xhci_trb_virt_to_dma(%struct.xhci_segment* %24, %union.xhci_trb* %25)
  store i64 %26, i64* %19, align 8
  %27 = load %struct.xhci_segment*, %struct.xhci_segment** %11, align 8
  %28 = load %union.xhci_trb*, %union.xhci_trb** %12, align 8
  %29 = load %union.xhci_trb*, %union.xhci_trb** %13, align 8
  %30 = load i64, i64* %14, align 8
  %31 = call %struct.xhci_segment* @trb_in_td(%struct.xhci_segment* %27, %union.xhci_trb* %28, %union.xhci_trb* %29, i64 %30)
  store %struct.xhci_segment* %31, %struct.xhci_segment** %20, align 8
  %32 = load %struct.xhci_segment*, %struct.xhci_segment** %20, align 8
  %33 = load %struct.xhci_segment*, %struct.xhci_segment** %15, align 8
  %34 = icmp ne %struct.xhci_segment* %32, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %8
  %36 = load %struct.xhci_hcd*, %struct.xhci_hcd** %10, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = load i32, i32* %17, align 4
  %39 = call i32 (%struct.xhci_hcd*, i8*, i8*, i32, ...) @xhci_warn(%struct.xhci_hcd* %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %38)
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %10, align 8
  %41 = load %struct.xhci_segment*, %struct.xhci_segment** %11, align 8
  %42 = bitcast %struct.xhci_segment* %41 to i8*
  %43 = load i64, i64* %14, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 (%struct.xhci_hcd*, i8*, i8*, i32, ...) @xhci_warn(%struct.xhci_hcd* %40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %42, i32 %44)
  %46 = load %struct.xhci_hcd*, %struct.xhci_hcd** %10, align 8
  %47 = load %union.xhci_trb*, %union.xhci_trb** %12, align 8
  %48 = bitcast %union.xhci_trb* %47 to i8*
  %49 = load i64, i64* %18, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %union.xhci_trb*, %union.xhci_trb** %13, align 8
  %52 = load i64, i64* %19, align 8
  %53 = call i32 (%struct.xhci_hcd*, i8*, i8*, i32, ...) @xhci_warn(%struct.xhci_hcd* %46, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %48, i32 %50, %union.xhci_trb* %51, i64 %52)
  %54 = load %struct.xhci_hcd*, %struct.xhci_hcd** %10, align 8
  %55 = load %struct.xhci_segment*, %struct.xhci_segment** %15, align 8
  %56 = bitcast %struct.xhci_segment* %55 to i8*
  %57 = load %struct.xhci_segment*, %struct.xhci_segment** %20, align 8
  %58 = ptrtoint %struct.xhci_segment* %57 to i32
  %59 = call i32 (%struct.xhci_hcd*, i8*, i8*, i32, ...) @xhci_warn(%struct.xhci_hcd* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %56, i32 %58)
  store i32 -1, i32* %9, align 4
  br label %61

60:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %60, %35
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local i64 @xhci_trb_virt_to_dma(%struct.xhci_segment*, %union.xhci_trb*) #1

declare dso_local %struct.xhci_segment* @trb_in_td(%struct.xhci_segment*, %union.xhci_trb*, %union.xhci_trb*, i64) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
