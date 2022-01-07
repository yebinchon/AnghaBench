; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_flash_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_flash_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64* }
%struct.us_data = type { i8*, i64 }
%struct.usbat_info = type { i32, i64, i8, i8, i8 }

@usbat_flash_transport.inquiry_response = internal global <{ i8, i8, i8, i8, i8, [31 x i8] }> <{ i8 0, i8 -128, i8 0, i8 1, i8 31, [31 x i8] zeroinitializer }>, align 16
@INQUIRY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"usbat_flash_transport: INQUIRY. Returning bogus response.\0A\00", align 1
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@READ_CAPACITY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [73 x i8] c"usbat_flash_transport: READ_CAPACITY: %ld sectors, %ld bytes per sector\0A\00", align 1
@MODE_SELECT_10 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"usbat_flash_transport:  Gah! MODE_SELECT_10.\0A\00", align 1
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@READ_10 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [64 x i8] c"usbat_flash_transport:  READ_10: read block 0x%04lx  count %ld\0A\00", align 1
@READ_12 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [63 x i8] c"usbat_flash_transport: READ_12: read block 0x%04lx  count %ld\0A\00", align 1
@WRITE_10 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [65 x i8] c"usbat_flash_transport: WRITE_10: write block 0x%04lx  count %ld\0A\00", align 1
@WRITE_12 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [65 x i8] c"usbat_flash_transport: WRITE_12: write block 0x%04lx  count %ld\0A\00", align 1
@TEST_UNIT_READY = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"usbat_flash_transport: TEST_UNIT_READY.\0A\00", align 1
@REQUEST_SENSE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [39 x i8] c"usbat_flash_transport: REQUEST_SENSE.\0A\00", align 1
@ALLOW_MEDIUM_REMOVAL = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [56 x i8] c"usbat_flash_transport: Gah! Unknown command: %d (0x%x)\0A\00", align 1
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.us_data*)* @usbat_flash_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_flash_transport(%struct.scsi_cmnd* %0, %struct.us_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usbat_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.us_data* %1, %struct.us_data** %5, align 8
  %11 = load %struct.us_data*, %struct.us_data** %5, align 8
  %12 = getelementptr inbounds %struct.us_data, %struct.us_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.usbat_info*
  store %struct.usbat_info* %14, %struct.usbat_info** %7, align 8
  %15 = load %struct.us_data*, %struct.us_data** %5, align 8
  %16 = getelementptr inbounds %struct.us_data, %struct.us_data* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INQUIRY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @memcpy(i8* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* bitcast (<{ i8, i8, i8, i8, i8, [31 x i8] }>* @usbat_flash_transport.inquiry_response to [36 x i8]*), i64 0, i64 0), i32 36)
  %29 = load %struct.us_data*, %struct.us_data** %5, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @fill_inquiry_response(%struct.us_data* %29, i8* %30, i32 36)
  %32 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %32, i32* %3, align 4
  br label %469

33:                                               ; preds = %2
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @READ_CAPACITY, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %89

