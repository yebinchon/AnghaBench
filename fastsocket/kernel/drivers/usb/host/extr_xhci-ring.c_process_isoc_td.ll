; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_process_isoc_td.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_process_isoc_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_td = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.usb_iso_packet_descriptor*, %struct.urb_priv* }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32 }
%struct.urb_priv = type { i32 }
%union.xhci_trb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.xhci_transfer_event = type { i32, i32 }
%struct.xhci_virt_ep = type { i32 }
%struct.xhci_ring = type { %struct.xhci_segment*, %union.xhci_trb* }
%struct.xhci_segment = type { i32 }

@XHCI_TRUST_TX_LENGTH = common dso_local global i32 0, align 4
@URB_SHORT_NOT_OK = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@ECOMM = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_td*, %union.xhci_trb*, %struct.xhci_transfer_event*, %struct.xhci_virt_ep*, i32*)* @process_isoc_td to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_isoc_td(%struct.xhci_hcd* %0, %struct.xhci_td* %1, %union.xhci_trb* %2, %struct.xhci_transfer_event* %3, %struct.xhci_virt_ep* %4, i32* %5) #0 {
  %7 = alloca %struct.xhci_hcd*, align 8
  %8 = alloca %struct.xhci_td*, align 8
  %9 = alloca %union.xhci_trb*, align 8
  %10 = alloca %struct.xhci_transfer_event*, align 8
  %11 = alloca %struct.xhci_virt_ep*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.xhci_ring*, align 8
  %14 = alloca %struct.urb_priv*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %union.xhci_trb*, align 8
  %18 = alloca %struct.xhci_segment*, align 8
  %19 = alloca %struct.usb_iso_packet_descriptor*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %7, align 8
  store %struct.xhci_td* %1, %struct.xhci_td** %8, align 8
  store %union.xhci_trb* %2, %union.xhci_trb** %9, align 8
  store %struct.xhci_transfer_event* %3, %struct.xhci_transfer_event** %10, align 8
  store %struct.xhci_virt_ep* %4, %struct.xhci_virt_ep** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %21, align 4
  %22 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %11, align 8
  %23 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %10, align 8
  %24 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le64_to_cpu(i32 %25)
  %27 = call %struct.xhci_ring* @xhci_dma_to_transfer_ring(%struct.xhci_virt_ep* %22, i32 %26)
  store %struct.xhci_ring* %27, %struct.xhci_ring** %13, align 8
  %28 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %10, align 8
  %29 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = call i32 @GET_COMP_CODE(i32 %31)
  store i32 %32, i32* %20, align 4
  %33 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %34 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load %struct.urb_priv*, %struct.urb_priv** %36, align 8
  store %struct.urb_priv* %37, %struct.urb_priv** %14, align 8
  %38 = load %struct.urb_priv*, %struct.urb_priv** %14, align 8
  %39 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %15, align 4
  %41 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %42 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %44, align 8
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %45, i64 %47
  store %struct.usb_iso_packet_descriptor* %48, %struct.usb_iso_packet_descriptor** %19, align 8
  %49 = load i32, i32* %20, align 4
  switch i32 %49, label %102 [
    i32 129, label %50
    i32 133, label %69
    i32 135, label %86
    i32 136, label %91
    i32 137, label %91
    i32 134, label %96
    i32 132, label %96
    i32 128, label %96
    i32 131, label %101
    i32 130, label %101
  ]

