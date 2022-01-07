; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_alauda_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_alauda_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.us_data = type { i8*, i64 }
%struct.alauda_info = type { i8, i8, i8 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@alauda_transport.inquiry_response = internal global <{ i8, i8, i8, i8, i8, [31 x i8] }> <{ i8 0, i8 -128, i8 0, i8 1, i8 31, [31 x i8] zeroinitializer }>, align 16
@INQUIRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"alauda_transport: INQUIRY. Returning bogus response.\0A\00", align 1
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@TEST_UNIT_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"alauda_transport: TEST_UNIT_READY.\0A\00", align 1
@READ_CAPACITY = common dso_local global i32 0, align 4
@READ_10 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"alauda_transport: READ_10: page %d pagect %d\0A\00", align 1
@WRITE_10 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"alauda_transport: WRITE_10: page %d pagect %d\0A\00", align 1
@REQUEST_SENSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"alauda_transport: REQUEST_SENSE.\0A\00", align 1
@ALLOW_MEDIUM_REMOVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"alauda_transport: Gah! Unknown command: %d (0x%x)\0A\00", align 1
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.us_data*)* @alauda_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_transport(%struct.scsi_cmnd* %0, %struct.us_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.alauda_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_2__, align 4
  %12 = alloca %struct.TYPE_2__, align 4
  %13 = alloca %struct.TYPE_2__, align 4
  %14 = alloca %struct.TYPE_2__, align 4
  %15 = alloca %struct.TYPE_2__, align 4
  %16 = alloca %struct.TYPE_2__, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.us_data* %1, %struct.us_data** %5, align 8
  %21 = load %struct.us_data*, %struct.us_data** %5, align 8
  %22 = getelementptr inbounds %struct.us_data, %struct.us_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.alauda_info*
  store %struct.alauda_info* %24, %struct.alauda_info** %7, align 8
  %25 = load %struct.us_data*, %struct.us_data** %5, align 8
  %26 = getelementptr inbounds %struct.us_data, %struct.us_data* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @INQUIRY, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %2
  %36 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @memcpy(i8* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* bitcast (<{ i8, i8, i8, i8, i8, [31 x i8] }>* @alauda_transport.inquiry_response to [36 x i8]*), i64 0, i64 0), i32 36)
  %39 = load %struct.us_data*, %struct.us_data** %5, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @fill_inquiry_response(%struct.us_data* %39, i8* %40, i32 36)
  %42 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %42, i32* %3, align 4
  br label %298

43:                                               ; preds = %2
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @TEST_UNIT_READY, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.us_data*, %struct.us_data** %5, align 8
  %54 = call i32 @alauda_check_media(%struct.us_data* %53)
  store i32 %54, i32* %3, align 4
  br label %298

55:                                               ; preds = %43
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @READ_CAPACITY, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %112

63:                                               ; preds = %55
  %64 = load %struct.us_data*, %struct.us_data** %5, align 8
  %65 = call i32 @alauda_check_media(%struct.us_data* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %298

71:                                               ; preds = %63
  %72 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %11, %struct.us_data* %72)
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %12, %struct.us_data* %75)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %13, %struct.us_data* %78)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %77, %80
  %82 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %14, %struct.us_data* %82)
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = add i32 %81, %84
  %86 = lshr i32 %74, %85
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %15, %struct.us_data* %88)
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = mul i32 %87, %90
  %92 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %16, %struct.us_data* %92)
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = mul i32 %91, %94
  %96 = zext i32 %95 to i64
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %10, align 8
  %98 = sub i64 %97, 1
  %99 = trunc i64 %98 to i32
  %100 = call i32 @cpu_to_be32(i32 %99)
  %101 = load i8*, i8** %8, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %100, i32* %103, align 4
  %104 = call i32 @cpu_to_be32(i32 512)
  %105 = load i8*, i8** %8, align 8
  %106 = bitcast i8* %105 to i32*
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 %104, i32* %107, align 4
  %108 = load i8*, i8** %8, align 8
  %109 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %110 = call i32 @usb_stor_set_xfer_buf(i8* %108, i32 8, %struct.scsi_cmnd* %109)
  %111 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %111, i32* %3, align 4
  br label %298

112:                                              ; preds = %55
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %114 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @READ_10, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %173

120:                                              ; preds = %112
  %121 = load %struct.us_data*, %struct.us_data** %5, align 8
  %122 = call i32 @alauda_check_media(%struct.us_data* %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %298

128:                                              ; preds = %120
  %129 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %130 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %135 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @short_pack(i32 %133, i32 %138)
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %17, align 4
  %141 = shl i32 %140, 16
  store i32 %141, i32* %17, align 4
  %142 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %143 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 5
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %148 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 4
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @short_pack(i32 %146, i32 %151)
  %153 = load i32, i32* %17, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %17, align 4
  %155 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %156 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 8
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %161 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 7
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @short_pack(i32 %159, i32 %164)
  store i32 %165, i32* %18, align 4
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* %18, align 4
  %168 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %166, i32 %167)
  %169 = load %struct.us_data*, %struct.us_data** %5, align 8
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %18, align 4
  %172 = call i32 @alauda_read_data(%struct.us_data* %169, i32 %170, i32 %171)
  store i32 %172, i32* %3, align 4
  br label %298