41:                                               ; preds = %33
  %42 = load %struct.us_data*, %struct.us_data** %5, align 8
  %43 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %44 = call i32 @usbat_flash_check_media(%struct.us_data* %42, %struct.usbat_info* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %469

50:                                               ; preds = %41
  %51 = load %struct.us_data*, %struct.us_data** %5, align 8
  %52 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %53 = call i32 @usbat_flash_get_sector_count(%struct.us_data* %51, %struct.usbat_info* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %469

59:                                               ; preds = %50
  %60 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %61 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %60, i32 0, i32 0
  store i32 512, i32* %61, align 8
  %62 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %63 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %66 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i64 %64, i32 %67)
  %69 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %70 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub i64 %71, 1
  %73 = call i32 @cpu_to_be32(i64 %72)
  %74 = load i8*, i8** %10, align 8
  %75 = bitcast i8* %74 to i32*
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %73, i32* %76, align 4
  %77 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %78 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = call i32 @cpu_to_be32(i64 %80)
  %82 = load i8*, i8** %10, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 %81, i32* %84, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %87 = call i32 @usb_stor_set_xfer_buf(i8* %85, i32 8, %struct.scsi_cmnd* %86)
  %88 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %88, i32* %3, align 4
  br label %469

89:                                               ; preds = %33
  %90 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %91 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @MODE_SELECT_10, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %99, i32* %3, align 4
  br label %469

100:                                              ; preds = %89
  %101 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %102 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @READ_10, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %163

108:                                              ; preds = %100
  %109 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %110 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 2
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = shl i32 %114, 24
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %117 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 3
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = shl i32 %121, 16
  %123 = or i32 %115, %122
  %124 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %125 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 4
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = shl i32 %129, 8
  %131 = or i32 %123, %130
  %132 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %133 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 5
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = or i32 %131, %137
  %139 = sext i32 %138 to i64
  store i64 %139, i64* %8, align 8
  %140 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %141 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 7
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i32
  %146 = shl i32 %145, 8
  %147 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %148 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %147, i32 0, i32 0
  %149 = load i64*, i64** %148, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 8
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = or i32 %146, %152
  %154 = sext i32 %153 to i64
  store i64 %154, i64* %9, align 8
  %155 = load i64, i64* %8, align 8
  %156 = load i64, i64* %9, align 8
  %157 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i64 %155, i64 %156)
  %158 = load %struct.us_data*, %struct.us_data** %5, align 8
  %159 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %160 = load i64, i64* %8, align 8
  %161 = load i64, i64* %9, align 8
  %162 = call i32 @usbat_flash_read_data(%struct.us_data* %158, %struct.usbat_info* %159, i64 %160, i64 %161)
  store i32 %162, i32* %3, align 4
  br label %469

163:                                              ; preds = %100
  %164 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %165 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %164, i32 0, i32 0
  %166 = load i64*, i64** %165, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @READ_12, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %242

171:                                              ; preds = %163
  %172 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %173 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %172, i32 0, i32 0
  %174 = load i64*, i64** %173, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 2
  %176 = load i64, i64* %175, align 8
  %177 = trunc i64 %176 to i32
  %178 = shl i32 %177, 24
  %179 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %180 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %179, i32 0, i32 0
  %181 = load i64*, i64** %180, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 3
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = shl i32 %184, 16
  %186 = or i32 %178, %185
  %187 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %188 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %187, i32 0, i32 0
  %189 = load i64*, i64** %188, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 4
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  %193 = shl i32 %192, 8
  %194 = or i32 %186, %193
  %195 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %196 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %195, i32 0, i32 0
  %197 = load i64*, i64** %196, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 5
  %199 = load i64, i64* %198, align 8
  %200 = trunc i64 %199 to i32
  %201 = or i32 %194, %200
  %202 = sext i32 %201 to i64
  store i64 %202, i64* %8, align 8
  %203 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %204 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %203, i32 0, i32 0
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 6
  %207 = load i64, i64* %206, align 8
  %208 = trunc i64 %207 to i32
  %209 = shl i32 %208, 24
  %210 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %211 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %210, i32 0, i32 0
  %212 = load i64*, i64** %211, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 7
  %214 = load i64, i64* %213, align 8
  %215 = trunc i64 %214 to i32
  %216 = shl i32 %215, 16
  %217 = or i32 %209, %216
  %218 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %219 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %218, i32 0, i32 0
  %220 = load i64*, i64** %219, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 8
  %222 = load i64, i64* %221, align 8
  %223 = trunc i64 %222 to i32
  %224 = shl i32 %223, 8
  %225 = or i32 %217, %224
  %226 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %227 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %226, i32 0, i32 0
  %228 = load i64*, i64** %227, align 8
  %229 = getelementptr inbounds i64, i64* %228, i64 9
  %230 = load i64, i64* %229, align 8
  %231 = trunc i64 %230 to i32
  %232 = or i32 %225, %231
  %233 = sext i32 %232 to i64
  store i64 %233, i64* %9, align 8
  %234 = load i64, i64* %8, align 8
  %235 = load i64, i64* %9, align 8
  %236 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i64 %234, i64 %235)
  %237 = load %struct.us_data*, %struct.us_data** %5, align 8
  %238 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %239 = load i64, i64* %8, align 8
  %240 = load i64, i64* %9, align 8
  %241 = call i32 @usbat_flash_read_data(%struct.us_data* %237, %struct.usbat_info* %238, i64 %239, i64 %240)
  store i32 %241, i32* %3, align 4
  br label %469