50:                                               ; preds = %6
  %51 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %10, align 8
  %52 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  %55 = call i64 @EVENT_TRB_LEN(i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %19, align 8
  %59 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  br label %105

60:                                               ; preds = %50
  %61 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %62 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @XHCI_TRUST_TX_LENGTH, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 133, i32* %20, align 4
  br label %68

68:                                               ; preds = %67, %60
  br label %69

69:                                               ; preds = %6, %68
  %70 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %71 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @URB_SHORT_NOT_OK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load i32, i32* @EREMOTEIO, align 4
  %80 = sub nsw i32 0, %79
  br label %82

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81, %78
  %83 = phi i32 [ %80, %78 ], [ 0, %81 ]
  %84 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %19, align 8
  %85 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %105

86:                                               ; preds = %6
  %87 = load i32, i32* @ECOMM, align 4
  %88 = sub nsw i32 0, %87
  %89 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %19, align 8
  %90 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  store i32 1, i32* %21, align 4
  br label %105

91:                                               ; preds = %6, %6
  %92 = load i32, i32* @EOVERFLOW, align 4
  %93 = sub nsw i32 0, %92
  %94 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %19, align 8
  %95 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  store i32 1, i32* %21, align 4
  br label %105

96:                                               ; preds = %6, %6, %6
  %97 = load i32, i32* @EPROTO, align 4
  %98 = sub nsw i32 0, %97
  %99 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %19, align 8
  %100 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  store i32 1, i32* %21, align 4
  br label %105

101:                                              ; preds = %6, %6
  br label %105

102:                                              ; preds = %6
  %103 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %19, align 8
  %104 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %103, i32 0, i32 0
  store i32 -1, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %101, %96, %91, %86, %82, %57
  %106 = load i32, i32* %20, align 4
  %107 = icmp eq i32 %106, 129
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %21, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %108, %105
  %112 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %19, align 8
  %113 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %19, align 8
  %116 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %19, align 8
  %118 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %121 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, %119
  store i32 %125, i32* %123, align 4
  br label %206

126:                                              ; preds = %108
  %127 = load %struct.xhci_ring*, %struct.xhci_ring** %13, align 8
  %128 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %127, i32 0, i32 1
  %129 = load %union.xhci_trb*, %union.xhci_trb** %128, align 8
  store %union.xhci_trb* %129, %union.xhci_trb** %17, align 8
  %130 = load %struct.xhci_ring*, %struct.xhci_ring** %13, align 8
  %131 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %130, i32 0, i32 0
  %132 = load %struct.xhci_segment*, %struct.xhci_segment** %131, align 8
  store %struct.xhci_segment* %132, %struct.xhci_segment** %18, align 8
  br label %133

133:                                              ; preds = %169, %126
  %134 = load %union.xhci_trb*, %union.xhci_trb** %17, align 8
  %135 = load %union.xhci_trb*, %union.xhci_trb** %9, align 8
  %136 = icmp ne %union.xhci_trb* %134, %135
  br i1 %136, label %137, label %173

137:                                              ; preds = %133
  %138 = load %union.xhci_trb*, %union.xhci_trb** %17, align 8
  %139 = bitcast %union.xhci_trb* %138 to %struct.TYPE_3__*
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @TRB_TYPE_NOOP_LE32(i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %168, label %146

146:                                              ; preds = %137
  %147 = load %union.xhci_trb*, %union.xhci_trb** %17, align 8
  %148 = bitcast %union.xhci_trb* %147 to %struct.TYPE_3__*
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 3
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @TRB_TYPE_LINK_LE32(i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %168, label %155

155:                                              ; preds = %146
  %156 = load %union.xhci_trb*, %union.xhci_trb** %17, align 8
  %157 = bitcast %union.xhci_trb* %156 to %struct.TYPE_3__*
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @le32_to_cpu(i32 %161)
  %163 = call i64 @TRB_LEN(i32 %162)
  %164 = load i32, i32* %16, align 4
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %165, %163
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %16, align 4
  br label %168

168:                                              ; preds = %155, %146, %137
  br label %169

169:                                              ; preds = %168
  %170 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %171 = load %struct.xhci_ring*, %struct.xhci_ring** %13, align 8
  %172 = call i32 @next_trb(%struct.xhci_hcd* %170, %struct.xhci_ring* %171, %struct.xhci_segment** %18, %union.xhci_trb** %17)
  br label %133

173:                                              ; preds = %133
  %174 = load %union.xhci_trb*, %union.xhci_trb** %17, align 8
  %175 = bitcast %union.xhci_trb* %174 to %struct.TYPE_3__*
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @le32_to_cpu(i32 %179)
  %181 = call i64 @TRB_LEN(i32 %180)
  %182 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %10, align 8
  %183 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @le32_to_cpu(i32 %184)
  %186 = call i64 @EVENT_TRB_LEN(i32 %185)
  %187 = sub nsw i64 %181, %186
  %188 = load i32, i32* %16, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %187
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %16, align 4
  %192 = load i32, i32* %20, align 4
  %193 = icmp ne i32 %192, 130
  br i1 %193, label %194, label %205

194:                                              ; preds = %173
  %195 = load i32, i32* %16, align 4
  %196 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %19, align 8
  %197 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* %16, align 4
  %199 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %200 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %199, i32 0, i32 0
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, %198
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %194, %173
  br label %206

206:                                              ; preds = %205, %111
  %207 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %208 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %209 = load %union.xhci_trb*, %union.xhci_trb** %9, align 8
  %210 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %10, align 8
  %211 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %11, align 8
  %212 = load i32*, i32** %12, align 8
  %213 = call i32 @finish_td(%struct.xhci_hcd* %207, %struct.xhci_td* %208, %union.xhci_trb* %209, %struct.xhci_transfer_event* %210, %struct.xhci_virt_ep* %211, i32* %212, i32 0)
  ret i32 %213
}

declare dso_local %struct.xhci_ring* @xhci_dma_to_transfer_ring(%struct.xhci_virt_ep*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @GET_COMP_CODE(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @EVENT_TRB_LEN(i32) #1

declare dso_local i32 @TRB_TYPE_NOOP_LE32(i32) #1

declare dso_local i32 @TRB_TYPE_LINK_LE32(i32) #1

declare dso_local i64 @TRB_LEN(i32) #1

declare dso_local i32 @next_trb(%struct.xhci_hcd*, %struct.xhci_ring*, %struct.xhci_segment**, %union.xhci_trb**) #1

declare dso_local i32 @finish_td(%struct.xhci_hcd*, %struct.xhci_td*, %union.xhci_trb*, %struct.xhci_transfer_event*, %struct.xhci_virt_ep*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
