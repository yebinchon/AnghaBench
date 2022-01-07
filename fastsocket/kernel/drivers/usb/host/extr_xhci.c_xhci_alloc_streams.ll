; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_alloc_streams.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_alloc_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_device = type { i64 }
%struct.usb_host_endpoint = type { i32 }
%struct.xhci_hcd = type { i32, %struct.xhci_virt_device** }
%struct.xhci_virt_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.xhci_command = type { i32 }
%struct.xhci_ep_ctx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Driver wants %u stream IDs (including stream 0).\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Could not allocate xHCI command structure.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"WARN: endpoints can't handle more than one stream.\0A\00", align 1
@EP_GETTING_STREAMS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Need %u stream ctx entries for %u stream IDs.\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Slot %u ep ctx %u now has streams.\0A\00", align 1
@EP_HAS_STREAMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_alloc_streams(%struct.usb_hcd* %0, %struct.usb_device* %1, %struct.usb_host_endpoint** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_hcd*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca %struct.usb_host_endpoint**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.xhci_hcd*, align 8
  %17 = alloca %struct.xhci_virt_device*, align 8
  %18 = alloca %struct.xhci_command*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.xhci_ep_ctx*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %8, align 8
  store %struct.usb_device* %1, %struct.usb_device** %9, align 8
  store %struct.usb_host_endpoint** %2, %struct.usb_host_endpoint*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %22, align 4
  %24 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %10, align 8
  %25 = icmp ne %struct.usb_host_endpoint** %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %352

29:                                               ; preds = %6
  %30 = load i32, i32* %12, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %12, align 4
  %32 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %33 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %32)
  store %struct.xhci_hcd* %33, %struct.xhci_hcd** %16, align 8
  %34 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %34, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd* %37, i32 1, i32 1, i32 %38)
  store %struct.xhci_command* %39, %struct.xhci_command** %18, align 8
  %40 = load %struct.xhci_command*, %struct.xhci_command** %18, align 8
  %41 = icmp ne %struct.xhci_command* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %29
  %43 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %44 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %352

47:                                               ; preds = %29
  %48 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %49 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %48, i32 0, i32 0
  %50 = load i64, i64* %21, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %53 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %54 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @xhci_calculate_streams_and_bitmask(%struct.xhci_hcd* %52, %struct.usb_device* %53, %struct.usb_host_endpoint** %54, i32 %55, i32* %12, i32* %22)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %47
  %60 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %61 = load %struct.xhci_command*, %struct.xhci_command** %18, align 8
  %62 = call i32 @xhci_free_command(%struct.xhci_hcd* %60, %struct.xhci_command* %61)
  %63 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %64 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %63, i32 0, i32 0
  %65 = load i64, i64* %21, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %7, align 4
  br label %352

68:                                               ; preds = %47
  %69 = load i32, i32* %12, align 4
  %70 = icmp ule i32 %69, 1
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %73 = call i32 @xhci_warn(%struct.xhci_hcd* %72, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %75 = load %struct.xhci_command*, %struct.xhci_command** %18, align 8
  %76 = call i32 @xhci_free_command(%struct.xhci_hcd* %74, %struct.xhci_command* %75)
  %77 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %78 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %77, i32 0, i32 0
  %79 = load i64, i64* %21, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %352

83:                                               ; preds = %68
  %84 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %85 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %84, i32 0, i32 1
  %86 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %85, align 8
  %87 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %88 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %86, i64 %89
  %91 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %90, align 8
  store %struct.xhci_virt_device* %91, %struct.xhci_virt_device** %17, align 8
  store i32 0, i32* %14, align 4
  br label %92

92:                                               ; preds = %114, %83
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %92
  %97 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %10, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %97, i64 %99
  %101 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %100, align 8
  %102 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %101, i32 0, i32 0
  %103 = call i32 @xhci_get_endpoint_index(i32* %102)
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* @EP_GETTING_STREAMS, align 4
  %105 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %17, align 8
  %106 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %19, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %104
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %96
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  br label %92

117:                                              ; preds = %92
  %118 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %119 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %118, i32 0, i32 0
  %120 = load i64, i64* %21, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* %119, i64 %120)
  %122 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %123 = call i32 @xhci_calculate_streams_entries(%struct.xhci_hcd* %122, i32* %12, i32* %20)
  %124 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* %12, align 4
  %127 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %124, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %125, i32 %126)
  store i32 0, i32* %14, align 4
  br label %128

128:                                              ; preds = %163, %117
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %132, label %166