242:                                              ; preds = %163
  %243 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %244 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %243, i32 0, i32 0
  %245 = load i64*, i64** %244, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @WRITE_10, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %305

250:                                              ; preds = %242
  %251 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %252 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %251, i32 0, i32 0
  %253 = load i64*, i64** %252, align 8
  %254 = getelementptr inbounds i64, i64* %253, i64 2
  %255 = load i64, i64* %254, align 8
  %256 = trunc i64 %255 to i32
  %257 = shl i32 %256, 24
  %258 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %259 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %258, i32 0, i32 0
  %260 = load i64*, i64** %259, align 8
  %261 = getelementptr inbounds i64, i64* %260, i64 3
  %262 = load i64, i64* %261, align 8
  %263 = trunc i64 %262 to i32
  %264 = shl i32 %263, 16
  %265 = or i32 %257, %264
  %266 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %267 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %266, i32 0, i32 0
  %268 = load i64*, i64** %267, align 8
  %269 = getelementptr inbounds i64, i64* %268, i64 4
  %270 = load i64, i64* %269, align 8
  %271 = trunc i64 %270 to i32
  %272 = shl i32 %271, 8
  %273 = or i32 %265, %272
  %274 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %275 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %274, i32 0, i32 0
  %276 = load i64*, i64** %275, align 8
  %277 = getelementptr inbounds i64, i64* %276, i64 5
  %278 = load i64, i64* %277, align 8
  %279 = trunc i64 %278 to i32
  %280 = or i32 %273, %279
  %281 = sext i32 %280 to i64
  store i64 %281, i64* %8, align 8
  %282 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %283 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %282, i32 0, i32 0
  %284 = load i64*, i64** %283, align 8
  %285 = getelementptr inbounds i64, i64* %284, i64 7
  %286 = load i64, i64* %285, align 8
  %287 = trunc i64 %286 to i32
  %288 = shl i32 %287, 8
  %289 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %290 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %289, i32 0, i32 0
  %291 = load i64*, i64** %290, align 8
  %292 = getelementptr inbounds i64, i64* %291, i64 8
  %293 = load i64, i64* %292, align 8
  %294 = trunc i64 %293 to i32
  %295 = or i32 %288, %294
  %296 = sext i32 %295 to i64
  store i64 %296, i64* %9, align 8
  %297 = load i64, i64* %8, align 8
  %298 = load i64, i64* %9, align 8
  %299 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i64 %297, i64 %298)
  %300 = load %struct.us_data*, %struct.us_data** %5, align 8
  %301 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %302 = load i64, i64* %8, align 8
  %303 = load i64, i64* %9, align 8
  %304 = call i32 @usbat_flash_write_data(%struct.us_data* %300, %struct.usbat_info* %301, i64 %302, i64 %303)
  store i32 %304, i32* %3, align 4
  br label %469

305:                                              ; preds = %242
  %306 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %307 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %306, i32 0, i32 0
  %308 = load i64*, i64** %307, align 8
  %309 = getelementptr inbounds i64, i64* %308, i64 0
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @WRITE_12, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %384

