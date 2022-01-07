; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_hp8200e_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_hp8200e_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i8*, i64 }
%struct.us_data = type { i8* }

@USBAT_ATA_FEATURES = common dso_local global i8 0, align 1
@USBAT_ATA_SECCNT = common dso_local global i8 0, align 1
@USBAT_ATA_SECNUM = common dso_local global i8 0, align 1
@USBAT_ATA_LBA_ME = common dso_local global i8 0, align 1
@USBAT_ATA_LBA_HI = common dso_local global i8 0, align 1
@USBAT_ATA_DEVICE = common dso_local global i8 0, align 1
@USBAT_ATA_CMD = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [15 x i8] c"Status = %02X\0A\00", align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@TEST_UNIT_READY = common dso_local global i64 0, align 8
@transferred = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@USBAT_ATA = common dso_local global i32 0, align 4
@USBAT_ATA_DATA = common dso_local global i32 0, align 4
@USBAT_ATA_STATUS = common dso_local global i32 0, align 4
@USBAT_QUAL_FCQ = common dso_local global i32 0, align 4
@USBAT_QUAL_ALQ = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Wrote %08X bytes\0A\00", align 1
@READ_10 = common dso_local global i64 0, align 8
@GPCMD_READ_CD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Error: len = %08X... what do I do now?\0A\00", align 1
@GPCMD_BLANK = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.us_data*)* @usbat_hp8200e_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_hp8200e_transport(%struct.scsi_cmnd* %0, %struct.us_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca [32 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.us_data* %1, %struct.us_data** %5, align 8
  %12 = load %struct.us_data*, %struct.us_data** %5, align 8
  %13 = getelementptr inbounds %struct.us_data, %struct.us_data* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i8, i8* @USBAT_ATA_FEATURES, align 1
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  store i8 %17, i8* %18, align 16
  %19 = load i8, i8* @USBAT_ATA_SECCNT, align 1
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 1
  store i8 %19, i8* %20, align 1
  %21 = load i8, i8* @USBAT_ATA_SECNUM, align 1
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 2
  store i8 %21, i8* %22, align 2
  %23 = load i8, i8* @USBAT_ATA_LBA_ME, align 1
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 3
  store i8 %23, i8* %24, align 1
  %25 = load i8, i8* @USBAT_ATA_LBA_HI, align 1
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 4
  store i8 %25, i8* %26, align 4
  %27 = load i8, i8* @USBAT_ATA_DEVICE, align 1
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 5
  store i8 %27, i8* %28, align 1
  %29 = load i8, i8* @USBAT_ATA_CMD, align 1
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 6
  store i8 %29, i8* %30, align 2
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %31, align 16
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 1
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 2
  store i8 0, i8* %33, align 2
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, 255
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 3
  store i8 %36, i8* %37, align 1
  %38 = load i32, i32* %10, align 4
  %39 = lshr i32 %38, 8
  %40 = and i32 %39, 255
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 4
  store i8 %41, i8* %42, align 4
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 5
  store i8 -80, i8* %43, align 1
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 6
  store i8 -96, i8* %44, align 2
  store i32 7, i32* %11, align 4
  br label %45

45:                                               ; preds = %75, %2
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 19
  br i1 %47, label %48, label %78

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 %50
  store i8 16, i8* %51, align 1
  %52 = load i32, i32* %11, align 4
  %53 = sub nsw i32 %52, 7
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sge i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %69

59:                                               ; preds = %48
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sub nsw i32 %63, 7
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  br label %69

69:                                               ; preds = %59, %58
  %70 = phi i32 [ 0, %58 ], [ %68, %59 ]
  %71 = trunc i32 %70 to i8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 %73
  store i8 %71, i8* %74, align 1
  br label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %45

78:                                               ; preds = %45
  %79 = load %struct.us_data*, %struct.us_data** %5, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @usbat_get_status(%struct.us_data* %79, i8* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %90, i32* %3, align 4
  br label %255

91:                                               ; preds = %78
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %93 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i64
  %98 = load i64, i64* @TEST_UNIT_READY, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  store i32 0, i32* @transferred, align 4
  br label %101

101:                                              ; preds = %100, %91
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %103 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @DMA_TO_DEVICE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %135

107:                                              ; preds = %101
  %108 = load %struct.us_data*, %struct.us_data** %5, align 8
  %109 = load i32, i32* @USBAT_ATA, align 4
  %110 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %111 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %112 = load i32, i32* @USBAT_ATA_DATA, align 4
  %113 = load i32, i32* @USBAT_ATA_STATUS, align 4
  %114 = load i32, i32* @USBAT_QUAL_FCQ, align 4
  %115 = load i32, i32* @USBAT_QUAL_ALQ, align 4
  %116 = or i32 %114, %115
  %117 = load i64, i64* @DMA_TO_DEVICE, align 8
  %118 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %119 = call i32 @scsi_sglist(%struct.scsi_cmnd* %118)
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %122 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %121)
  %123 = call i32 @usbat_hp8200e_rw_block_test(%struct.us_data* %108, i32 %109, i8* %110, i8* %111, i32 19, i32 %112, i32 %113, i32 253, i32 %116, i64 %117, i32 %119, i32 %120, i32 %122, i32 10)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %107
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @transferred, align 4
  %130 = add i32 %129, %128
  store i32 %130, i32* @transferred, align 4
  %131 = load i32, i32* @transferred, align 4
  %132 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %127, %107
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %3, align 4
  br label %255

135:                                              ; preds = %101
  %136 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %137 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i64
  %142 = load i64, i64* @READ_10, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %153, label %144

144:                                              ; preds = %135
  %145 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %146 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i64
  %151 = load i64, i64* @GPCMD_READ_CD, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %144, %135
  %154 = load %struct.us_data*, %struct.us_data** %5, align 8
  %155 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %156 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %157 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %158 = call i32 @usbat_hp8200e_handle_read10(%struct.us_data* %154, i8* %155, i8* %156, %struct.scsi_cmnd* %157)
  store i32 %158, i32* %3, align 4
  br label %255

159:                                              ; preds = %144
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %10, align 4
  %162 = icmp ugt i32 %161, 65535
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %166, i32* %3, align 4
  br label %255

167:                                              ; preds = %160
  %168 = load %struct.us_data*, %struct.us_data** %5, align 8
  %169 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %170 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %171 = call i32 @usbat_multiple_write(%struct.us_data* %168, i8* %169, i8* %170, i32 7)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %167
  %175 = load i32, i32* %6, align 4
  store i32 %175, i32* %3, align 4
  br label %255

176:                                              ; preds = %167
  %177 = load %struct.us_data*, %struct.us_data** %5, align 8
  %178 = load i32, i32* @USBAT_ATA, align 4
  %179 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %180 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = bitcast i8* %181 to i64*
  %183 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %184 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 0
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i64
  %189 = load i64, i64* @GPCMD_BLANK, align 8
  %190 = icmp eq i64 %188, %189
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i32 75, i32 10
  %193 = call i32 @usbat_write_block(%struct.us_data* %177, i32 %178, i64* %182, i32 12, i32 %192, i32 0)
  %194 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %195 = icmp ne i32 %193, %194
  %196 = zext i1 %195 to i32
  store i32 %196, i32* %6, align 4
  br i1 %195, label %197, label %199

197:                                              ; preds = %176
  %198 = load i32, i32* %6, align 4
  store i32 %198, i32* %3, align 4
  br label %255

199:                                              ; preds = %176
  %200 = load i32, i32* %10, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %253

202:                                              ; preds = %199
  %203 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %204 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %253

208:                                              ; preds = %202
  %209 = load %struct.us_data*, %struct.us_data** %5, align 8
  %210 = load i32, i32* @USBAT_ATA, align 4
  %211 = load i8, i8* @USBAT_ATA_LBA_ME, align 1
  %212 = load i8*, i8** %7, align 8
  %213 = call i32 @usbat_read(%struct.us_data* %209, i32 %210, i8 zeroext %211, i8* %212)
  %214 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %208
  %217 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %217, i32* %3, align 4
  br label %255

218:                                              ; preds = %208
  %219 = load i32, i32* %10, align 4
  %220 = icmp ugt i32 %219, 255
  br i1 %220, label %221, label %241

221:                                              ; preds = %218
  %222 = load i8*, i8** %7, align 8
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  store i32 %224, i32* %10, align 4
  %225 = load %struct.us_data*, %struct.us_data** %5, align 8
  %226 = load i32, i32* @USBAT_ATA, align 4
  %227 = load i8, i8* @USBAT_ATA_LBA_HI, align 1
  %228 = load i8*, i8** %7, align 8
  %229 = call i32 @usbat_read(%struct.us_data* %225, i32 %226, i8 zeroext %227, i8* %228)
  %230 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %221
  %233 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %233, i32* %3, align 4
  br label %255

234:                                              ; preds = %221
  %235 = load i8*, i8** %7, align 8
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = shl i32 %237, 8
  %239 = load i32, i32* %10, align 4
  %240 = add i32 %239, %238
  store i32 %240, i32* %10, align 4
  br label %245

241:                                              ; preds = %218
  %242 = load i8*, i8** %7, align 8
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i32
  store i32 %244, i32* %10, align 4
  br label %245

245:                                              ; preds = %241, %234
  %246 = load %struct.us_data*, %struct.us_data** %5, align 8
  %247 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %248 = call i32 @scsi_sglist(%struct.scsi_cmnd* %247)
  %249 = load i32, i32* %10, align 4
  %250 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %251 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %250)
  %252 = call i32 @usbat_read_block(%struct.us_data* %246, i32 %248, i32 %249, i32 %251)
  store i32 %252, i32* %6, align 4
  br label %253

253:                                              ; preds = %245, %202, %199
  %254 = load i32, i32* %6, align 4
  store i32 %254, i32* %3, align 4
  br label %255

255:                                              ; preds = %253, %232, %216, %197, %174, %163, %153, %133, %89
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @usbat_get_status(%struct.us_data*, i8*) #1

declare dso_local i32 @US_DEBUGP(i8*, i32) #1

declare dso_local i32 @usbat_hp8200e_rw_block_test(%struct.us_data*, i32, i8*, i8*, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @usbat_hp8200e_handle_read10(%struct.us_data*, i8*, i8*, %struct.scsi_cmnd*) #1

declare dso_local i32 @usbat_multiple_write(%struct.us_data*, i8*, i8*, i32) #1

declare dso_local i32 @usbat_write_block(%struct.us_data*, i32, i64*, i32, i32, i32) #1

declare dso_local i32 @usbat_read(%struct.us_data*, i32, i8 zeroext, i8*) #1

declare dso_local i32 @usbat_read_block(%struct.us_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