173:                                              ; preds = %112
  %174 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %175 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @WRITE_10, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %234

181:                                              ; preds = %173
  %182 = load %struct.us_data*, %struct.us_data** %5, align 8
  %183 = call i32 @alauda_check_media(%struct.us_data* %182)
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = load i32, i32* %6, align 4
  store i32 %188, i32* %3, align 4
  br label %298

189:                                              ; preds = %181
  %190 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %191 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 3
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %196 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 2
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @short_pack(i32 %194, i32 %199)
  store i32 %200, i32* %19, align 4
  %201 = load i32, i32* %19, align 4
  %202 = shl i32 %201, 16
  store i32 %202, i32* %19, align 4
  %203 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %204 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 5
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %209 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 4
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @short_pack(i32 %207, i32 %212)
  %214 = load i32, i32* %19, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %19, align 4
  %216 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %217 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 8
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %222 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 7
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @short_pack(i32 %220, i32 %225)
  store i32 %226, i32* %20, align 4
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* %20, align 4
  %229 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %227, i32 %228)
  %230 = load %struct.us_data*, %struct.us_data** %5, align 8
  %231 = load i32, i32* %19, align 4
  %232 = load i32, i32* %20, align 4
  %233 = call i32 @alauda_write_data(%struct.us_data* %230, i32 %231, i32 %232)
  store i32 %233, i32* %3, align 4
  br label %298

234:                                              ; preds = %173
  %235 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %236 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @REQUEST_SENSE, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %269

242:                                              ; preds = %234
  %243 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %244 = load i8*, i8** %8, align 8
  %245 = call i32 @memset(i8* %244, i32 0, i32 18)
  %246 = load i8*, i8** %8, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 0
  store i8 -16, i8* %247, align 1
  %248 = load %struct.alauda_info*, %struct.alauda_info** %7, align 8
  %249 = getelementptr inbounds %struct.alauda_info, %struct.alauda_info* %248, i32 0, i32 0
  %250 = load i8, i8* %249, align 1
  %251 = load i8*, i8** %8, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 2
  store i8 %250, i8* %252, align 1
  %253 = load i8*, i8** %8, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 7
  store i8 11, i8* %254, align 1
  %255 = load %struct.alauda_info*, %struct.alauda_info** %7, align 8
  %256 = getelementptr inbounds %struct.alauda_info, %struct.alauda_info* %255, i32 0, i32 1
  %257 = load i8, i8* %256, align 1
  %258 = load i8*, i8** %8, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 12
  store i8 %257, i8* %259, align 1
  %260 = load %struct.alauda_info*, %struct.alauda_info** %7, align 8
  %261 = getelementptr inbounds %struct.alauda_info, %struct.alauda_info* %260, i32 0, i32 2
  %262 = load i8, i8* %261, align 1
  %263 = load i8*, i8** %8, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 13
  store i8 %262, i8* %264, align 1
  %265 = load i8*, i8** %8, align 8
  %266 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %267 = call i32 @usb_stor_set_xfer_buf(i8* %265, i32 18, %struct.scsi_cmnd* %266)
  %268 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %268, i32* %3, align 4
  br label %298

269:                                              ; preds = %234
  %270 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %271 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @ALLOW_MEDIUM_REMOVAL, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %269
  %278 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %278, i32* %3, align 4
  br label %298

279:                                              ; preds = %269
  %280 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %281 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 0
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %286 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 0
  %289 = load i32, i32* %288, align 4
  %290 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %284, i32 %289)
  %291 = load %struct.alauda_info*, %struct.alauda_info** %7, align 8
  %292 = getelementptr inbounds %struct.alauda_info, %struct.alauda_info* %291, i32 0, i32 0
  store i8 5, i8* %292, align 1
  %293 = load %struct.alauda_info*, %struct.alauda_info** %7, align 8
  %294 = getelementptr inbounds %struct.alauda_info, %struct.alauda_info* %293, i32 0, i32 1
  store i8 32, i8* %294, align 1
  %295 = load %struct.alauda_info*, %struct.alauda_info** %7, align 8
  %296 = getelementptr inbounds %struct.alauda_info, %struct.alauda_info* %295, i32 0, i32 2
  store i8 0, i8* %296, align 1
  %297 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %297, i32* %3, align 4
  br label %298

298:                                              ; preds = %279, %277, %242, %189, %187, %128, %126, %71, %69, %51, %35
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

declare dso_local i32 @US_DEBUGP(i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fill_inquiry_response(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @alauda_check_media(%struct.us_data*) #1

declare dso_local void @MEDIA_INFO(%struct.TYPE_2__* sret, %struct.us_data*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @usb_stor_set_xfer_buf(i8*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @short_pack(i32, i32) #1

declare dso_local i32 @alauda_read_data(%struct.us_data*, i32, i32) #1

declare dso_local i32 @alauda_write_data(%struct.us_data*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
