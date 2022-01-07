; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_segment_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_segment_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_segment = type { i32*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xhci_hcd = type { i32 }

@TRB_SEGMENT_SIZE = common dso_local global i32 0, align 4
@TRBS_PER_SEGMENT = common dso_local global i32 0, align 4
@TRB_CYCLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xhci_segment* (%struct.xhci_hcd*, i32, i32)* @xhci_segment_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xhci_segment* @xhci_segment_alloc(%struct.xhci_hcd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_segment*, align 8
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xhci_segment*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.xhci_segment* @kzalloc(i32 24, i32 %11)
  store %struct.xhci_segment* %12, %struct.xhci_segment** %8, align 8
  %13 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %14 = icmp ne %struct.xhci_segment* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.xhci_segment* null, %struct.xhci_segment** %4, align 8
  br label %67

16:                                               ; preds = %3
  %17 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %18 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.TYPE_5__* @dma_pool_alloc(i32 %19, i32 %20, i32* %9)
  %22 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %23 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %22, i32 0, i32 2
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %23, align 8
  %24 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %25 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %16
  %29 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %30 = call i32 @kfree(%struct.xhci_segment* %29)
  store %struct.xhci_segment* null, %struct.xhci_segment** %4, align 8
  br label %67

31:                                               ; preds = %16
  %32 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %33 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* @TRB_SEGMENT_SIZE, align 4
  %36 = call i32 @memset(%struct.TYPE_5__* %34, i32 0, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %56, %39
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load i32, i32* @TRB_CYCLE, align 4
  %46 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %47 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %45
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %40

59:                                               ; preds = %40
  br label %60

60:                                               ; preds = %59, %31
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %63 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %65 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  %66 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  store %struct.xhci_segment* %66, %struct.xhci_segment** %4, align 8
  br label %67

67:                                               ; preds = %60, %28, %15
  %68 = load %struct.xhci_segment*, %struct.xhci_segment** %4, align 8
  ret %struct.xhci_segment* %68
}

declare dso_local %struct.xhci_segment* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_5__* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.xhci_segment*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
