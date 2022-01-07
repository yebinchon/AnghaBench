; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-q.c_qh_urb_transaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-q.c_qh_urb_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.urb = type { i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { i32 }
%struct.ehci_qtd = type { i32, i32, i32, i8*, %struct.urb*, i32 }

@QTD_STS_ACTIVE = common dso_local global i32 0, align 4
@EHCI_TUNE_CERR = common dso_local global i32 0, align 4
@QTD_TOGGLE = common dso_local global i32 0, align 4
@URB_SHORT_NOT_OK = common dso_local global i32 0, align 4
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@URB_NO_INTERRUPT = common dso_local global i32 0, align 4
@QTD_IOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (%struct.ehci_hcd*, %struct.urb*, %struct.list_head*, i32)* @qh_urb_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @qh_urb_transaction(%struct.ehci_hcd* %0, %struct.urb* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.ehci_hcd*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ehci_qtd*, align 8
  %11 = alloca %struct.ehci_qtd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %6, align 8
  store %struct.urb* %1, %struct.urb** %7, align 8
  store %struct.list_head* %2, %struct.list_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.ehci_qtd* @ehci_qtd_alloc(%struct.ehci_hcd* %19, i32 %20)
  store %struct.ehci_qtd* %21, %struct.ehci_qtd** %10, align 8
  %22 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %23 = icmp ne %struct.ehci_qtd* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store %struct.list_head* null, %struct.list_head** %5, align 8
  br label %318

29:                                               ; preds = %4
  %30 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %31 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %30, i32 0, i32 1
  %32 = load %struct.list_head*, %struct.list_head** %8, align 8
  %33 = call i32 @list_add_tail(i32* %31, %struct.list_head* %32)
  %34 = load %struct.urb*, %struct.urb** %7, align 8
  %35 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %36 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %35, i32 0, i32 4
  store %struct.urb* %34, %struct.urb** %36, align 8
  %37 = load i32, i32* @QTD_STS_ACTIVE, align 4
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* @EHCI_TUNE_CERR, align 4
  %39 = shl i32 %38, 10
  %40 = load i32, i32* %16, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %16, align 4
  %42 = load %struct.urb*, %struct.urb** %7, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %13, align 4
  %45 = load %struct.urb*, %struct.urb** %7, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @usb_pipein(i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load %struct.urb*, %struct.urb** %7, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @usb_pipecontrol(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %98

54:                                               ; preds = %29
  %55 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %56 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %57 = load %struct.urb*, %struct.urb** %7, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %16, align 4
  %61 = or i32 %60, 512
  %62 = call i32 @qtd_fill(%struct.ehci_hcd* %55, %struct.ehci_qtd* %56, i32 %59, i32 4, i32 %61, i32 8)
  %63 = load i32, i32* @QTD_TOGGLE, align 4
  %64 = load i32, i32* %16, align 4
  %65 = xor i32 %64, %63
  store i32 %65, i32* %16, align 4
  %66 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  store %struct.ehci_qtd* %66, %struct.ehci_qtd** %11, align 8
  %67 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call %struct.ehci_qtd* @ehci_qtd_alloc(%struct.ehci_hcd* %67, i32 %68)
  store %struct.ehci_qtd* %69, %struct.ehci_qtd** %10, align 8
  %70 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %71 = icmp ne %struct.ehci_qtd* %70, null
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %54
  br label %313

77:                                               ; preds = %54
  %78 = load %struct.urb*, %struct.urb** %7, align 8
  %79 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %80 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %79, i32 0, i32 4
  store %struct.urb* %78, %struct.urb** %80, align 8
  %81 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %82 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %83 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @QTD_NEXT(%struct.ehci_hcd* %81, i32 %84)
  %86 = load %struct.ehci_qtd*, %struct.ehci_qtd** %11, align 8
  %87 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %89 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %88, i32 0, i32 1
  %90 = load %struct.list_head*, %struct.list_head** %8, align 8
  %91 = call i32 @list_add_tail(i32* %89, %struct.list_head* %90)
  %92 = load i32, i32* %13, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %77
  %95 = load i32, i32* %16, align 4
  %96 = or i32 %95, 256
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %94, %77
  br label %98

98:                                               ; preds = %97, %29
  %99 = load %struct.urb*, %struct.urb** %7, align 8
  %100 = getelementptr inbounds %struct.urb, %struct.urb* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i32, i32* %16, align 4
  %106 = or i32 %105, 256
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %104, %98
  %108 = load %struct.urb*, %struct.urb** %7, align 8
  %109 = getelementptr inbounds %struct.urb, %struct.urb* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.urb*, %struct.urb** %7, align 8
  %112 = getelementptr inbounds %struct.urb, %struct.urb* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %15, align 4
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i32 @usb_maxpacket(i32 %110, i32 %113, i32 %117)
  %119 = call i32 @max_packet(i32 %118)
  store i32 %119, i32* %14, align 4
  br label %120

120:                                              ; preds = %177, %107
  %121 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %122 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @qtd_fill(%struct.ehci_hcd* %121, %struct.ehci_qtd* %122, i32 %123, i32 %124, i32 %125, i32 %126)
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %13, align 4
  %130 = sub nsw i32 %129, %128
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %120
  %137 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %138 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %145 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %136, %120
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %14, align 4
  %150 = sub nsw i32 %149, 1
  %151 = add nsw i32 %148, %150
  %152 = and i32 %147, %151
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %146
  %155 = load i32, i32* @QTD_TOGGLE, align 4
  %156 = load i32, i32* %16, align 4
  %157 = xor i32 %156, %155
  store i32 %157, i32* %16, align 4
  br label %158

158:                                              ; preds = %154, %146
  %159 = load i32, i32* %13, align 4
  %160 = icmp sle i32 %159, 0
  %161 = zext i1 %160 to i32
  %162 = call i64 @likely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %192

165:                                              ; preds = %158
  %166 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  store %struct.ehci_qtd* %166, %struct.ehci_qtd** %11, align 8
  %167 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %168 = load i32, i32* %9, align 4
  %169 = call %struct.ehci_qtd* @ehci_qtd_alloc(%struct.ehci_hcd* %167, i32 %168)
  store %struct.ehci_qtd* %169, %struct.ehci_qtd** %10, align 8
  %170 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %171 = icmp ne %struct.ehci_qtd* %170, null
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = call i64 @unlikely(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %165
  br label %313

177:                                              ; preds = %165
  %178 = load %struct.urb*, %struct.urb** %7, align 8
  %179 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %180 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %179, i32 0, i32 4
  store %struct.urb* %178, %struct.urb** %180, align 8
  %181 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %182 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %183 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i8* @QTD_NEXT(%struct.ehci_hcd* %181, i32 %184)
  %186 = load %struct.ehci_qtd*, %struct.ehci_qtd** %11, align 8
  %187 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %186, i32 0, i32 3
  store i8* %185, i8** %187, align 8
  %188 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %189 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %188, i32 0, i32 1
  %190 = load %struct.list_head*, %struct.list_head** %8, align 8
  %191 = call i32 @list_add_tail(i32* %189, %struct.list_head* %190)
  br label %120

192:                                              ; preds = %164
  %193 = load %struct.urb*, %struct.urb** %7, align 8
  %194 = getelementptr inbounds %struct.urb, %struct.urb* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @URB_SHORT_NOT_OK, align 4
  %197 = and i32 %195, %196
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %205, label %199

199:                                              ; preds = %192
  %200 = load %struct.urb*, %struct.urb** %7, align 8
  %201 = getelementptr inbounds %struct.urb, %struct.urb* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = call i64 @usb_pipecontrol(i32 %202)
  %204 = icmp ne i64 %203, 0
  br label %205

205:                                              ; preds = %199, %192
  %206 = phi i1 [ true, %192 ], [ %204, %199 ]
  %207 = zext i1 %206 to i32
  %208 = call i64 @likely(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %212 = call i32 @EHCI_LIST_END(%struct.ehci_hcd* %211)
  %213 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %214 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %213, i32 0, i32 5
  store i32 %212, i32* %214, align 8
  br label %215

215:                                              ; preds = %210, %205
  %216 = load %struct.urb*, %struct.urb** %7, align 8
  %217 = getelementptr inbounds %struct.urb, %struct.urb* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  %220 = zext i1 %219 to i32
  %221 = call i64 @likely(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %292

223:                                              ; preds = %215
  store i32 0, i32* %18, align 4
  %224 = load %struct.urb*, %struct.urb** %7, align 8
  %225 = getelementptr inbounds %struct.urb, %struct.urb* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = call i64 @usb_pipecontrol(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %223
  store i32 1, i32* %18, align 4
  %230 = load i32, i32* %16, align 4
  %231 = xor i32 %230, 256
  store i32 %231, i32* %16, align 4
  %232 = load i32, i32* @QTD_TOGGLE, align 4
  %233 = load i32, i32* %16, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %16, align 4
  br label %257

235:                                              ; preds = %223
  %236 = load %struct.urb*, %struct.urb** %7, align 8
  %237 = getelementptr inbounds %struct.urb, %struct.urb* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = call i64 @usb_pipebulk(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %256

241:                                              ; preds = %235
  %242 = load %struct.urb*, %struct.urb** %7, align 8
  %243 = getelementptr inbounds %struct.urb, %struct.urb* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @URB_ZERO_PACKET, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %256

248:                                              ; preds = %241
  %249 = load %struct.urb*, %struct.urb** %7, align 8
  %250 = getelementptr inbounds %struct.urb, %struct.urb* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %14, align 4
  %253 = srem i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %248
  store i32 1, i32* %18, align 4
  br label %256

256:                                              ; preds = %255, %248, %241, %235
  br label %257

257:                                              ; preds = %256, %229
  %258 = load i32, i32* %18, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %291

260:                                              ; preds = %257
  %261 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  store %struct.ehci_qtd* %261, %struct.ehci_qtd** %11, align 8
  %262 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %263 = load i32, i32* %9, align 4
  %264 = call %struct.ehci_qtd* @ehci_qtd_alloc(%struct.ehci_hcd* %262, i32 %263)
  store %struct.ehci_qtd* %264, %struct.ehci_qtd** %10, align 8
  %265 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %266 = icmp ne %struct.ehci_qtd* %265, null
  %267 = xor i1 %266, true
  %268 = zext i1 %267 to i32
  %269 = call i64 @unlikely(i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %260
  br label %313

272:                                              ; preds = %260
  %273 = load %struct.urb*, %struct.urb** %7, align 8
  %274 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %275 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %274, i32 0, i32 4
  store %struct.urb* %273, %struct.urb** %275, align 8
  %276 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %277 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %278 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = call i8* @QTD_NEXT(%struct.ehci_hcd* %276, i32 %279)
  %281 = load %struct.ehci_qtd*, %struct.ehci_qtd** %11, align 8
  %282 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %281, i32 0, i32 3
  store i8* %280, i8** %282, align 8
  %283 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %284 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %283, i32 0, i32 1
  %285 = load %struct.list_head*, %struct.list_head** %8, align 8
  %286 = call i32 @list_add_tail(i32* %284, %struct.list_head* %285)
  %287 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %288 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %289 = load i32, i32* %16, align 4
  %290 = call i32 @qtd_fill(%struct.ehci_hcd* %287, %struct.ehci_qtd* %288, i32 0, i32 0, i32 %289, i32 0)
  br label %291

291:                                              ; preds = %272, %257
  br label %292

292:                                              ; preds = %291, %215
  %293 = load %struct.urb*, %struct.urb** %7, align 8
  %294 = getelementptr inbounds %struct.urb, %struct.urb* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @URB_NO_INTERRUPT, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  %299 = xor i1 %298, true
  %300 = zext i1 %299 to i32
  %301 = call i64 @likely(i32 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %311

303:                                              ; preds = %292
  %304 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %305 = load i32, i32* @QTD_IOC, align 4
  %306 = call i32 @cpu_to_hc32(%struct.ehci_hcd* %304, i32 %305)
  %307 = load %struct.ehci_qtd*, %struct.ehci_qtd** %10, align 8
  %308 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = or i32 %309, %306
  store i32 %310, i32* %308, align 8
  br label %311

311:                                              ; preds = %303, %292
  %312 = load %struct.list_head*, %struct.list_head** %8, align 8
  store %struct.list_head* %312, %struct.list_head** %5, align 8
  br label %318

313:                                              ; preds = %271, %176, %76
  %314 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %315 = load %struct.urb*, %struct.urb** %7, align 8
  %316 = load %struct.list_head*, %struct.list_head** %8, align 8
  %317 = call i32 @qtd_list_free(%struct.ehci_hcd* %314, %struct.urb* %315, %struct.list_head* %316)
  store %struct.list_head* null, %struct.list_head** %5, align 8
  br label %318

318:                                              ; preds = %313, %311, %28
  %319 = load %struct.list_head*, %struct.list_head** %5, align 8
  ret %struct.list_head* %319
}

declare dso_local %struct.ehci_qtd* @ehci_qtd_alloc(%struct.ehci_hcd*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @usb_pipein(i32) #1

declare dso_local i64 @usb_pipecontrol(i32) #1

declare dso_local i32 @qtd_fill(%struct.ehci_hcd*, %struct.ehci_qtd*, i32, i32, i32, i32) #1

declare dso_local i8* @QTD_NEXT(%struct.ehci_hcd*, i32) #1

declare dso_local i32 @max_packet(i32) #1

declare dso_local i32 @usb_maxpacket(i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @EHCI_LIST_END(%struct.ehci_hcd*) #1

declare dso_local i64 @usb_pipebulk(i32) #1

declare dso_local i32 @cpu_to_hc32(%struct.ehci_hcd*, i32) #1

declare dso_local i32 @qtd_list_free(%struct.ehci_hcd*, %struct.urb*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
