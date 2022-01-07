; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_hp8200e_rw_block_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_hp8200e_rw_block_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32, i8* }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@US_IOBUF_SIZE = common dso_local global i32 0, align 4
@USBAT_CMD_WRITE_REGS = common dso_local global i8 0, align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@USBAT_CMD_COND_WRITE_BLOCK = common dso_local global i8 0, align 1
@USBAT_CMD_COND_READ_BLOCK = common dso_local global i8 0, align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@USB_STOR_XFER_SHORT = common dso_local global i32 0, align 4
@USB_STOR_XFER_STALLED = common dso_local global i32 0, align 4
@USBAT_ATA = common dso_local global i32 0, align 4
@USBAT_ATA_STATUS = common dso_local global i32 0, align 4
@USBAT_ATA_ALTSTATUS = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Redoing %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Bummer! %s bulk data 20 times failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Writing\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Reading\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i8, i8*, i8*, i16, i8, i8, i8, i8, i32, i8*, i16, i32, i32)* @usbat_hp8200e_rw_block_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_hp8200e_rw_block_test(%struct.us_data* %0, i8 zeroext %1, i8* %2, i8* %3, i16 zeroext %4, i8 zeroext %5, i8 zeroext %6, i8 zeroext %7, i8 zeroext %8, i32 %9, i8* %10, i16 zeroext %11, i32 %12, i32 %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca %struct.us_data*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i16, align 2
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i16, align 2
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  store %struct.us_data* %0, %struct.us_data** %16, align 8
  store i8 %1, i8* %17, align 1
  store i8* %2, i8** %18, align 8
  store i8* %3, i8** %19, align 8
  store i16 %4, i16* %20, align 2
  store i8 %5, i8* %21, align 1
  store i8 %6, i8* %22, align 1
  store i8 %7, i8* %23, align 1
  store i8 %8, i8* %24, align 1
  store i32 %9, i32* %25, align 4
  store i8* %10, i8** %26, align 8
  store i16 %11, i16* %27, align 2
  store i32 %12, i32* %28, align 4
  store i32 %13, i32* %29, align 4
  %38 = load i32, i32* %25, align 4
  %39 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %14
  %42 = load %struct.us_data*, %struct.us_data** %16, align 8
  %43 = getelementptr inbounds %struct.us_data, %struct.us_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  br label %49

45:                                               ; preds = %14
  %46 = load %struct.us_data*, %struct.us_data** %16, align 8
  %47 = getelementptr inbounds %struct.us_data, %struct.us_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i32 [ %44, %41 ], [ %48, %45 ]
  store i32 %50, i32* %31, align 4
  %51 = load %struct.us_data*, %struct.us_data** %16, align 8
  %52 = getelementptr inbounds %struct.us_data, %struct.us_data* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %32, align 8
  %54 = load %struct.us_data*, %struct.us_data** %16, align 8
  %55 = getelementptr inbounds %struct.us_data, %struct.us_data* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %36, align 8
  %57 = load %struct.us_data*, %struct.us_data** %16, align 8
  %58 = getelementptr inbounds %struct.us_data, %struct.us_data* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %37, align 8
  %60 = load i16, i16* %20, align 2
  %61 = zext i16 %60 to i32
  %62 = load i32, i32* @US_IOBUF_SIZE, align 4
  %63 = sdiv i32 %62, 2
  %64 = icmp sgt i32 %61, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @BUG_ON(i32 %65)
  store i32 0, i32* %33, align 4
  br label %67

67:                                               ; preds = %318, %49
  %68 = load i32, i32* %33, align 4
  %69 = icmp slt i32 %68, 20
  br i1 %69, label %70, label %321

70:                                               ; preds = %67
  %71 = load i32, i32* %33, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %106

73:                                               ; preds = %70
  store i32 16, i32* %35, align 4
  %74 = load i8*, i8** %32, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  store i8 64, i8* %75, align 1
  %76 = load i8, i8* %17, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* @USBAT_CMD_WRITE_REGS, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %77, %79
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %32, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  store i8 %81, i8* %83, align 1
  %84 = load i8*, i8** %32, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  store i8 7, i8* %85, align 1
  %86 = load i8*, i8** %32, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 3
  store i8 23, i8* %87, align 1
  %88 = load i8*, i8** %32, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 4
  store i8 -4, i8* %89, align 1
  %90 = load i8*, i8** %32, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 5
  store i8 -25, i8* %91, align 1
  %92 = load i16, i16* %20, align 2
  %93 = zext i16 %92 to i32
  %94 = mul nsw i32 %93, 2
  %95 = trunc i32 %94 to i16
  %96 = call zeroext i8 @LSB_of(i16 zeroext %95)
  %97 = load i8*, i8** %32, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 6
  store i8 %96, i8* %98, align 1
  %99 = load i16, i16* %20, align 2
  %100 = zext i16 %99 to i32
  %101 = mul nsw i32 %100, 2
  %102 = trunc i32 %101 to i16
  %103 = call zeroext i8 @MSB_of(i16 zeroext %102)
  %104 = load i8*, i8** %32, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 7
  store i8 %103, i8* %105, align 1
  br label %107

106:                                              ; preds = %70
  store i32 8, i32* %35, align 4
  br label %107

107:                                              ; preds = %106, %73
  %108 = load i32, i32* %25, align 4
  %109 = load i32, i32* @DMA_TO_DEVICE, align 4
  %110 = icmp eq i32 %108, %109
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 64, i32 192
  %113 = trunc i32 %112 to i8
  %114 = load i8*, i8** %32, align 8
  %115 = load i32, i32* %35, align 4
  %116 = sub nsw i32 %115, 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  store i8 %113, i8* %118, align 1
  %119 = load i8, i8* %17, align 1
  %120 = zext i8 %119 to i32
  %121 = load i32, i32* %25, align 4
  %122 = load i32, i32* @DMA_TO_DEVICE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %107
  %125 = load i8, i8* @USBAT_CMD_COND_WRITE_BLOCK, align 1
  %126 = zext i8 %125 to i32
  br label %130

127:                                              ; preds = %107
  %128 = load i8, i8* @USBAT_CMD_COND_READ_BLOCK, align 1
  %129 = zext i8 %128 to i32
  br label %130

130:                                              ; preds = %127, %124
  %131 = phi i32 [ %126, %124 ], [ %129, %127 ]
  %132 = or i32 %120, %131
  %133 = trunc i32 %132 to i8
  %134 = load i8*, i8** %32, align 8
  %135 = load i32, i32* %35, align 4
  %136 = sub nsw i32 %135, 7
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  store i8 %133, i8* %138, align 1
  %139 = load i8, i8* %21, align 1
  %140 = load i8*, i8** %32, align 8
  %141 = load i32, i32* %35, align 4
  %142 = sub nsw i32 %141, 6
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %140, i64 %143
  store i8 %139, i8* %144, align 1
  %145 = load i8, i8* %22, align 1
  %146 = load i8*, i8** %32, align 8
  %147 = load i32, i32* %35, align 4
  %148 = sub nsw i32 %147, 5
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  store i8 %145, i8* %150, align 1
  %151 = load i8, i8* %23, align 1
  %152 = load i8*, i8** %32, align 8
  %153 = load i32, i32* %35, align 4
  %154 = sub nsw i32 %153, 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  store i8 %151, i8* %156, align 1
  %157 = load i8, i8* %24, align 1
  %158 = load i8*, i8** %32, align 8
  %159 = load i32, i32* %35, align 4
  %160 = sub nsw i32 %159, 3
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  store i8 %157, i8* %162, align 1
  %163 = load i16, i16* %27, align 2
  %164 = call zeroext i8 @LSB_of(i16 zeroext %163)
  %165 = load i8*, i8** %32, align 8
  %166 = load i32, i32* %35, align 4
  %167 = sub nsw i32 %166, 2
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  store i8 %164, i8* %169, align 1
  %170 = load i16, i16* %27, align 2
  %171 = call zeroext i8 @MSB_of(i16 zeroext %170)
  %172 = load i8*, i8** %32, align 8
  %173 = load i32, i32* %35, align 4
  %174 = sub nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %172, i64 %175
  store i8 %171, i8* %176, align 1
  %177 = load %struct.us_data*, %struct.us_data** %16, align 8
  %178 = load i8*, i8** %32, align 8
  %179 = load i32, i32* %35, align 4
  %180 = call i32 @usbat_execute_command(%struct.us_data* %177, i8* %178, i32 %179)
  store i32 %180, i32* %30, align 4
  %181 = load i32, i32* %30, align 4
  %182 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %130
  %185 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %185, i32* %15, align 4
  br label %329

186:                                              ; preds = %130
  %187 = load i32, i32* %33, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %234

189:                                              ; preds = %186
  store i32 0, i32* %34, align 4
  br label %190

190:                                              ; preds = %217, %189
  %191 = load i32, i32* %34, align 4
  %192 = load i16, i16* %20, align 2
  %193 = zext i16 %192 to i32
  %194 = icmp slt i32 %191, %193
  br i1 %194, label %195, label %220

195:                                              ; preds = %190
  %196 = load i8*, i8** %18, align 8
  %197 = load i32, i32* %34, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = load i8*, i8** %36, align 8
  %202 = load i32, i32* %34, align 4
  %203 = shl i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %201, i64 %204
  store i8 %200, i8* %205, align 1
  %206 = load i8*, i8** %19, align 8
  %207 = load i32, i32* %34, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = load i8*, i8** %36, align 8
  %212 = load i32, i32* %34, align 4
  %213 = shl i32 %212, 1
  %214 = add nsw i32 1, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %211, i64 %215
  store i8 %210, i8* %216, align 1
  br label %217

217:                                              ; preds = %195
  %218 = load i32, i32* %34, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %34, align 4
  br label %190

220:                                              ; preds = %190
  %221 = load %struct.us_data*, %struct.us_data** %16, align 8
  %222 = load i8*, i8** %36, align 8
  %223 = load i16, i16* %20, align 2
  %224 = zext i16 %223 to i32
  %225 = mul nsw i32 %224, 2
  %226 = trunc i32 %225 to i16
  %227 = call i32 @usbat_bulk_write(%struct.us_data* %221, i8* %222, i16 zeroext %226, i32 0)
  store i32 %227, i32* %30, align 4
  %228 = load i32, i32* %30, align 4
  %229 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %220
  %232 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %232, i32* %15, align 4
  br label %329

233:                                              ; preds = %220
  br label %234

234:                                              ; preds = %233, %186
  %235 = load %struct.us_data*, %struct.us_data** %16, align 8
  %236 = load i32, i32* %31, align 4
  %237 = load i8*, i8** %26, align 8
  %238 = load i16, i16* %27, align 2
  %239 = load i32, i32* %28, align 4
  %240 = call i32 @usb_stor_bulk_transfer_sg(%struct.us_data* %235, i32 %236, i8* %237, i16 zeroext %238, i32 %239, i32* null)
  store i32 %240, i32* %30, align 4
  %241 = load i32, i32* %30, align 4
  %242 = load i32, i32* @USB_STOR_XFER_SHORT, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %248, label %244

244:                                              ; preds = %234
  %245 = load i32, i32* %30, align 4
  %246 = load i32, i32* @USB_STOR_XFER_STALLED, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %307

248:                                              ; preds = %244, %234
  %249 = load i32, i32* %25, align 4
  %250 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %265

252:                                              ; preds = %248
  %253 = load i32, i32* %33, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %265

255:                                              ; preds = %252
  %256 = load %struct.us_data*, %struct.us_data** %16, align 8
  %257 = load %struct.us_data*, %struct.us_data** %16, align 8
  %258 = getelementptr inbounds %struct.us_data, %struct.us_data* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = call i64 @usb_stor_clear_halt(%struct.us_data* %256, i32 %259)
  %261 = icmp slt i64 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %255
  %263 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %263, i32* %15, align 4
  br label %329

264:                                              ; preds = %255
  br label %265

265:                                              ; preds = %264, %252, %248
  %266 = load %struct.us_data*, %struct.us_data** %16, align 8
  %267 = load i32, i32* @USBAT_ATA, align 4
  %268 = load i32, i32* %25, align 4
  %269 = load i32, i32* @DMA_TO_DEVICE, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %265
  %272 = load i32, i32* @USBAT_ATA_STATUS, align 4
  br label %275

273:                                              ; preds = %265
  %274 = load i32, i32* @USBAT_ATA_ALTSTATUS, align 4
  br label %275

275:                                              ; preds = %273, %271
  %276 = phi i32 [ %272, %271 ], [ %274, %273 ]
  %277 = load i8*, i8** %37, align 8
  %278 = call i32 @usbat_read(%struct.us_data* %266, i32 %267, i32 %276, i8* %277)
  store i32 %278, i32* %30, align 4
  %279 = load i32, i32* %30, align 4
  %280 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %281 = icmp ne i32 %279, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %275
  %283 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %283, i32* %15, align 4
  br label %329

284:                                              ; preds = %275
  %285 = load i8*, i8** %37, align 8
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = and i32 %287, 1
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %284
  %291 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %291, i32* %15, align 4
  br label %329

292:                                              ; preds = %284
  %293 = load i8*, i8** %37, align 8
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = and i32 %295, 32
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %292
  %299 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %299, i32* %15, align 4
  br label %329

300:                                              ; preds = %292
  %301 = load i32, i32* %25, align 4
  %302 = load i32, i32* @DMA_TO_DEVICE, align 4
  %303 = icmp eq i32 %301, %302
  %304 = zext i1 %303 to i64
  %305 = select i1 %303, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %306 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %305)
  br label %317