132:                                              ; preds = %128
  %133 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %10, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %133, i64 %135
  %137 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %136, align 8
  %138 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %137, i32 0, i32 0
  %139 = call i32 @xhci_get_endpoint_index(i32* %138)
  store i32 %139, i32* %19, align 4
  %140 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %13, align 4
  %144 = call i32* @xhci_alloc_stream_info(%struct.xhci_hcd* %140, i32 %141, i32 %142, i32 %143)
  %145 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %17, align 8
  %146 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %145, i32 0, i32 0
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = load i32, i32* %19, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  store i32* %144, i32** %151, align 8
  %152 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %17, align 8
  %153 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = load i32, i32* %19, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %132
  br label %283

162:                                              ; preds = %132
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %14, align 4
  br label %128

166:                                              ; preds = %128
  store i32 0, i32* %14, align 4
  br label %167

167:                                              ; preds = %205, %166
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %11, align 4
  %170 = icmp ult i32 %168, %169
  br i1 %170, label %171, label %208

171:                                              ; preds = %167
  %172 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %10, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %172, i64 %174
  %176 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %175, align 8
  %177 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %176, i32 0, i32 0
  %178 = call i32 @xhci_get_endpoint_index(i32* %177)
  store i32 %178, i32* %19, align 4
  %179 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %180 = load %struct.xhci_command*, %struct.xhci_command** %18, align 8
  %181 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %19, align 4
  %184 = call %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %179, i32 %182, i32 %183)
  store %struct.xhci_ep_ctx* %184, %struct.xhci_ep_ctx** %23, align 8
  %185 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %186 = load %struct.xhci_command*, %struct.xhci_command** %18, align 8
  %187 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %17, align 8
  %190 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %19, align 4
  %193 = call i32 @xhci_endpoint_copy(%struct.xhci_hcd* %185, i32 %188, i32 %191, i32 %192)
  %194 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %195 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %23, align 8
  %196 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %17, align 8
  %197 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %196, i32 0, i32 0
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = load i32, i32* %19, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 @xhci_setup_streams_ep_input_ctx(%struct.xhci_hcd* %194, %struct.xhci_ep_ctx* %195, i32* %203)
  br label %205

205:                                              ; preds = %171
  %206 = load i32, i32* %14, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %14, align 4
  br label %167

208:                                              ; preds = %167
  %209 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %210 = load %struct.xhci_command*, %struct.xhci_command** %18, align 8
  %211 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %17, align 8
  %214 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %22, align 4
  %217 = load i32, i32* %22, align 4
  %218 = call i32 @xhci_setup_input_ctx_for_config_ep(%struct.xhci_hcd* %209, i32 %212, i32 %215, i32 %216, i32 %217)
  %219 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %220 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %221 = load %struct.xhci_command*, %struct.xhci_command** %18, align 8
  %222 = call i32 @xhci_configure_endpoint(%struct.xhci_hcd* %219, %struct.usb_device* %220, %struct.xhci_command* %221, i32 0, i32 0)
  store i32 %222, i32* %15, align 4
  %223 = load i32, i32* %15, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %208
  br label %283

226:                                              ; preds = %208
  %227 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %228 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %227, i32 0, i32 0
  %229 = load i64, i64* %21, align 8
  %230 = call i32 @spin_lock_irqsave(i32* %228, i64 %229)
  store i32 0, i32* %14, align 4
  br label %231

231:                                              ; preds = %270, %226
  %232 = load i32, i32* %14, align 4
  %233 = load i32, i32* %11, align 4
  %234 = icmp ult i32 %232, %233
  br i1 %234, label %235, label %273

235:                                              ; preds = %231
  %236 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %10, align 8
  %237 = load i32, i32* %14, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %236, i64 %238
  %240 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %239, align 8
  %241 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %240, i32 0, i32 0
  %242 = call i32 @xhci_get_endpoint_index(i32* %241)
  store i32 %242, i32* %19, align 4
  %243 = load i32, i32* @EP_GETTING_STREAMS, align 4
  %244 = xor i32 %243, -1
  %245 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %17, align 8
  %246 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %245, i32 0, i32 0
  %247 = load %struct.TYPE_2__*, %struct.TYPE_2__** %246, align 8
  %248 = load i32, i32* %19, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = and i32 %252, %244
  store i32 %253, i32* %251, align 8
  %254 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %255 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %256 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i32, i32* %19, align 4
  %259 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %254, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %257, i32 %258)
  %260 = load i32, i32* @EP_HAS_STREAMS, align 4
  %261 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %17, align 8
  %262 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %261, i32 0, i32 0
  %263 = load %struct.TYPE_2__*, %struct.TYPE_2__** %262, align 8
  %264 = load i32, i32* %19, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = or i32 %268, %260
  store i32 %269, i32* %267, align 8
  br label %270

270:                                              ; preds = %235
  %271 = load i32, i32* %14, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %14, align 4
  br label %231

