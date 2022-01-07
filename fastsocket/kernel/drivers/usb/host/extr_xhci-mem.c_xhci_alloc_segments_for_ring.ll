; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_alloc_segments_for_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_alloc_segments_for_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_segment = type { %struct.xhci_segment* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_segment**, %struct.xhci_segment**, i32, i32, i32, i32)* @xhci_alloc_segments_for_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_alloc_segments_for_ring(%struct.xhci_hcd* %0, %struct.xhci_segment** %1, %struct.xhci_segment** %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xhci_hcd*, align 8
  %10 = alloca %struct.xhci_segment**, align 8
  %11 = alloca %struct.xhci_segment**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.xhci_segment*, align 8
  %17 = alloca %struct.xhci_segment*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %9, align 8
  store %struct.xhci_segment** %1, %struct.xhci_segment*** %10, align 8
  store %struct.xhci_segment** %2, %struct.xhci_segment*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %15, align 4
  %21 = call %struct.xhci_segment* @xhci_segment_alloc(%struct.xhci_hcd* %18, i32 %19, i32 %20)
  store %struct.xhci_segment* %21, %struct.xhci_segment** %16, align 8
  %22 = load %struct.xhci_segment*, %struct.xhci_segment** %16, align 8
  %23 = icmp ne %struct.xhci_segment* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %77

27:                                               ; preds = %7
  %28 = load i32, i32* %12, align 4
  %29 = add i32 %28, -1
  store i32 %29, i32* %12, align 4
  %30 = load %struct.xhci_segment*, %struct.xhci_segment** %16, align 8
  %31 = load %struct.xhci_segment**, %struct.xhci_segment*** %10, align 8
  store %struct.xhci_segment* %30, %struct.xhci_segment** %31, align 8
  br label %32

32:                                               ; preds = %59, %27
  %33 = load i32, i32* %12, align 4
  %34 = icmp ugt i32 %33, 0
  br i1 %34, label %35, label %68

35:                                               ; preds = %32
  %36 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call %struct.xhci_segment* @xhci_segment_alloc(%struct.xhci_hcd* %36, i32 %37, i32 %38)
  store %struct.xhci_segment* %39, %struct.xhci_segment** %17, align 8
  %40 = load %struct.xhci_segment*, %struct.xhci_segment** %17, align 8
  %41 = icmp ne %struct.xhci_segment* %40, null
  br i1 %41, label %59, label %42

42:                                               ; preds = %35
  %43 = load %struct.xhci_segment**, %struct.xhci_segment*** %10, align 8
  %44 = load %struct.xhci_segment*, %struct.xhci_segment** %43, align 8
  store %struct.xhci_segment* %44, %struct.xhci_segment** %16, align 8
  br label %45

45:                                               ; preds = %48, %42
  %46 = load %struct.xhci_segment*, %struct.xhci_segment** %16, align 8
  %47 = icmp ne %struct.xhci_segment* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.xhci_segment*, %struct.xhci_segment** %16, align 8
  %50 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %49, i32 0, i32 0
  %51 = load %struct.xhci_segment*, %struct.xhci_segment** %50, align 8
  store %struct.xhci_segment* %51, %struct.xhci_segment** %17, align 8
  %52 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %53 = load %struct.xhci_segment*, %struct.xhci_segment** %16, align 8
  %54 = call i32 @xhci_segment_free(%struct.xhci_hcd* %52, %struct.xhci_segment* %53)
  %55 = load %struct.xhci_segment*, %struct.xhci_segment** %17, align 8
  store %struct.xhci_segment* %55, %struct.xhci_segment** %16, align 8
  br label %45

56:                                               ; preds = %45
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %77

59:                                               ; preds = %35
  %60 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %61 = load %struct.xhci_segment*, %struct.xhci_segment** %16, align 8
  %62 = load %struct.xhci_segment*, %struct.xhci_segment** %17, align 8
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @xhci_link_segments(%struct.xhci_hcd* %60, %struct.xhci_segment* %61, %struct.xhci_segment* %62, i32 %63)
  %65 = load %struct.xhci_segment*, %struct.xhci_segment** %17, align 8
  store %struct.xhci_segment* %65, %struct.xhci_segment** %16, align 8
  %66 = load i32, i32* %12, align 4
  %67 = add i32 %66, -1
  store i32 %67, i32* %12, align 4
  br label %32

68:                                               ; preds = %32
  %69 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %70 = load %struct.xhci_segment*, %struct.xhci_segment** %16, align 8
  %71 = load %struct.xhci_segment**, %struct.xhci_segment*** %10, align 8
  %72 = load %struct.xhci_segment*, %struct.xhci_segment** %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @xhci_link_segments(%struct.xhci_hcd* %69, %struct.xhci_segment* %70, %struct.xhci_segment* %72, i32 %73)
  %75 = load %struct.xhci_segment*, %struct.xhci_segment** %16, align 8
  %76 = load %struct.xhci_segment**, %struct.xhci_segment*** %11, align 8
  store %struct.xhci_segment* %75, %struct.xhci_segment** %76, align 8
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %68, %56, %24
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local %struct.xhci_segment* @xhci_segment_alloc(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @xhci_segment_free(%struct.xhci_hcd*, %struct.xhci_segment*) #1

declare dso_local i32 @xhci_link_segments(%struct.xhci_hcd*, %struct.xhci_segment*, %struct.xhci_segment*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
