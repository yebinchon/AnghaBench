; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_finish_td.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_finish_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, %struct.xhci_virt_device** }
%struct.xhci_virt_device = type { i32 }
%struct.xhci_td = type { i64, i32, i32, %struct.urb* }
%struct.urb = type { i64, i64, i32, i32, %struct.urb_priv* }
%struct.urb_priv = type { i64, i64 }
%union.xhci_trb = type { i32 }
%struct.xhci_transfer_event = type { i32, i32, i32 }
%struct.xhci_virt_ep = type { i32, %union.xhci_trb*, %struct.xhci_td* }
%struct.xhci_ring = type { i64, i32 }
%struct.xhci_ep_ctx = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@COMP_STOP_INVAL = common dso_local global i64 0, align 8
@COMP_STOP = common dso_local global i64 0, align 8
@COMP_STALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"URB transfer length is wrong, xHC issue? req. len = %u, act. len = %u\0A\00", align 1
@URB_SHORT_NOT_OK = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@PIPE_ISOCHRONOUS = common dso_local global i64 0, align 8
@XHCI_AMD_PLL_FIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_td*, %union.xhci_trb*, %struct.xhci_transfer_event*, %struct.xhci_virt_ep*, i32*, i32)* @finish_td to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finish_td(%struct.xhci_hcd* %0, %struct.xhci_td* %1, %union.xhci_trb* %2, %struct.xhci_transfer_event* %3, %struct.xhci_virt_ep* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xhci_hcd*, align 8
  %10 = alloca %struct.xhci_td*, align 8
  %11 = alloca %union.xhci_trb*, align 8
  %12 = alloca %struct.xhci_transfer_event*, align 8
  %13 = alloca %struct.xhci_virt_ep*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.xhci_virt_device*, align 8
  %17 = alloca %struct.xhci_ring*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.urb*, align 8
  %21 = alloca %struct.xhci_ep_ctx*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.urb_priv*, align 8
  %24 = alloca i64, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %9, align 8
  store %struct.xhci_td* %1, %struct.xhci_td** %10, align 8
  store %union.xhci_trb* %2, %union.xhci_trb** %11, align 8
  store %struct.xhci_transfer_event* %3, %struct.xhci_transfer_event** %12, align 8
  store %struct.xhci_virt_ep* %4, %struct.xhci_virt_ep** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.urb* null, %struct.urb** %20, align 8
  store i32 0, i32* %22, align 4
  %25 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %12, align 8
  %26 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  %29 = call i32 @TRB_TO_SLOT_ID(i32 %28)
  store i32 %29, i32* %18, align 4
  %30 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %31 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %30, i32 0, i32 1
  %32 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %31, align 8
  %33 = load i32, i32* %18, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %32, i64 %34
  %36 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %35, align 8
  store %struct.xhci_virt_device* %36, %struct.xhci_virt_device** %16, align 8
  %37 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %12, align 8
  %38 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le32_to_cpu(i32 %39)
  %41 = call i32 @TRB_TO_EP_ID(i32 %40)
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %19, align 4
  %43 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %13, align 8
  %44 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %12, align 8
  %45 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le64_to_cpu(i32 %46)
  %48 = call %struct.xhci_ring* @xhci_dma_to_transfer_ring(%struct.xhci_virt_ep* %43, i32 %47)
  store %struct.xhci_ring* %48, %struct.xhci_ring** %17, align 8
  %49 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %50 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %16, align 8
  %51 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %19, align 4
  %54 = call %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %49, i32 %52, i32 %53)
  store %struct.xhci_ep_ctx* %54, %struct.xhci_ep_ctx** %21, align 8
  %55 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %12, align 8
  %56 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le32_to_cpu(i32 %57)
  %59 = call i64 @GET_COMP_CODE(i32 %58)
  store i64 %59, i64* %24, align 8
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %7
  br label %129

63:                                               ; preds = %7
  %64 = load i64, i64* %24, align 8
  %65 = load i64, i64* @COMP_STOP_INVAL, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %24, align 8
  %69 = load i64, i64* @COMP_STOP, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67, %63
  %72 = load %struct.xhci_td*, %struct.xhci_td** %10, align 8
  %73 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %13, align 8
  %74 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %73, i32 0, i32 2
  store %struct.xhci_td* %72, %struct.xhci_td** %74, align 8
  %75 = load %union.xhci_trb*, %union.xhci_trb** %11, align 8
  %76 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %13, align 8
  %77 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %76, i32 0, i32 1
  store %union.xhci_trb* %75, %union.xhci_trb** %77, align 8
  store i32 0, i32* %8, align 4
  br label %228

