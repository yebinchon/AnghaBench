; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_td_to_noop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_td_to_noop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_ring = type { i32 }
%struct.xhci_td = type { %union.xhci_trb*, %union.xhci_trb*, %struct.xhci_segment* }
%union.xhci_trb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.xhci_segment = type { i64 }

@TRB_CHAIN = common dso_local global i32 0, align 4
@TRB_CYCLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Cancel (unchain) link TRB\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Address = %p (0x%llx dma); in seg %p (0x%llx dma)\0A\00", align 1
@TRB_TR_NOOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"TRB to noop at offset 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_ring*, %struct.xhci_td*, i32)* @td_to_noop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @td_to_noop(%struct.xhci_hcd* %0, %struct.xhci_ring* %1, %struct.xhci_td* %2, i32 %3) #0 {
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.xhci_ring*, align 8
  %7 = alloca %struct.xhci_td*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xhci_segment*, align 8
  %10 = alloca %union.xhci_trb*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store %struct.xhci_ring* %1, %struct.xhci_ring** %6, align 8
  store %struct.xhci_td* %2, %struct.xhci_td** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.xhci_td*, %struct.xhci_td** %7, align 8
  %12 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %11, i32 0, i32 2
  %13 = load %struct.xhci_segment*, %struct.xhci_segment** %12, align 8
  store %struct.xhci_segment* %13, %struct.xhci_segment** %9, align 8
  %14 = load %struct.xhci_td*, %struct.xhci_td** %7, align 8
  %15 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %14, i32 0, i32 1
  %16 = load %union.xhci_trb*, %union.xhci_trb** %15, align 8
  store %union.xhci_trb* %16, %union.xhci_trb** %10, align 8
  br label %17

17:                                               ; preds = %136, %4
  br i1 true, label %18, label %140

18:                                               ; preds = %17
  %19 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %20 = bitcast %union.xhci_trb* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @TRB_TYPE_LINK_LE32(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %18
  %28 = load i32, i32* @TRB_CHAIN, align 4
  %29 = xor i32 %28, -1
  %30 = call i32 @cpu_to_le32(i32 %29)
  %31 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %32 = bitcast %union.xhci_trb* %31 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %30
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %27
  %41 = load i32, i32* @TRB_CYCLE, align 4
  %42 = call i32 @cpu_to_le32(i32 %41)
  %43 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %44 = bitcast %union.xhci_trb* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %48, %42
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %40, %27
  %51 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %52 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %54 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %55 = load %struct.xhci_segment*, %struct.xhci_segment** %9, align 8
  %56 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %57 = call i64 @xhci_trb_virt_to_dma(%struct.xhci_segment* %55, %union.xhci_trb* %56)
  %58 = load %struct.xhci_segment*, %struct.xhci_segment** %9, align 8
  %59 = load %struct.xhci_segment*, %struct.xhci_segment** %9, align 8
  %60 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %53, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), %union.xhci_trb* %54, i64 %57, %struct.xhci_segment* %58, i64 %61)
  br label %128

63:                                               ; preds = %18
  %64 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %65 = bitcast %union.xhci_trb* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 0, i32* %68, align 4
  %69 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %70 = bitcast %union.xhci_trb* %69 to %struct.TYPE_2__*
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 0, i32* %73, align 4
  %74 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %75 = bitcast %union.xhci_trb* %74 to %struct.TYPE_2__*
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 0, i32* %78, align 4
  %79 = load i32, i32* @TRB_CYCLE, align 4
  %80 = call i32 @cpu_to_le32(i32 %79)
  %81 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %82 = bitcast %union.xhci_trb* %81 to %struct.TYPE_2__*
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %80
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %63
  %91 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %92 = load %struct.xhci_td*, %struct.xhci_td** %7, align 8
  %93 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %92, i32 0, i32 1
  %94 = load %union.xhci_trb*, %union.xhci_trb** %93, align 8
  %95 = icmp ne %union.xhci_trb* %91, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %90
  %97 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %98 = load %struct.xhci_td*, %struct.xhci_td** %7, align 8
  %99 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %98, i32 0, i32 0
  %100 = load %union.xhci_trb*, %union.xhci_trb** %99, align 8
  %101 = icmp ne %union.xhci_trb* %97, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %96
  %103 = load i32, i32* @TRB_CYCLE, align 4
  %104 = call i32 @cpu_to_le32(i32 %103)
  %105 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %106 = bitcast %union.xhci_trb* %105 to %struct.TYPE_2__*
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 3
  %110 = load i32, i32* %109, align 4
  %111 = xor i32 %110, %104
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %102, %96, %90, %63
  %113 = load i32, i32* @TRB_TR_NOOP, align 4
  %114 = call i32 @TRB_TYPE(i32 %113)
  %115 = call i32 @cpu_to_le32(i32 %114)
  %116 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %117 = bitcast %union.xhci_trb* %116 to %struct.TYPE_2__*
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 3
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %115
  store i32 %122, i32* %120, align 4
  %123 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %124 = load %struct.xhci_segment*, %struct.xhci_segment** %9, align 8
  %125 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %126 = call i64 @xhci_trb_virt_to_dma(%struct.xhci_segment* %124, %union.xhci_trb* %125)
  %127 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %123, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %126)
  br label %128

128:                                              ; preds = %112, %50
  %129 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %130 = load %struct.xhci_td*, %struct.xhci_td** %7, align 8
  %131 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %130, i32 0, i32 0
  %132 = load %union.xhci_trb*, %union.xhci_trb** %131, align 8
  %133 = icmp eq %union.xhci_trb* %129, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %140

135:                                              ; preds = %128
  br label %136

136:                                              ; preds = %135
  %137 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %138 = load %struct.xhci_ring*, %struct.xhci_ring** %6, align 8
  %139 = call i32 @next_trb(%struct.xhci_hcd* %137, %struct.xhci_ring* %138, %struct.xhci_segment** %9, %union.xhci_trb** %10)
  br label %17

140:                                              ; preds = %134, %17
  ret void
}

declare dso_local i64 @TRB_TYPE_LINK_LE32(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, ...) #1

declare dso_local i64 @xhci_trb_virt_to_dma(%struct.xhci_segment*, %union.xhci_trb*) #1

declare dso_local i32 @TRB_TYPE(i32) #1

declare dso_local i32 @next_trb(%struct.xhci_hcd*, %struct.xhci_ring*, %struct.xhci_segment**, %union.xhci_trb**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