313:                                              ; preds = %305
  %314 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %315 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %314, i32 0, i32 0
  %316 = load i64*, i64** %315, align 8
  %317 = getelementptr inbounds i64, i64* %316, i64 2
  %318 = load i64, i64* %317, align 8
  %319 = trunc i64 %318 to i32
  %320 = shl i32 %319, 24
  %321 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %322 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %321, i32 0, i32 0
  %323 = load i64*, i64** %322, align 8
  %324 = getelementptr inbounds i64, i64* %323, i64 3
  %325 = load i64, i64* %324, align 8
  %326 = trunc i64 %325 to i32
  %327 = shl i32 %326, 16
  %328 = or i32 %320, %327
  %329 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %330 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %329, i32 0, i32 0
  %331 = load i64*, i64** %330, align 8
  %332 = getelementptr inbounds i64, i64* %331, i64 4
  %333 = load i64, i64* %332, align 8
  %334 = trunc i64 %333 to i32
  %335 = shl i32 %334, 8
  %336 = or i32 %328, %335
  %337 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %338 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %337, i32 0, i32 0
  %339 = load i64*, i64** %338, align 8
  %340 = getelementptr inbounds i64, i64* %339, i64 5
  %341 = load i64, i64* %340, align 8
  %342 = trunc i64 %341 to i32
  %343 = or i32 %336, %342
  %344 = sext i32 %343 to i64
  store i64 %344, i64* %8, align 8
  %345 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %346 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %345, i32 0, i32 0
  %347 = load i64*, i64** %346, align 8
  %348 = getelementptr inbounds i64, i64* %347, i64 6
  %349 = load i64, i64* %348, align 8
  %350 = trunc i64 %349 to i32
  %351 = shl i32 %350, 24
  %352 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %353 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %352, i32 0, i32 0
  %354 = load i64*, i64** %353, align 8
  %355 = getelementptr inbounds i64, i64* %354, i64 7
  %356 = load i64, i64* %355, align 8
  %357 = trunc i64 %356 to i32
  %358 = shl i32 %357, 16
  %359 = or i32 %351, %358
  %360 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %361 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %360, i32 0, i32 0
  %362 = load i64*, i64** %361, align 8
  %363 = getelementptr inbounds i64, i64* %362, i64 8
  %364 = load i64, i64* %363, align 8
  %365 = trunc i64 %364 to i32
  %366 = shl i32 %365, 8
  %367 = or i32 %359, %366
  %368 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %369 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %368, i32 0, i32 0
  %370 = load i64*, i64** %369, align 8
  %371 = getelementptr inbounds i64, i64* %370, i64 9
  %372 = load i64, i64* %371, align 8
  %373 = trunc i64 %372 to i32
  %374 = or i32 %367, %373
  %375 = sext i32 %374 to i64
  store i64 %375, i64* %9, align 8
  %376 = load i64, i64* %8, align 8
  %377 = load i64, i64* %9, align 8
  %378 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i64 %376, i64 %377)
  %379 = load %struct.us_data*, %struct.us_data** %5, align 8
  %380 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %381 = load i64, i64* %8, align 8
  %382 = load i64, i64* %9, align 8
  %383 = call i32 @usbat_flash_write_data(%struct.us_data* %379, %struct.usbat_info* %380, i64 %381, i64 %382)
  store i32 %383, i32* %3, align 4
  br label %469

384:                                              ; preds = %305
  %385 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %386 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %385, i32 0, i32 0
  %387 = load i64*, i64** %386, align 8
  %388 = getelementptr inbounds i64, i64* %387, i64 0
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* @TEST_UNIT_READY, align 8
  %391 = icmp eq i64 %389, %390
  br i1 %391, label %392, label %405

392:                                              ; preds = %384
  %393 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %394 = load %struct.us_data*, %struct.us_data** %5, align 8
  %395 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %396 = call i32 @usbat_flash_check_media(%struct.us_data* %394, %struct.usbat_info* %395)
  store i32 %396, i32* %6, align 4
  %397 = load i32, i32* %6, align 4
  %398 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %399 = icmp ne i32 %397, %398
  br i1 %399, label %400, label %402

400:                                              ; preds = %392
  %401 = load i32, i32* %6, align 4
  store i32 %401, i32* %3, align 4
  br label %469

402:                                              ; preds = %392
  %403 = load %struct.us_data*, %struct.us_data** %5, align 8
  %404 = call i32 @usbat_check_status(%struct.us_data* %403)
  store i32 %404, i32* %3, align 4
  br label %469

