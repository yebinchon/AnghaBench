; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_update_ring_for_set_deq_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_update_ring_for_set_deq_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_virt_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %union.xhci_trb* }
%union.xhci_trb = type { i32 }
%struct.xhci_ring = type { i32, %union.xhci_trb*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %union.xhci_trb*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [36 x i8] c"Unable to find new dequeue pointer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_virt_device*, %struct.xhci_ring*, i32)* @update_ring_for_set_deq_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_ring_for_set_deq_completion(%struct.xhci_hcd* %0, %struct.xhci_virt_device* %1, %struct.xhci_ring* %2, i32 %3) #0 {
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.xhci_virt_device*, align 8
  %7 = alloca %struct.xhci_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.xhci_trb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store %struct.xhci_virt_device* %1, %struct.xhci_virt_device** %6, align 8
  store %struct.xhci_ring* %2, %struct.xhci_ring** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %13 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  %15 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %16 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %15, i32 0, i32 1
  %17 = load %union.xhci_trb*, %union.xhci_trb** %16, align 8
  store %union.xhci_trb* %17, %union.xhci_trb** %9, align 8
  %18 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %19 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %20 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %21 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %24 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %23, i32 0, i32 1
  %25 = load %union.xhci_trb*, %union.xhci_trb** %24, align 8
  %26 = call i64 @last_trb(%struct.xhci_hcd* %18, %struct.xhci_ring* %19, %struct.TYPE_4__* %22, %union.xhci_trb* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %4
  %29 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %30 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %35 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %34, i32 0, i32 2
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %35, align 8
  %36 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %37 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %union.xhci_trb*, %union.xhci_trb** %39, align 8
  %41 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %42 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %41, i32 0, i32 1
  store %union.xhci_trb* %40, %union.xhci_trb** %42, align 8
  br label %43

43:                                               ; preds = %28, %4
  br label %44

44:                                               ; preds = %112, %43
  %45 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %46 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %45, i32 0, i32 1
  %47 = load %union.xhci_trb*, %union.xhci_trb** %46, align 8
  %48 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %49 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load %union.xhci_trb*, %union.xhci_trb** %54, align 8
  %56 = icmp ne %union.xhci_trb* %47, %55
  br i1 %56, label %57, label %113

57:                                               ; preds = %44
  %58 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %59 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %63 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %62, i32 0, i32 1
  %64 = load %union.xhci_trb*, %union.xhci_trb** %63, align 8
  %65 = getelementptr inbounds %union.xhci_trb, %union.xhci_trb* %64, i32 1
  store %union.xhci_trb* %65, %union.xhci_trb** %63, align 8
  %66 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %67 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %68 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %69 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %72 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %71, i32 0, i32 1
  %73 = load %union.xhci_trb*, %union.xhci_trb** %72, align 8
  %74 = call i64 @last_trb(%struct.xhci_hcd* %66, %struct.xhci_ring* %67, %struct.TYPE_4__* %70, %union.xhci_trb* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %105

76:                                               ; preds = %57
  %77 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %78 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %77, i32 0, i32 1
  %79 = load %union.xhci_trb*, %union.xhci_trb** %78, align 8
  %80 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %81 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load %union.xhci_trb*, %union.xhci_trb** %86, align 8
  %88 = icmp eq %union.xhci_trb* %79, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %76
  br label %113

90:                                               ; preds = %76
  %91 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %92 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %97 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %96, i32 0, i32 2
  store %struct.TYPE_4__* %95, %struct.TYPE_4__** %97, align 8
  %98 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %99 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %union.xhci_trb*, %union.xhci_trb** %101, align 8
  %103 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %104 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %103, i32 0, i32 1
  store %union.xhci_trb* %102, %union.xhci_trb** %104, align 8
  br label %105

105:                                              ; preds = %90, %57
  %106 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %107 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %106, i32 0, i32 1
  %108 = load %union.xhci_trb*, %union.xhci_trb** %107, align 8
  %109 = load %union.xhci_trb*, %union.xhci_trb** %9, align 8
  %110 = icmp eq %union.xhci_trb* %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 1, i32* %11, align 4
  br label %113

112:                                              ; preds = %105
  br label %44

113:                                              ; preds = %111, %89, %44
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %118 = call i32 @xhci_dbg(%struct.xhci_hcd* %117, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %121 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %116, %113
  ret void
}

declare dso_local i64 @last_trb(%struct.xhci_hcd*, %struct.xhci_ring*, %struct.TYPE_4__*, %union.xhci_trb*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
