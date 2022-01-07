; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_debug_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_debug_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_ring = type { i32, i32, %struct.xhci_segment* }
%struct.xhci_segment = type { %struct.xhci_segment* }

@.str = private unnamed_addr constant [29 x i8] c"  Ring has not been updated\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_debug_ring(%struct.xhci_hcd* %0, %struct.xhci_ring* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %struct.xhci_ring*, align 8
  %5 = alloca %struct.xhci_segment*, align 8
  %6 = alloca %struct.xhci_segment*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %struct.xhci_ring* %1, %struct.xhci_ring** %4, align 8
  %7 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %8 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %7, i32 0, i32 2
  %9 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  store %struct.xhci_segment* %9, %struct.xhci_segment** %6, align 8
  %10 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %11 = load %struct.xhci_segment*, %struct.xhci_segment** %6, align 8
  %12 = call i32 @xhci_debug_segment(%struct.xhci_hcd* %10, %struct.xhci_segment* %11)
  %13 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %14 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %19 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %24 = call i32 @xhci_dbg(%struct.xhci_hcd* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %41

25:                                               ; preds = %17, %2
  %26 = load %struct.xhci_segment*, %struct.xhci_segment** %6, align 8
  %27 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %26, i32 0, i32 0
  %28 = load %struct.xhci_segment*, %struct.xhci_segment** %27, align 8
  store %struct.xhci_segment* %28, %struct.xhci_segment** %5, align 8
  br label %29

29:                                               ; preds = %37, %25
  %30 = load %struct.xhci_segment*, %struct.xhci_segment** %5, align 8
  %31 = load %struct.xhci_segment*, %struct.xhci_segment** %6, align 8
  %32 = icmp ne %struct.xhci_segment* %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %35 = load %struct.xhci_segment*, %struct.xhci_segment** %5, align 8
  %36 = call i32 @xhci_debug_segment(%struct.xhci_hcd* %34, %struct.xhci_segment* %35)
  br label %37

37:                                               ; preds = %33
  %38 = load %struct.xhci_segment*, %struct.xhci_segment** %5, align 8
  %39 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %38, i32 0, i32 0
  %40 = load %struct.xhci_segment*, %struct.xhci_segment** %39, align 8
  store %struct.xhci_segment* %40, %struct.xhci_segment** %5, align 8
  br label %29

41:                                               ; preds = %22, %29
  ret void
}

declare dso_local i32 @xhci_debug_segment(%struct.xhci_hcd*, %struct.xhci_segment*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
