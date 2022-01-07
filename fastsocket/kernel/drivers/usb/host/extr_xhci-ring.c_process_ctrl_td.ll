; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_process_ctrl_td.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_process_ctrl_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.xhci_virt_device** }
%struct.xhci_virt_device = type { i32 }
%struct.xhci_td = type { %struct.TYPE_2__*, %union.xhci_trb* }
%struct.TYPE_2__ = type { i32, i64, i8* }
%union.xhci_trb = type { i32 }
%struct.xhci_transfer_event = type { i32, i32, i32 }
%struct.xhci_virt_ep = type { i32 }
%struct.xhci_ring = type { %union.xhci_trb* }
%struct.xhci_ep_ctx = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"WARN: Success on ctrl setup TRB without IOC set??\0A\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"WARN: Success on ctrl data TRB without IOC set??\0A\00", align 1
@URB_SHORT_NOT_OK = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"TRB error code %u, halted endpoint index = %u\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Waiting for status stage event\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_td*, %union.xhci_trb*, %struct.xhci_transfer_event*, %struct.xhci_virt_ep*, i32*)* @process_ctrl_td to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ctrl_td(%struct.xhci_hcd* %0, %struct.xhci_td* %1, %union.xhci_trb* %2, %struct.xhci_transfer_event* %3, %struct.xhci_virt_ep* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xhci_hcd*, align 8
  %9 = alloca %struct.xhci_td*, align 8
  %10 = alloca %union.xhci_trb*, align 8
  %11 = alloca %struct.xhci_transfer_event*, align 8
  %12 = alloca %struct.xhci_virt_ep*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.xhci_virt_device*, align 8
  %15 = alloca %struct.xhci_ring*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.xhci_ep_ctx*, align 8
  %19 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %8, align 8
  store %struct.xhci_td* %1, %struct.xhci_td** %9, align 8
  store %union.xhci_trb* %2, %union.xhci_trb** %10, align 8
  store %struct.xhci_transfer_event* %3, %struct.xhci_transfer_event** %11, align 8
  store %struct.xhci_virt_ep* %4, %struct.xhci_virt_ep** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %11, align 8
  %21 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  %24 = call i32 @TRB_TO_SLOT_ID(i32 %23)
  store i32 %24, i32* %16, align 4
  %25 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %26 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %25, i32 0, i32 0
  %27 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %26, align 8
  %28 = load i32, i32* %16, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %27, i64 %29
  %31 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %30, align 8
  store %struct.xhci_virt_device* %31, %struct.xhci_virt_device** %14, align 8
  %32 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %11, align 8
  %33 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = call i32 @TRB_TO_EP_ID(i32 %35)
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %17, align 4
  %38 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %12, align 8
  %39 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %11, align 8
  %40 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le64_to_cpu(i32 %41)
  %43 = call %struct.xhci_ring* @xhci_dma_to_transfer_ring(%struct.xhci_virt_ep* %38, i32 %42)
  store %struct.xhci_ring* %43, %struct.xhci_ring** %15, align 8
  %44 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %45 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %14, align 8
  %46 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %17, align 4
  %49 = call %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %44, i32 %47, i32 %48)
  store %struct.xhci_ep_ctx* %49, %struct.xhci_ep_ctx** %18, align 8
  %50 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %11, align 8
  %51 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = call i32 @GET_COMP_CODE(i32 %53)
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %19, align 4
  switch i32 %55, label %108 [
    i32 128, label %56
    i32 132, label %84
    i32 129, label %100
    i32 130, label %100
    i32 131, label %120
  ]