78:                                               ; preds = %67
  %79 = load i64, i64* %24, align 8
  %80 = load i64, i64* @COMP_STALL, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = load %struct.xhci_td*, %struct.xhci_td** %10, align 8
  %84 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %13, align 8
  %85 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %84, i32 0, i32 2
  store %struct.xhci_td* %83, %struct.xhci_td** %85, align 8
  %86 = load %union.xhci_trb*, %union.xhci_trb** %11, align 8
  %87 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %13, align 8
  %88 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %87, i32 0, i32 1
  store %union.xhci_trb* %86, %union.xhci_trb** %88, align 8
  %89 = load %struct.xhci_ring*, %struct.xhci_ring** %17, align 8
  %90 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %13, align 8
  %93 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %128

94:                                               ; preds = %78
  %95 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %96 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %21, align 8
  %97 = load i64, i64* %24, align 8
  %98 = call i64 @xhci_requires_manual_halt_cleanup(%struct.xhci_hcd* %95, %struct.xhci_ep_ctx* %96, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %94
  %101 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %19, align 4
  %104 = load %struct.xhci_ring*, %struct.xhci_ring** %17, align 8
  %105 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.xhci_td*, %struct.xhci_td** %10, align 8
  %108 = load %union.xhci_trb*, %union.xhci_trb** %11, align 8
  %109 = call i32 @xhci_cleanup_halted_endpoint(%struct.xhci_hcd* %101, i32 %102, i32 %103, i32 %106, %struct.xhci_td* %107, %union.xhci_trb* %108)
  br label %127

110:                                              ; preds = %94
  br label %111

111:                                              ; preds = %119, %110
  %112 = load %struct.xhci_ring*, %struct.xhci_ring** %17, align 8
  %113 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.xhci_td*, %struct.xhci_td** %10, align 8
  %116 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %121 = load %struct.xhci_ring*, %struct.xhci_ring** %17, align 8
  %122 = call i32 @inc_deq(%struct.xhci_hcd* %120, %struct.xhci_ring* %121)
  br label %111

123:                                              ; preds = %111
  %124 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %125 = load %struct.xhci_ring*, %struct.xhci_ring** %17, align 8
  %126 = call i32 @inc_deq(%struct.xhci_hcd* %124, %struct.xhci_ring* %125)
  br label %127

127:                                              ; preds = %123, %100
  br label %128

128:                                              ; preds = %127, %82
  br label %129

129:                                              ; preds = %128, %62
  %130 = load %struct.xhci_td*, %struct.xhci_td** %10, align 8
  %131 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %130, i32 0, i32 3
  %132 = load %struct.urb*, %struct.urb** %131, align 8
  store %struct.urb* %132, %struct.urb** %20, align 8
  %133 = load %struct.urb*, %struct.urb** %20, align 8
  %134 = getelementptr inbounds %struct.urb, %struct.urb* %133, i32 0, i32 4
  %135 = load %struct.urb_priv*, %struct.urb_priv** %134, align 8
  store %struct.urb_priv* %135, %struct.urb_priv** %23, align 8
  %136 = load %struct.urb*, %struct.urb** %20, align 8
  %137 = getelementptr inbounds %struct.urb, %struct.urb* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.urb*, %struct.urb** %20, align 8
  %140 = getelementptr inbounds %struct.urb, %struct.urb* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp sgt i64 %138, %141
  br i1 %142, label %143, label %169

143:                                              ; preds = %129
  %144 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %145 = load %struct.urb*, %struct.urb** %20, align 8
  %146 = getelementptr inbounds %struct.urb, %struct.urb* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.urb*, %struct.urb** %20, align 8
  %149 = getelementptr inbounds %struct.urb, %struct.urb* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @xhci_warn(%struct.xhci_hcd* %144, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %147, i64 %150)
  %152 = load %struct.urb*, %struct.urb** %20, align 8
  %153 = getelementptr inbounds %struct.urb, %struct.urb* %152, i32 0, i32 0
  store i64 0, i64* %153, align 8
  %154 = load %struct.xhci_td*, %struct.xhci_td** %10, align 8
  %155 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %154, i32 0, i32 3
  %156 = load %struct.urb*, %struct.urb** %155, align 8
  %157 = getelementptr inbounds %struct.urb, %struct.urb* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @URB_SHORT_NOT_OK, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %143
  %163 = load i32, i32* @EREMOTEIO, align 4
  %164 = sub nsw i32 0, %163
  %165 = load i32*, i32** %14, align 8
  store i32 %164, i32* %165, align 4
  br label %168

166:                                              ; preds = %143
  %167 = load i32*, i32** %14, align 8
  store i32 0, i32* %167, align 4
  br label %168

168:                                              ; preds = %166, %162
  br label %169

169:                                              ; preds = %168, %129
  %170 = load %struct.xhci_td*, %struct.xhci_td** %10, align 8
  %171 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %170, i32 0, i32 2
  %172 = call i32 @list_del_init(i32* %171)
  %173 = load %struct.xhci_td*, %struct.xhci_td** %10, align 8
  %174 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %173, i32 0, i32 1
  %175 = call i32 @list_empty(i32* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %169
  %178 = load %struct.xhci_td*, %struct.xhci_td** %10, align 8
  %179 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %178, i32 0, i32 1
  %180 = call i32 @list_del_init(i32* %179)
  br label %181

181:                                              ; preds = %177, %169
  %182 = load %struct.urb_priv*, %struct.urb_priv** %23, align 8
  %183 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %183, align 8
  %186 = load %struct.urb_priv*, %struct.urb_priv** %23, align 8
  %187 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.urb_priv*, %struct.urb_priv** %23, align 8
  %190 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %188, %191
  br i1 %192, label %193, label %225

193:                                              ; preds = %181
  store i32 1, i32* %22, align 4
  %194 = load %struct.urb*, %struct.urb** %20, align 8
  %195 = getelementptr inbounds %struct.urb, %struct.urb* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = call i64 @usb_pipetype(i32 %196)
  %198 = load i64, i64* @PIPE_ISOCHRONOUS, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %224

200:                                              ; preds = %193
  %201 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %202 = call %struct.TYPE_4__* @xhci_to_hcd(%struct.xhci_hcd* %201)
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %205, -1
  store i64 %206, i64* %204, align 8
  %207 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %208 = call %struct.TYPE_4__* @xhci_to_hcd(%struct.xhci_hcd* %207)
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %223

213:                                              ; preds = %200
  %214 = load %struct.xhci_hcd*, %struct.xhci_hcd** %9, align 8
  %215 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @XHCI_AMD_PLL_FIX, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %213
  %221 = call i32 (...) @usb_amd_quirk_pll_enable()
  br label %222

222:                                              ; preds = %220, %213
  br label %223

223:                                              ; preds = %222, %200
  br label %224

224:                                              ; preds = %223, %193
  br label %225

225:                                              ; preds = %224, %181
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %22, align 4
  store i32 %227, i32* %8, align 4
  br label %228

228:                                              ; preds = %226, %71
  %229 = load i32, i32* %8, align 4
  ret i32 %229
}

declare dso_local i32 @TRB_TO_SLOT_ID(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @TRB_TO_EP_ID(i32) #1

declare dso_local %struct.xhci_ring* @xhci_dma_to_transfer_ring(%struct.xhci_virt_ep*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i64 @GET_COMP_CODE(i32) #1

declare dso_local i64 @xhci_requires_manual_halt_cleanup(%struct.xhci_hcd*, %struct.xhci_ep_ctx*, i64) #1

declare dso_local i32 @xhci_cleanup_halted_endpoint(%struct.xhci_hcd*, i32, i32, i32, %struct.xhci_td*, %union.xhci_trb*) #1

declare dso_local i32 @inc_deq(%struct.xhci_hcd*, %struct.xhci_ring*) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, i64, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @usb_pipetype(i32) #1

declare dso_local %struct.TYPE_4__* @xhci_to_hcd(%struct.xhci_hcd*) #1

declare dso_local i32 @usb_amd_quirk_pll_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
