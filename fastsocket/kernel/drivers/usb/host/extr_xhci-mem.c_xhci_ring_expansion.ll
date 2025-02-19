; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_ring_expansion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_ring_expansion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_ring = type { i32, i32, i32 }
%struct.xhci_segment = type { i32 }

@TRBS_PER_SEGMENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ring expansion succeed, now has %d segments\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_ring_expansion(%struct.xhci_hcd* %0, %struct.xhci_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xhci_hcd*, align 8
  %7 = alloca %struct.xhci_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xhci_segment*, align 8
  %11 = alloca %struct.xhci_segment*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %6, align 8
  store %struct.xhci_ring* %1, %struct.xhci_ring** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  %17 = sub nsw i32 %16, 1
  %18 = add i32 %15, %17
  %19 = sub i32 %18, 1
  %20 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  %21 = sub nsw i32 %20, 1
  %22 = udiv i32 %19, %21
  store i32 %22, i32* %13, align 4
  %23 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %24 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %30 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  br label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %13, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi i32 [ %31, %28 ], [ %33, %32 ]
  store i32 %35, i32* %12, align 4
  %36 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %39 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %42 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @xhci_alloc_segments_for_ring(%struct.xhci_hcd* %36, %struct.xhci_segment** %10, %struct.xhci_segment** %11, i32 %37, i32 %40, i32 %43, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %63

51:                                               ; preds = %34
  %52 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %53 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %54 = load %struct.xhci_segment*, %struct.xhci_segment** %10, align 8
  %55 = load %struct.xhci_segment*, %struct.xhci_segment** %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @xhci_link_rings(%struct.xhci_hcd* %52, %struct.xhci_ring* %53, %struct.xhci_segment* %54, %struct.xhci_segment* %55, i32 %56)
  %58 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %59 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %60 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @xhci_dbg(%struct.xhci_hcd* %58, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %61)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %51, %48
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @xhci_alloc_segments_for_ring(%struct.xhci_hcd*, %struct.xhci_segment**, %struct.xhci_segment**, i32, i32, i32, i32) #1

declare dso_local i32 @xhci_link_rings(%struct.xhci_hcd*, %struct.xhci_ring*, %struct.xhci_segment*, %struct.xhci_segment*, i32) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
