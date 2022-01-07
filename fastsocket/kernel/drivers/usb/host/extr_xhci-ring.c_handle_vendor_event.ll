; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_handle_vendor_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_handle_vendor_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%union.xhci_trb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [37 x i8] c"Vendor specific event TRB type = %u\0A\00", align 1
@TRB_NEC_CMD_COMP = common dso_local global i64 0, align 8
@XHCI_NEC_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %union.xhci_trb*)* @handle_vendor_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_vendor_event(%struct.xhci_hcd* %0, %union.xhci_trb* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %union.xhci_trb*, align 8
  %5 = alloca i64, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %union.xhci_trb* %1, %union.xhci_trb** %4, align 8
  %6 = load %union.xhci_trb*, %union.xhci_trb** %4, align 8
  %7 = bitcast %union.xhci_trb* %6 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le32_to_cpu(i32 %11)
  %13 = call i64 @TRB_FIELD_TO_TYPE(i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @xhci_dbg(%struct.xhci_hcd* %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @TRB_NEC_CMD_COMP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %22 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @XHCI_NEC_HOST, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %29 = load %union.xhci_trb*, %union.xhci_trb** %4, align 8
  %30 = bitcast %union.xhci_trb* %29 to i32*
  %31 = call i32 @handle_cmd_completion(%struct.xhci_hcd* %28, i32* %30)
  br label %32

32:                                               ; preds = %27, %20, %2
  ret void
}

declare dso_local i64 @TRB_FIELD_TO_TYPE(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i64) #1

declare dso_local i32 @handle_cmd_completion(%struct.xhci_hcd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
