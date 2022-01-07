; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_inc_deq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_inc_deq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_ring = type { i64, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_4__* }

@TYPE_EVENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_ring*)* @inc_deq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inc_deq(%struct.xhci_hcd* %0, %struct.xhci_ring* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %struct.xhci_ring*, align 8
  %5 = alloca i64, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %struct.xhci_ring* %1, %struct.xhci_ring** %4, align 8
  %6 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %7 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %11 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TYPE_EVENT, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %17 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %18 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %19 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %22 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @last_trb(%struct.xhci_hcd* %16, %struct.xhci_ring* %17, %struct.TYPE_4__* %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %15
  %27 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %28 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %26, %15, %2
  br label %32

32:                                               ; preds = %90, %31
  %33 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %34 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %35 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %36 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %39 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @last_trb(%struct.xhci_hcd* %33, %struct.xhci_ring* %34, %struct.TYPE_4__* %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %84

43:                                               ; preds = %32
  %44 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %45 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TYPE_EVENT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %43
  %50 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %51 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %52 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %53 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %56 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @last_trb_on_last_seg(%struct.xhci_hcd* %50, %struct.xhci_ring* %51, %struct.TYPE_4__* %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %49
  %61 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %62 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 0, i32 1
  %67 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %68 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %60, %49, %43
  %70 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %71 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %76 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %75, i32 0, i32 3
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** %76, align 8
  %77 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %78 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %83 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  br label %89

84:                                               ; preds = %32
  %85 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %86 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %84, %69
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %92 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %93 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %94 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %97 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @last_trb(%struct.xhci_hcd* %91, %struct.xhci_ring* %92, %struct.TYPE_4__* %95, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %32, label %101

101:                                              ; preds = %90
  %102 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %103 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %106 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @xhci_trb_virt_to_dma(%struct.TYPE_4__* %104, i32 %107)
  store i64 %108, i64* %5, align 8
  ret void
}

declare dso_local i64 @last_trb(%struct.xhci_hcd*, %struct.xhci_ring*, %struct.TYPE_4__*, i32) #1

declare dso_local i64 @last_trb_on_last_seg(%struct.xhci_hcd*, %struct.xhci_ring*, %struct.TYPE_4__*, i32) #1

declare dso_local i64 @xhci_trb_virt_to_dma(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