273:                                              ; preds = %231
  %274 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %275 = load %struct.xhci_command*, %struct.xhci_command** %18, align 8
  %276 = call i32 @xhci_free_command(%struct.xhci_hcd* %274, %struct.xhci_command* %275)
  %277 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %278 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %277, i32 0, i32 0
  %279 = load i64, i64* %21, align 8
  %280 = call i32 @spin_unlock_irqrestore(i32* %278, i64 %279)
  %281 = load i32, i32* %12, align 4
  %282 = sub i32 %281, 1
  store i32 %282, i32* %7, align 4
  br label %352

283:                                              ; preds = %225, %161
  store i32 0, i32* %14, align 4
  br label %284

284:                                              ; preds = %343, %283
  %285 = load i32, i32* %14, align 4
  %286 = load i32, i32* %11, align 4
  %287 = icmp ult i32 %285, %286
  br i1 %287, label %288, label %346

288:                                              ; preds = %284
  %289 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %10, align 8
  %290 = load i32, i32* %14, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %289, i64 %291
  %293 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %292, align 8
  %294 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %293, i32 0, i32 0
  %295 = call i32 @xhci_get_endpoint_index(i32* %294)
  store i32 %295, i32* %19, align 4
  %296 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %297 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %17, align 8
  %298 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %297, i32 0, i32 0
  %299 = load %struct.TYPE_2__*, %struct.TYPE_2__** %298, align 8
  %300 = load i32, i32* %19, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = call i32 @xhci_free_stream_info(%struct.xhci_hcd* %296, i32* %304)
  %306 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %17, align 8
  %307 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %306, i32 0, i32 0
  %308 = load %struct.TYPE_2__*, %struct.TYPE_2__** %307, align 8
  %309 = load i32, i32* %19, align 4
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 1
  store i32* null, i32** %312, align 8
  %313 = load i32, i32* @EP_GETTING_STREAMS, align 4
  %314 = xor i32 %313, -1
  %315 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %17, align 8
  %316 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %315, i32 0, i32 0
  %317 = load %struct.TYPE_2__*, %struct.TYPE_2__** %316, align 8
  %318 = load i32, i32* %19, align 4
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = and i32 %322, %314
  store i32 %323, i32* %321, align 8
  %324 = load i32, i32* @EP_HAS_STREAMS, align 4
  %325 = xor i32 %324, -1
  %326 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %17, align 8
  %327 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %326, i32 0, i32 0
  %328 = load %struct.TYPE_2__*, %struct.TYPE_2__** %327, align 8
  %329 = load i32, i32* %19, align 4
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = and i32 %333, %325
  store i32 %334, i32* %332, align 8
  %335 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %336 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %17, align 8
  %337 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %10, align 8
  %338 = load i32, i32* %14, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %337, i64 %339
  %341 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %340, align 8
  %342 = call i32 @xhci_endpoint_zero(%struct.xhci_hcd* %335, %struct.xhci_virt_device* %336, %struct.usb_host_endpoint* %341)
  br label %343

343:                                              ; preds = %288
  %344 = load i32, i32* %14, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %14, align 4
  br label %284

346:                                              ; preds = %284
  %347 = load %struct.xhci_hcd*, %struct.xhci_hcd** %16, align 8
  %348 = load %struct.xhci_command*, %struct.xhci_command** %18, align 8
  %349 = call i32 @xhci_free_command(%struct.xhci_hcd* %347, %struct.xhci_command* %348)
  %350 = load i32, i32* @ENOMEM, align 4
  %351 = sub nsw i32 0, %350
  store i32 %351, i32* %7, align 4
  br label %352

352:                                              ; preds = %346, %273, %71, %59, %42, %26
  %353 = load i32, i32* %7, align 4
  ret i32 %353
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, ...) #1

declare dso_local %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xhci_calculate_streams_and_bitmask(%struct.xhci_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32*, i32*) #1

declare dso_local i32 @xhci_free_command(%struct.xhci_hcd*, %struct.xhci_command*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_get_endpoint_index(i32*) #1

declare dso_local i32 @xhci_calculate_streams_entries(%struct.xhci_hcd*, i32*, i32*) #1

declare dso_local i32* @xhci_alloc_stream_info(%struct.xhci_hcd*, i32, i32, i32) #1

declare dso_local %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @xhci_endpoint_copy(%struct.xhci_hcd*, i32, i32, i32) #1

declare dso_local i32 @xhci_setup_streams_ep_input_ctx(%struct.xhci_hcd*, %struct.xhci_ep_ctx*, i32*) #1

declare dso_local i32 @xhci_setup_input_ctx_for_config_ep(%struct.xhci_hcd*, i32, i32, i32, i32) #1

declare dso_local i32 @xhci_configure_endpoint(%struct.xhci_hcd*, %struct.usb_device*, %struct.xhci_command*, i32, i32) #1

declare dso_local i32 @xhci_free_stream_info(%struct.xhci_hcd*, i32*) #1

declare dso_local i32 @xhci_endpoint_zero(%struct.xhci_hcd*, %struct.xhci_virt_device*, %struct.usb_host_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