56:                                               ; preds = %6
  %57 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %58 = load %struct.xhci_ring*, %struct.xhci_ring** %15, align 8
  %59 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %58, i32 0, i32 0
  %60 = load %union.xhci_trb*, %union.xhci_trb** %59, align 8
  %61 = icmp eq %union.xhci_trb* %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %64 = call i32 @xhci_warn(%struct.xhci_hcd* %63, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @ESHUTDOWN, align 4
  %66 = sub nsw i32 0, %65
  %67 = load i32*, i32** %13, align 8
  store i32 %66, i32* %67, align 4
  br label %83

68:                                               ; preds = %56
  %69 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %70 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %71 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %70, i32 0, i32 1
  %72 = load %union.xhci_trb*, %union.xhci_trb** %71, align 8
  %73 = icmp ne %union.xhci_trb* %69, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %76 = call i32 @xhci_warn(%struct.xhci_hcd* %75, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @ESHUTDOWN, align 4
  %78 = sub nsw i32 0, %77
  %79 = load i32*, i32** %13, align 8
  store i32 %78, i32* %79, align 4
  br label %82

80:                                               ; preds = %68
  %81 = load i32*, i32** %13, align 8
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %80, %74
  br label %83

83:                                               ; preds = %82, %62
  br label %169

84:                                               ; preds = %6
  %85 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %86 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @URB_SHORT_NOT_OK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = load i32, i32* @EREMOTEIO, align 4
  %95 = sub nsw i32 0, %94
  %96 = load i32*, i32** %13, align 8
  store i32 %95, i32* %96, align 4
  br label %99

97:                                               ; preds = %84
  %98 = load i32*, i32** %13, align 8
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %97, %93
  br label %169

100:                                              ; preds = %6, %6
  %101 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %102 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %103 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %104 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %11, align 8
  %105 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %12, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = call i32 @finish_td(%struct.xhci_hcd* %101, %struct.xhci_td* %102, %union.xhci_trb* %103, %struct.xhci_transfer_event* %104, %struct.xhci_virt_ep* %105, i32* %106, i32 0)
  store i32 %107, i32* %7, align 4
  br label %253

108:                                              ; preds = %6
  %109 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %110 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %18, align 8
  %111 = load i32, i32* %19, align 4
  %112 = call i32 @xhci_requires_manual_halt_cleanup(%struct.xhci_hcd* %109, %struct.xhci_ep_ctx* %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %108
  br label %169

115:                                              ; preds = %108
  %116 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %17, align 4
  %119 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %116, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %6, %115
  %121 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %122 = load %struct.xhci_ring*, %struct.xhci_ring** %15, align 8
  %123 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %122, i32 0, i32 0
  %124 = load %union.xhci_trb*, %union.xhci_trb** %123, align 8
  %125 = icmp ne %union.xhci_trb* %121, %124
  br i1 %125, label %126, label %150

126:                                              ; preds = %120
  %127 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %128 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %129 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %128, i32 0, i32 1
  %130 = load %union.xhci_trb*, %union.xhci_trb** %129, align 8
  %131 = icmp ne %union.xhci_trb* %127, %130
  br i1 %131, label %132, label %150

132:                                              ; preds = %126
  %133 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %134 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %11, align 8
  %139 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @le32_to_cpu(i32 %140)
  %142 = call i8* @EVENT_TRB_LEN(i32 %141)
  %143 = ptrtoint i8* %137 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %147 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  store i64 %145, i64* %149, align 8
  br label %155

150:                                              ; preds = %126, %120
  %151 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %152 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %151, i32 0, i32 0
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  store i64 0, i64* %154, align 8
  br label %155

155:                                              ; preds = %150, %132
  %156 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %17, align 4
  %159 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %160 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %161 = call i32 @xhci_cleanup_halted_endpoint(%struct.xhci_hcd* %156, i32 %157, i32 %158, i32 0, %struct.xhci_td* %159, %union.xhci_trb* %160)
  %162 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %163 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %164 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %165 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %11, align 8
  %166 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %12, align 8
  %167 = load i32*, i32** %13, align 8
  %168 = call i32 @finish_td(%struct.xhci_hcd* %162, %struct.xhci_td* %163, %union.xhci_trb* %164, %struct.xhci_transfer_event* %165, %struct.xhci_virt_ep* %166, i32* %167, i32 1)
  store i32 %168, i32* %7, align 4
  br label %253

169:                                              ; preds = %114, %99, %83
  %170 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %171 = load %struct.xhci_ring*, %struct.xhci_ring** %15, align 8
  %172 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %171, i32 0, i32 0
  %173 = load %union.xhci_trb*, %union.xhci_trb** %172, align 8
  %174 = icmp ne %union.xhci_trb* %170, %173
  br i1 %174, label %175, label %245

175:                                              ; preds = %169
  %176 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %177 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %178 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %177, i32 0, i32 1
  %179 = load %union.xhci_trb*, %union.xhci_trb** %178, align 8
  %180 = icmp eq %union.xhci_trb* %176, %179
  br i1 %180, label %181, label %224

181:                                              ; preds = %175
  %182 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %183 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %182, i32 0, i32 0
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %212

188:                                              ; preds = %181
  %189 = load i32*, i32** %13, align 8
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @EINPROGRESS, align 4
  %192 = sub nsw i32 0, %191
  %193 = icmp eq i32 %190, %192
  br i1 %193, label %198, label %194

194:                                              ; preds = %188
  %195 = load i32*, i32** %13, align 8
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %194, %188
  %199 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %200 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %199, i32 0, i32 0
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @URB_SHORT_NOT_OK, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %198
  %208 = load i32, i32* @EREMOTEIO, align 4
  %209 = sub nsw i32 0, %208
  %210 = load i32*, i32** %13, align 8
  store i32 %209, i32* %210, align 4
  br label %211

211:                                              ; preds = %207, %198, %194
  br label %223

212:                                              ; preds = %181
  %213 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %214 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %213, i32 0, i32 0
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 2
  %217 = load i8*, i8** %216, align 8
  %218 = ptrtoint i8* %217 to i64
  %219 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %220 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %219, i32 0, i32 0
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 1
  store i64 %218, i64* %222, align 8
  br label %223

223:                                              ; preds = %212, %211
  br label %244

224:                                              ; preds = %175
  %225 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %226 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %225, i32 0, i32 0
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 2
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %11, align 8
  %231 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @le32_to_cpu(i32 %232)
  %234 = call i8* @EVENT_TRB_LEN(i32 %233)
  %235 = ptrtoint i8* %229 to i64
  %236 = ptrtoint i8* %234 to i64
  %237 = sub i64 %235, %236
  %238 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %239 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %238, i32 0, i32 0
  %240 = load %struct.TYPE_2__*, %struct.TYPE_2__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 1
  store i64 %237, i64* %241, align 8
  %242 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %243 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %242, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %253

244:                                              ; preds = %223
  br label %245

245:                                              ; preds = %244, %169
  %246 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %247 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  %248 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %249 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %11, align 8
  %250 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %12, align 8
  %251 = load i32*, i32** %13, align 8
  %252 = call i32 @finish_td(%struct.xhci_hcd* %246, %struct.xhci_td* %247, %union.xhci_trb* %248, %struct.xhci_transfer_event* %249, %struct.xhci_virt_ep* %250, i32* %251, i32 0)
  store i32 %252, i32* %7, align 4
  br label %253

253:                                              ; preds = %245, %224, %155, %100
  %254 = load i32, i32* %7, align 4
  ret i32 %254
}

declare dso_local i32 @TRB_TO_SLOT_ID(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @TRB_TO_EP_ID(i32) #1

declare dso_local %struct.xhci_ring* @xhci_dma_to_transfer_ring(%struct.xhci_virt_ep*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @GET_COMP_CODE(i32) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @finish_td(%struct.xhci_hcd*, %struct.xhci_td*, %union.xhci_trb*, %struct.xhci_transfer_event*, %struct.xhci_virt_ep*, i32*, i32) #1

declare dso_local i32 @xhci_requires_manual_halt_cleanup(%struct.xhci_hcd*, %struct.xhci_ep_ctx*, i32) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, ...) #1

declare dso_local i8* @EVENT_TRB_LEN(i32) #1

declare dso_local i32 @xhci_cleanup_halted_endpoint(%struct.xhci_hcd*, i32, i32, i32, %struct.xhci_td*, %union.xhci_trb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
