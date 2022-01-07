; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_cmd_to_noop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_cmd_to_noop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %union.xhci_trb*, %union.xhci_trb*, i32, i32 }
%union.xhci_trb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64* }
%struct.xhci_cd = type { i64, %union.xhci_trb* }
%struct.xhci_segment = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Command ring mismatch, dequeue = %p %llx (dma)\0A\00", align 1
@COMP_CMD_STOP = common dso_local global i32 0, align 4
@TRB_CYCLE = common dso_local global i32 0, align 4
@TRB_CMD_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_cd*)* @xhci_cmd_to_noop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_cmd_to_noop(%struct.xhci_hcd* %0, %struct.xhci_cd* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %struct.xhci_cd*, align 8
  %5 = alloca %struct.xhci_segment*, align 8
  %6 = alloca %union.xhci_trb*, align 8
  %7 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %struct.xhci_cd* %1, %struct.xhci_cd** %4, align 8
  %8 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %9 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %union.xhci_trb*, %union.xhci_trb** %11, align 8
  %13 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %14 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %union.xhci_trb*, %union.xhci_trb** %16, align 8
  %18 = icmp eq %union.xhci_trb* %12, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %147

20:                                               ; preds = %2
  %21 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %22 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %27 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %union.xhci_trb*, %union.xhci_trb** %29, align 8
  %31 = call %struct.xhci_segment* @find_trb_seg(i32 %25, %union.xhci_trb* %30, i32* %7)
  store %struct.xhci_segment* %31, %struct.xhci_segment** %5, align 8
  %32 = load %struct.xhci_segment*, %struct.xhci_segment** %5, align 8
  %33 = icmp ne %struct.xhci_segment* %32, null
  br i1 %33, label %63, label %34

34:                                               ; preds = %20
  %35 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %36 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %37 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %union.xhci_trb*, %union.xhci_trb** %39, align 8
  %41 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %42 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %47 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %union.xhci_trb*, %union.xhci_trb** %49, align 8
  %51 = call i64 @xhci_trb_virt_to_dma(i32 %45, %union.xhci_trb* %50)
  %52 = call i32 @xhci_warn(%struct.xhci_hcd* %35, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %union.xhci_trb* %40, i64 %51)
  %53 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %54 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %55 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = call i32 @xhci_debug_ring(%struct.xhci_hcd* %53, %struct.TYPE_6__* %56)
  %58 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %59 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %60 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = call i32 @xhci_dbg_ring_ptrs(%struct.xhci_hcd* %58, %struct.TYPE_6__* %61)
  br label %147

63:                                               ; preds = %20
  %64 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %65 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load %union.xhci_trb*, %union.xhci_trb** %67, align 8
  store %union.xhci_trb* %68, %union.xhci_trb** %6, align 8
  br label %69

69:                                               ; preds = %141, %63
  %70 = load %union.xhci_trb*, %union.xhci_trb** %6, align 8
  %71 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %72 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %union.xhci_trb*, %union.xhci_trb** %74, align 8
  %76 = icmp ne %union.xhci_trb* %70, %75
  br i1 %76, label %77, label %147

77:                                               ; preds = %69
  %78 = load %union.xhci_trb*, %union.xhci_trb** %6, align 8
  %79 = bitcast %union.xhci_trb* %78 to %struct.TYPE_5__*
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 3
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @TRB_TYPE_LINK_LE32(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %141

87:                                               ; preds = %77
  %88 = load %struct.xhci_cd*, %struct.xhci_cd** %4, align 8
  %89 = getelementptr inbounds %struct.xhci_cd, %struct.xhci_cd* %88, i32 0, i32 1
  %90 = load %union.xhci_trb*, %union.xhci_trb** %89, align 8
  %91 = load %union.xhci_trb*, %union.xhci_trb** %6, align 8
  %92 = icmp eq %union.xhci_trb* %90, %91
  br i1 %92, label %93, label %140

93:                                               ; preds = %87
  %94 = load %struct.xhci_cd*, %struct.xhci_cd** %4, align 8
  %95 = getelementptr inbounds %struct.xhci_cd, %struct.xhci_cd* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %100 = load %struct.xhci_cd*, %struct.xhci_cd** %4, align 8
  %101 = getelementptr inbounds %struct.xhci_cd, %struct.xhci_cd* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @COMP_CMD_STOP, align 4
  %104 = call i32 @xhci_complete_cmd_in_cmd_wait_list(%struct.xhci_hcd* %99, i64 %102, i32 %103)
  br label %105

105:                                              ; preds = %98, %93
  %106 = load %union.xhci_trb*, %union.xhci_trb** %6, align 8
  %107 = bitcast %union.xhci_trb* %106 to %struct.TYPE_5__*
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 3
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @le32_to_cpu(i64 %111)
  %113 = load i32, i32* @TRB_CYCLE, align 4
  %114 = and i32 %112, %113
  store i32 %114, i32* %7, align 4
  %115 = load %union.xhci_trb*, %union.xhci_trb** %6, align 8
  %116 = bitcast %union.xhci_trb* %115 to %struct.TYPE_5__*
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  store i64 0, i64* %119, align 8
  %120 = load %union.xhci_trb*, %union.xhci_trb** %6, align 8
  %121 = bitcast %union.xhci_trb* %120 to %struct.TYPE_5__*
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 1
  store i64 0, i64* %124, align 8
  %125 = load %union.xhci_trb*, %union.xhci_trb** %6, align 8
  %126 = bitcast %union.xhci_trb* %125 to %struct.TYPE_5__*
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 2
  store i64 0, i64* %129, align 8
  %130 = load i32, i32* @TRB_CMD_NOOP, align 4
  %131 = call i32 @TRB_TYPE(i32 %130)
  %132 = load i32, i32* %7, align 4
  %133 = or i32 %131, %132
  %134 = call i64 @cpu_to_le32(i32 %133)
  %135 = load %union.xhci_trb*, %union.xhci_trb** %6, align 8
  %136 = bitcast %union.xhci_trb* %135 to %struct.TYPE_5__*
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 3
  store i64 %134, i64* %139, align 8
  br label %147

140:                                              ; preds = %87
  br label %141

141:                                              ; preds = %140, %86
  %142 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %143 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %144 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %143, i32 0, i32 0
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = call i32 @next_trb(%struct.xhci_hcd* %142, %struct.TYPE_6__* %145, %struct.xhci_segment** %5, %union.xhci_trb** %6)
  br label %69

147:                                              ; preds = %19, %34, %105, %69
  ret void
}

declare dso_local %struct.xhci_segment* @find_trb_seg(i32, %union.xhci_trb*, i32*) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, %union.xhci_trb*, i64) #1

declare dso_local i64 @xhci_trb_virt_to_dma(i32, %union.xhci_trb*) #1

declare dso_local i32 @xhci_debug_ring(%struct.xhci_hcd*, %struct.TYPE_6__*) #1

declare dso_local i32 @xhci_dbg_ring_ptrs(%struct.xhci_hcd*, %struct.TYPE_6__*) #1

declare dso_local i64 @TRB_TYPE_LINK_LE32(i64) #1

declare dso_local i32 @xhci_complete_cmd_in_cmd_wait_list(%struct.xhci_hcd*, i64, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @TRB_TYPE(i32) #1

declare dso_local i32 @next_trb(%struct.xhci_hcd*, %struct.TYPE_6__*, %struct.xhci_segment**, %union.xhci_trb**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
