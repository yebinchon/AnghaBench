; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_inc_enq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_inc_enq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_ring = type { i64, i32, %union.xhci_trb*, %struct.TYPE_8__*, i32, i32 }
%union.xhci_trb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { %union.xhci_trb*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }

@TRB_CHAIN = common dso_local global i32 0, align 4
@TYPE_EVENT = common dso_local global i64 0, align 8
@TYPE_ISOC = common dso_local global i64 0, align 8
@XHCI_AMD_0x96_HOST = common dso_local global i32 0, align 4
@TRB_CYCLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_ring*, i32)* @inc_enq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inc_enq(%struct.xhci_hcd* %0, %struct.xhci_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.xhci_trb*, align 8
  %9 = alloca i64, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_ring* %1, %struct.xhci_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %11 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %10, i32 0, i32 2
  %12 = load %union.xhci_trb*, %union.xhci_trb** %11, align 8
  %13 = bitcast %union.xhci_trb* %12 to %struct.TYPE_6__*
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = load i32, i32* @TRB_CHAIN, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %22 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TYPE_EVENT, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %3
  %27 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %28 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %29 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %30 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %29, i32 0, i32 3
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %33 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %32, i32 0, i32 2
  %34 = load %union.xhci_trb*, %union.xhci_trb** %33, align 8
  %35 = call i64 @last_trb(%struct.xhci_hcd* %27, %struct.xhci_ring* %28, %struct.TYPE_8__* %31, %union.xhci_trb* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %26
  %38 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %39 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37, %26, %3
  %43 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %44 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %43, i32 0, i32 2
  %45 = load %union.xhci_trb*, %union.xhci_trb** %44, align 8
  %46 = getelementptr inbounds %union.xhci_trb, %union.xhci_trb* %45, i32 1
  store %union.xhci_trb* %46, %union.xhci_trb** %44, align 8
  store %union.xhci_trb* %46, %union.xhci_trb** %8, align 8
  %47 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %48 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %133, %42
  %52 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %53 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %54 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %55 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %54, i32 0, i32 3
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load %union.xhci_trb*, %union.xhci_trb** %8, align 8
  %58 = call i64 @last_trb(%struct.xhci_hcd* %52, %struct.xhci_ring* %53, %struct.TYPE_8__* %56, %union.xhci_trb* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %151

60:                                               ; preds = %51
  %61 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %62 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TYPE_EVENT, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %133

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  br label %151

73:                                               ; preds = %69, %66
  %74 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %75 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TYPE_ISOC, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %81 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @XHCI_AMD_0x96_HOST, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %79, %73
  %87 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %88 = call i32 @xhci_link_trb_quirk(%struct.xhci_hcd* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %106, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @TRB_CHAIN, align 4
  %92 = xor i32 %91, -1
  %93 = call i32 @cpu_to_le32(i32 %92)
  %94 = load %union.xhci_trb*, %union.xhci_trb** %8, align 8
  %95 = bitcast %union.xhci_trb* %94 to %struct.TYPE_7__*
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %93
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @cpu_to_le32(i32 %99)
  %101 = load %union.xhci_trb*, %union.xhci_trb** %8, align 8
  %102 = bitcast %union.xhci_trb* %101 to %struct.TYPE_7__*
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %100
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %90, %86, %79
  %107 = call i32 (...) @wmb()
  %108 = load i32, i32* @TRB_CYCLE, align 4
  %109 = call i32 @cpu_to_le32(i32 %108)
  %110 = load %union.xhci_trb*, %union.xhci_trb** %8, align 8
  %111 = bitcast %union.xhci_trb* %110 to %struct.TYPE_7__*
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = xor i32 %113, %109
  store i32 %114, i32* %112, align 8
  %115 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %116 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %117 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %118 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %117, i32 0, i32 3
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = load %union.xhci_trb*, %union.xhci_trb** %8, align 8
  %121 = call i64 @last_trb_on_last_seg(%struct.xhci_hcd* %115, %struct.xhci_ring* %116, %struct.TYPE_8__* %119, %union.xhci_trb* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %106
  %124 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %125 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 0, i32 1
  %130 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %131 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %123, %106
  br label %133

133:                                              ; preds = %132, %60
  %134 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %135 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %134, i32 0, i32 3
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %140 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %139, i32 0, i32 3
  store %struct.TYPE_8__* %138, %struct.TYPE_8__** %140, align 8
  %141 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %142 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %141, i32 0, i32 3
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load %union.xhci_trb*, %union.xhci_trb** %144, align 8
  %146 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %147 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %146, i32 0, i32 2
  store %union.xhci_trb* %145, %union.xhci_trb** %147, align 8
  %148 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %149 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %148, i32 0, i32 2
  %150 = load %union.xhci_trb*, %union.xhci_trb** %149, align 8
  store %union.xhci_trb* %150, %union.xhci_trb** %8, align 8
  br label %51

151:                                              ; preds = %72, %51
  %152 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %153 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %152, i32 0, i32 3
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  %156 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %155, i32 0, i32 2
  %157 = load %union.xhci_trb*, %union.xhci_trb** %156, align 8
  %158 = call i64 @xhci_trb_virt_to_dma(%struct.TYPE_8__* %154, %union.xhci_trb* %157)
  store i64 %158, i64* %9, align 8
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @last_trb(%struct.xhci_hcd*, %struct.xhci_ring*, %struct.TYPE_8__*, %union.xhci_trb*) #1

declare dso_local i32 @xhci_link_trb_quirk(%struct.xhci_hcd*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @last_trb_on_last_seg(%struct.xhci_hcd*, %struct.xhci_ring*, %struct.TYPE_8__*, %union.xhci_trb*) #1

declare dso_local i64 @xhci_trb_virt_to_dma(%struct.TYPE_8__*, %union.xhci_trb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
