; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_ring_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_ring_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_ring = type { i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xhci_hcd = type { i32 }

@TYPE_EVENT = common dso_local global i32 0, align 4
@LINK_TOGGLE = common dso_local global i32 0, align 4
@TRBS_PER_SEGMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xhci_ring* (%struct.xhci_hcd*, i32, i32, i32, i32)* @xhci_ring_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xhci_ring* @xhci_ring_alloc(%struct.xhci_hcd* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.xhci_ring*, align 8
  %7 = alloca %struct.xhci_hcd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xhci_ring*, align 8
  %13 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = call %struct.xhci_ring* @kzalloc(i32 24, i32 %14)
  store %struct.xhci_ring* %15, %struct.xhci_ring** %12, align 8
  %16 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %17 = icmp ne %struct.xhci_ring* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store %struct.xhci_ring* null, %struct.xhci_ring** %6, align 8
  br label %75

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %22 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %24 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %23, i32 0, i32 4
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %28 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  store %struct.xhci_ring* %32, %struct.xhci_ring** %6, align 8
  br label %75

33:                                               ; preds = %19
  %34 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %35 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %36 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %35, i32 0, i32 3
  %37 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %38 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %37, i32 0, i32 2
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @xhci_alloc_segments_for_ring(%struct.xhci_hcd* %34, i32* %36, %struct.TYPE_6__** %38, i32 %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %72

47:                                               ; preds = %33
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @TYPE_EVENT, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load i32, i32* @LINK_TOGGLE, align 4
  %53 = call i32 @cpu_to_le32(i32 %52)
  %54 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %55 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %53
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %51, %47
  %68 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @xhci_initialize_ring_info(%struct.xhci_ring* %68, i32 %69)
  %71 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  store %struct.xhci_ring* %71, %struct.xhci_ring** %6, align 8
  br label %75

72:                                               ; preds = %46
  %73 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %74 = call i32 @kfree(%struct.xhci_ring* %73)
  store %struct.xhci_ring* null, %struct.xhci_ring** %6, align 8
  br label %75

75:                                               ; preds = %72, %67, %31, %18
  %76 = load %struct.xhci_ring*, %struct.xhci_ring** %6, align 8
  ret %struct.xhci_ring* %76
}

declare dso_local %struct.xhci_ring* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @xhci_alloc_segments_for_ring(%struct.xhci_hcd*, i32*, %struct.TYPE_6__**, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @xhci_initialize_ring_info(%struct.xhci_ring*, i32) #1

declare dso_local i32 @kfree(%struct.xhci_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
