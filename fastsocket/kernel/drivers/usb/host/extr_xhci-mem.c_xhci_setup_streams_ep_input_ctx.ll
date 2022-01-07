; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_setup_streams_ep_input_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_setup_streams_ep_input_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_ep_ctx = type { i32, i32 }
%struct.xhci_stream_info = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Setting number of stream ctx array entries to %u\0A\00", align 1
@EP_MAXPSTREAMS_MASK = common dso_local global i32 0, align 4
@EP_HAS_LSA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_setup_streams_ep_input_ctx(%struct.xhci_hcd* %0, %struct.xhci_ep_ctx* %1, %struct.xhci_stream_info* %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_ep_ctx*, align 8
  %6 = alloca %struct.xhci_stream_info*, align 8
  %7 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_ep_ctx* %1, %struct.xhci_ep_ctx** %5, align 8
  store %struct.xhci_stream_info* %2, %struct.xhci_stream_info** %6, align 8
  %8 = load %struct.xhci_stream_info*, %struct.xhci_stream_info** %6, align 8
  %9 = getelementptr inbounds %struct.xhci_stream_info, %struct.xhci_stream_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @fls(i32 %10)
  %12 = sub nsw i32 %11, 2
  store i32 %12, i32* %7, align 4
  %13 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, 1
  %16 = shl i32 1, %15
  %17 = call i32 @xhci_dbg(%struct.xhci_hcd* %13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EP_MAXPSTREAMS_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = call i32 @cpu_to_le32(i32 %19)
  %21 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @EP_MAXPSTREAMS(i32 %25)
  %27 = load i32, i32* @EP_HAS_LSA, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @cpu_to_le32(i32 %28)
  %30 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.xhci_stream_info*, %struct.xhci_stream_info** %6, align 8
  %35 = getelementptr inbounds %struct.xhci_stream_info, %struct.xhci_stream_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cpu_to_le64(i32 %36)
  %38 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  ret void
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @EP_MAXPSTREAMS(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
