; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_ci13xxx_udc.c__hardware_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_ci13xxx_udc.c__hardware_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci13xxx_ep = type { i32, i64, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ci13xxx_req = type { i32, %struct.TYPE_7__, i32, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%p, %p\00", align 1
@EALREADY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TD_TERMINATE = common dso_local global i32 0, align 4
@TD_TOTAL_BYTES = common dso_local global i32 0, align 4
@TD_IOC = common dso_local global i32 0, align 4
@TD_STATUS_ACTIVE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@TD_RESERVED_MASK = common dso_local global i32 0, align 4
@TD_STATUS = common dso_local global i32 0, align 4
@QH_ZLT = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci13xxx_ep*, %struct.ci13xxx_req*)* @_hardware_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_hardware_enqueue(%struct.ci13xxx_ep* %0, %struct.ci13xxx_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ci13xxx_ep*, align 8
  %5 = alloca %struct.ci13xxx_req*, align 8
  %6 = alloca i32, align 4
  store %struct.ci13xxx_ep* %0, %struct.ci13xxx_ep** %4, align 8
  store %struct.ci13xxx_req* %1, %struct.ci13xxx_req** %5, align 8
  %7 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %8 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %9 = call i32 @trace(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.ci13xxx_ep* %7, %struct.ci13xxx_req* %8)
  %10 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %11 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @EALREADY, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EALREADY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %250

20:                                               ; preds = %2
  %21 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %22 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %25 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @hw_ep_is_primed(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %250

32:                                               ; preds = %20
  %33 = load i32, i32* @EALREADY, align 4
  %34 = sub nsw i32 0, %33
  %35 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %36 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %39 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %86

43:                                               ; preds = %32
  %44 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %45 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %86, label %49

49:                                               ; preds = %43
  %50 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %51 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %54 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %58 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %62 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %49
  %66 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %69

67:                                               ; preds = %49
  %68 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = call i32 @dma_map_single(i32 %52, i32 %56, i32 %60, i32 %70)
  %72 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %73 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %76 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %69
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %250

83:                                               ; preds = %69
  %84 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %85 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %43, %32
  %87 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %88 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %87, i32 0, i32 3
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = call i32 @memset(%struct.TYPE_10__* %89, i32 0, i32 24)
  %91 = load i32, i32* @TD_TERMINATE, align 4
  %92 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %93 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %92, i32 0, i32 3
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %91
  store i32 %97, i32* %95, align 8
  %98 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %99 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @TD_TOTAL_BYTES, align 4
  %103 = call i32 @ffs_nr(i32 %102)
  %104 = shl i32 %101, %103
  %105 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %106 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %105, i32 0, i32 3
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  store i32 %104, i32* %108, align 8
  %109 = load i32, i32* @TD_TOTAL_BYTES, align 4
  %110 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %111 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %110, i32 0, i32 3
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, %109
  store i32 %115, i32* %113, align 8
  %116 = load i32, i32* @TD_IOC, align 4
  %117 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %118 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %117, i32 0, i32 3
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %116
  store i32 %122, i32* %120, align 8
  %123 = load i32, i32* @TD_STATUS_ACTIVE, align 4
  %124 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %125 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %124, i32 0, i32 3
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %123
  store i32 %129, i32* %127, align 8
  %130 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %131 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %135 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %134, i32 0, i32 3
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  store i32 %133, i32* %139, align 4
  store i32 1, i32* %6, align 4
  br label %140

140:                                              ; preds = %163, %86
  %141 = load i32, i32* %6, align 4
  %142 = icmp ult i32 %141, 5
  br i1 %142, label %143, label %166

143:                                              ; preds = %140
  %144 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %145 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @PAGE_SIZE, align 4
  %150 = mul i32 %148, %149
  %151 = add i32 %147, %150
  %152 = load i32, i32* @TD_RESERVED_MASK, align 4
  %153 = xor i32 %152, -1
  %154 = and i32 %151, %153
  %155 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %156 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %155, i32 0, i32 3
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 %154, i32* %162, align 4
  br label %163

163:                                              ; preds = %143
  %164 = load i32, i32* %6, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %140

166:                                              ; preds = %140
  %167 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %168 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %171 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %170, i32 0, i32 3
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  %173 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %174 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  store i32 %169, i32* %181, align 4
  %182 = load i32, i32* @TD_STATUS, align 4
  %183 = xor i32 %182, -1
  %184 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %185 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %184, i32 0, i32 3
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %188 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, %183
  store i32 %197, i32* %195, align 4
  %198 = load %struct.ci13xxx_req*, %struct.ci13xxx_req** %5, align 8
  %199 = getelementptr inbounds %struct.ci13xxx_req, %struct.ci13xxx_req* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %218

203:                                              ; preds = %166
  %204 = load i32, i32* @QH_ZLT, align 4
  %205 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %206 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %205, i32 0, i32 3
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %209 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %204
  store i32 %217, i32* %215, align 4
  br label %234

218:                                              ; preds = %166
  %219 = load i32, i32* @QH_ZLT, align 4
  %220 = xor i32 %219, -1
  %221 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %222 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %221, i32 0, i32 3
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %222, align 8
  %224 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %225 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %232, %220
  store i32 %233, i32* %231, align 4
  br label %234

234:                                              ; preds = %218, %203
  %235 = call i32 (...) @wmb()
  %236 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %237 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %240 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %4, align 8
  %244 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @USB_ENDPOINT_XFER_CONTROL, align 8
  %247 = icmp eq i64 %245, %246
  %248 = zext i1 %247 to i32
  %249 = call i32 @hw_ep_prime(i32 %238, i64 %242, i32 %248)
  store i32 %249, i32* %3, align 4
  br label %250

250:                                              ; preds = %234, %80, %29, %17
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

declare dso_local i32 @trace(i8*, %struct.ci13xxx_ep*, %struct.ci13xxx_req*) #1

declare dso_local i64 @hw_ep_is_primed(i32, i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @ffs_nr(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @hw_ep_prime(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