405:                                              ; preds = %384
  %406 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %407 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %406, i32 0, i32 0
  %408 = load i64*, i64** %407, align 8
  %409 = getelementptr inbounds i64, i64* %408, i64 0
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* @REQUEST_SENSE, align 8
  %412 = icmp eq i64 %410, %411
  br i1 %412, label %413, label %440

413:                                              ; preds = %405
  %414 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %415 = load i8*, i8** %10, align 8
  %416 = call i32 @memset(i8* %415, i32 0, i32 18)
  %417 = load i8*, i8** %10, align 8
  %418 = getelementptr inbounds i8, i8* %417, i64 0
  store i8 -16, i8* %418, align 1
  %419 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %420 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %419, i32 0, i32 2
  %421 = load i8, i8* %420, align 8
  %422 = load i8*, i8** %10, align 8
  %423 = getelementptr inbounds i8, i8* %422, i64 2
  store i8 %421, i8* %423, align 1
  %424 = load i8*, i8** %10, align 8
  %425 = getelementptr inbounds i8, i8* %424, i64 7
  store i8 11, i8* %425, align 1
  %426 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %427 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %426, i32 0, i32 3
  %428 = load i8, i8* %427, align 1
  %429 = load i8*, i8** %10, align 8
  %430 = getelementptr inbounds i8, i8* %429, i64 12
  store i8 %428, i8* %430, align 1
  %431 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %432 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %431, i32 0, i32 4
  %433 = load i8, i8* %432, align 2
  %434 = load i8*, i8** %10, align 8
  %435 = getelementptr inbounds i8, i8* %434, i64 13
  store i8 %433, i8* %435, align 1
  %436 = load i8*, i8** %10, align 8
  %437 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %438 = call i32 @usb_stor_set_xfer_buf(i8* %436, i32 18, %struct.scsi_cmnd* %437)
  %439 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %439, i32* %3, align 4
  br label %469

440:                                              ; preds = %405
  %441 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %442 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %441, i32 0, i32 0
  %443 = load i64*, i64** %442, align 8
  %444 = getelementptr inbounds i64, i64* %443, i64 0
  %445 = load i64, i64* %444, align 8
  %446 = load i64, i64* @ALLOW_MEDIUM_REMOVAL, align 8
  %447 = icmp eq i64 %445, %446
  br i1 %447, label %448, label %450

448:                                              ; preds = %440
  %449 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %449, i32* %3, align 4
  br label %469

450:                                              ; preds = %440
  %451 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %452 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %451, i32 0, i32 0
  %453 = load i64*, i64** %452, align 8
  %454 = getelementptr inbounds i64, i64* %453, i64 0
  %455 = load i64, i64* %454, align 8
  %456 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %457 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %456, i32 0, i32 0
  %458 = load i64*, i64** %457, align 8
  %459 = getelementptr inbounds i64, i64* %458, i64 0
  %460 = load i64, i64* %459, align 8
  %461 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i64 %455, i64 %460)
  %462 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %463 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %462, i32 0, i32 2
  store i8 5, i8* %463, align 8
  %464 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %465 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %464, i32 0, i32 3
  store i8 32, i8* %465, align 1
  %466 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %467 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %466, i32 0, i32 4
  store i8 0, i8* %467, align 2
  %468 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %468, i32* %3, align 4
  br label %469

469:                                              ; preds = %450, %448, %413, %402, %400, %313, %250, %171, %108, %97, %59, %57, %48, %25
  %470 = load i32, i32* %3, align 4
  ret i32 %470
}

declare dso_local i32 @US_DEBUGP(i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fill_inquiry_response(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @usbat_flash_check_media(%struct.us_data*, %struct.usbat_info*) #1

declare dso_local i32 @usbat_flash_get_sector_count(%struct.us_data*, %struct.usbat_info*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @usb_stor_set_xfer_buf(i8*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @usbat_flash_read_data(%struct.us_data*, %struct.usbat_info*, i64, i64) #1

declare dso_local i32 @usbat_flash_write_data(%struct.us_data*, %struct.usbat_info*, i64, i64) #1

declare dso_local i32 @usbat_check_status(%struct.us_data*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