307:                                              ; preds = %244
  %308 = load i32, i32* %30, align 4
  %309 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %311, label %313

311:                                              ; preds = %307
  %312 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %312, i32* %15, align 4
  br label %329

313:                                              ; preds = %307
  %314 = load %struct.us_data*, %struct.us_data** %16, align 8
  %315 = load i32, i32* %29, align 4
  %316 = call i32 @usbat_wait_not_busy(%struct.us_data* %314, i32 %315)
  store i32 %316, i32* %15, align 4
  br label %329

317:                                              ; preds = %300
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %33, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %33, align 4
  br label %67

321:                                              ; preds = %67
  %322 = load i32, i32* %25, align 4
  %323 = load i32, i32* @DMA_TO_DEVICE, align 4
  %324 = icmp eq i32 %322, %323
  %325 = zext i1 %324 to i64
  %326 = select i1 %324, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %327 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %326)
  %328 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %328, i32* %15, align 4
  br label %329

329:                                              ; preds = %321, %313, %311, %298, %290, %282, %262, %231, %184
  %330 = load i32, i32* %15, align 4
  ret i32 %330
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local zeroext i8 @LSB_of(i16 zeroext) #1

declare dso_local zeroext i8 @MSB_of(i16 zeroext) #1

declare dso_local i32 @usbat_execute_command(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @usbat_bulk_write(%struct.us_data*, i8*, i16 zeroext, i32) #1

declare dso_local i32 @usb_stor_bulk_transfer_sg(%struct.us_data*, i32, i8*, i16 zeroext, i32, i32*) #1

declare dso_local i64 @usb_stor_clear_halt(%struct.us_data*, i32) #1

declare dso_local i32 @usbat_read(%struct.us_data*, i32, i32, i8*) #1

declare dso_local i32 @US_DEBUGP(i8*, i8*) #1

declare dso_local i32 @usbat_wait_not_busy(%struct.us_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
