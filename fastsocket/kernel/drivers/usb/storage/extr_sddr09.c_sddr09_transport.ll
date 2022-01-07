; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_sddr09.c_sddr09_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_sddr09.c_sddr09_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32*, i32, i64 }
%struct.us_data = type { i8*, i32, i32, i64 }
%struct.sddr09_card_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_flash_dev = type { i32, i32, i32 }

@sddr09_transport.sensekey = internal global i8 0, align 1
@sddr09_transport.sensecode = internal global i8 0, align 1
@sddr09_transport.havefakesense = internal global i8 0, align 1
@sddr09_transport.inquiry_response = internal global [8 x i8] c"\00\80\00\02\1F\00\00\00", align 1
@sddr09_transport.mode_page_01 = internal global <{ [9 x i8], [10 x i8] }> <{ [9 x i8] c"\00\0F\00\00\00\00\00\01\0A", [10 x i8] zeroinitializer }>, align 16
@REQUEST_SENSE = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i32 0, align 4
@READ_CAPACITY = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@MODE_SENSE_10 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"SDDR09: Dummy up request for mode page 0x%x\0A\00", align 1
@SDDR09_WP = common dso_local global i32 0, align 4
@ALLOW_MEDIUM_REMOVAL = common dso_local global i32 0, align 4
@READ_10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"READ_10: read page %d pagect %d\0A\00", align 1
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@WRITE_10 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"WRITE_10: write page %d pagect %d\0A\00", align 1
@TEST_UNIT_READY = common dso_local global i32 0, align 4
@LUNBITS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"SDDR09: Send control for command %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"sddr09_transport: sddr09_send_scsi_command returns %d\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"SDDR09: %s %d bytes\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"sending\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"receiving\00", align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.us_data*)* @sddr09_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sddr09_transport(%struct.scsi_cmnd* %0, %struct.us_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sddr09_card_info*, align 8
  %13 = alloca %struct.nand_flash_dev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.us_data* %1, %struct.us_data** %5, align 8
  %16 = load %struct.us_data*, %struct.us_data** %5, align 8
  %17 = getelementptr inbounds %struct.us_data, %struct.us_data* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load %struct.us_data*, %struct.us_data** %5, align 8
  %20 = getelementptr inbounds %struct.us_data, %struct.us_data* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.sddr09_card_info*
  store %struct.sddr09_card_info* %22, %struct.sddr09_card_info** %12, align 8
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @REQUEST_SENSE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %2
  %31 = load i8, i8* @sddr09_transport.havefakesense, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @memset(i8* %35, i32 0, i32 18)
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 112, i8* %38, align 1
  %39 = load i8, i8* @sddr09_transport.sensekey, align 1
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  store i8 %39, i8* %41, align 1
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 7
  store i8 11, i8* %43, align 1
  %44 = load i8, i8* @sddr09_transport.sensecode, align 1
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 12
  store i8 %44, i8* %46, align 1
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %49 = call i32 @usb_stor_set_xfer_buf(i8* %47, i32 18, %struct.scsi_cmnd* %48)
  store i8 0, i8* @sddr09_transport.havefakesense, align 1
  store i8 0, i8* @sddr09_transport.sensecode, align 1
  store i8 0, i8* @sddr09_transport.sensekey, align 1
  %50 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %50, i32* %3, align 4
  br label %471

51:                                               ; preds = %30, %2
  store i8 1, i8* @sddr09_transport.havefakesense, align 1
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %53 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @INQUIRY, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @memcpy(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @sddr09_transport.inquiry_response, i64 0, i64 0), i32 8)
  %62 = load %struct.us_data*, %struct.us_data** %5, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @fill_inquiry_response(%struct.us_data* %62, i8* %63, i32 36)
  %65 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %65, i32* %3, align 4
  br label %471

66:                                               ; preds = %51
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %68 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @READ_CAPACITY, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %154

74:                                               ; preds = %66
  %75 = load %struct.us_data*, %struct.us_data** %5, align 8
  %76 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %77 = call i32 @sddr09_get_wp(%struct.us_data* %75, %struct.sddr09_card_info* %76)
  %78 = load %struct.us_data*, %struct.us_data** %5, align 8
  %79 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %80 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.nand_flash_dev* @sddr09_get_cardinfo(%struct.us_data* %78, i32 %81)
  store %struct.nand_flash_dev* %82, %struct.nand_flash_dev** %13, align 8
  %83 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %13, align 8
  %84 = icmp ne %struct.nand_flash_dev* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %126, %85
  store i8 2, i8* @sddr09_transport.sensekey, align 1
  store i8 58, i8* @sddr09_transport.sensecode, align 1
  %87 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %87, i32* %3, align 4
  br label %471

88:                                               ; preds = %74
  %89 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %13, align 8
  %90 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 1, %91
  %93 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %94 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %13, align 8
  %96 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %99 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %101 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 1, %102
  %104 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %105 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %13, align 8
  %107 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %110 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %112 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 1, %113
  %115 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %116 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %118 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %119, 1
  %121 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %122 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 4
  %123 = load %struct.us_data*, %struct.us_data** %5, align 8
  %124 = call i64 @sddr09_read_map(%struct.us_data* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %88
  br label %86

127:                                              ; preds = %88
  %128 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %129 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %132 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 %130, %133
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %9, align 8
  %137 = load i64, i64* %9, align 8
  %138 = call i32 @cpu_to_be32(i64 %137)
  %139 = load i8*, i8** %8, align 8
  %140 = bitcast i8* %139 to i32*
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  store i32 %138, i32* %141, align 4
  %142 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %143 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = call i32 @cpu_to_be32(i64 %145)
  %147 = load i8*, i8** %8, align 8
  %148 = bitcast i8* %147 to i32*
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  store i32 %146, i32* %149, align 4
  %150 = load i8*, i8** %8, align 8
  %151 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %152 = call i32 @usb_stor_set_xfer_buf(i8* %150, i32 8, %struct.scsi_cmnd* %151)
  %153 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %153, i32* %3, align 4
  br label %471

154:                                              ; preds = %66
  %155 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %156 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @MODE_SENSE_10, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %200

162:                                              ; preds = %154
  %163 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %164 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, 63
  store i32 %168, i32* %14, align 4
  %169 = load i32, i32* %14, align 4
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %174, label %171

171:                                              ; preds = %162
  %172 = load i32, i32* %14, align 4
  %173 = icmp eq i32 %172, 63
  br i1 %173, label %174, label %198

174:                                              ; preds = %171, %162
  %175 = load i32, i32* %14, align 4
  %176 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %175)
  %177 = load i8*, i8** %8, align 8
  %178 = call i32 @memcpy(i8* %177, i8* getelementptr inbounds ([19 x i8], [19 x i8]* bitcast (<{ [9 x i8], [10 x i8] }>* @sddr09_transport.mode_page_01 to [19 x i8]*), i64 0, i64 0), i32 19)
  %179 = call i32 @cpu_to_be16(i32 17)
  %180 = load i8*, i8** %8, align 8
  %181 = bitcast i8* %180 to i32*
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  store i32 %179, i32* %182, align 4
  %183 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %184 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @SDDR09_WP, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i32 128, i32 0
  %191 = trunc i32 %190 to i8
  %192 = load i8*, i8** %8, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 3
  store i8 %191, i8* %193, align 1
  %194 = load i8*, i8** %8, align 8
  %195 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %196 = call i32 @usb_stor_set_xfer_buf(i8* %194, i32 19, %struct.scsi_cmnd* %195)
  %197 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %197, i32* %3, align 4
  br label %471

198:                                              ; preds = %171
  store i8 5, i8* @sddr09_transport.sensekey, align 1
  store i8 36, i8* @sddr09_transport.sensecode, align 1
  %199 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %199, i32* %3, align 4
  br label %471

200:                                              ; preds = %154
  %201 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %202 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @ALLOW_MEDIUM_REMOVAL, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %200
  %209 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %209, i32* %3, align 4
  br label %471

210:                                              ; preds = %200
  store i8 0, i8* @sddr09_transport.havefakesense, align 1
  %211 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %212 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @READ_10, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %271

218:                                              ; preds = %210
  %219 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %220 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 3
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %225 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 2
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @short_pack(i32 %223, i32 %228)
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = shl i32 %230, 16
  store i32 %231, i32* %10, align 4
  %232 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %233 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 5
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %238 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 4
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @short_pack(i32 %236, i32 %241)
  %243 = load i32, i32* %10, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %10, align 4
  %245 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %246 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 8
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %251 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 7
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @short_pack(i32 %249, i32 %254)
  store i32 %255, i32* %11, align 4
  %256 = load i32, i32* %10, align 4
  %257 = load i32, i32* %11, align 4
  %258 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %256, i32 %257)
  %259 = load %struct.us_data*, %struct.us_data** %5, align 8
  %260 = load i32, i32* %10, align 4
  %261 = load i32, i32* %11, align 4
  %262 = call i32 @sddr09_read_data(%struct.us_data* %259, i32 %260, i32 %261)
  store i32 %262, i32* %6, align 4
  %263 = load i32, i32* %6, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %218
  %266 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  br label %269

267:                                              ; preds = %218
  %268 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  br label %269

269:                                              ; preds = %267, %265
  %270 = phi i32 [ %266, %265 ], [ %268, %267 ]
  store i32 %270, i32* %3, align 4
  br label %471

271:                                              ; preds = %210
  %272 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %273 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @WRITE_10, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %332

279:                                              ; preds = %271
  %280 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %281 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 3
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %286 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 2
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @short_pack(i32 %284, i32 %289)
  store i32 %290, i32* %10, align 4
  %291 = load i32, i32* %10, align 4
  %292 = shl i32 %291, 16
  store i32 %292, i32* %10, align 4
  %293 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %294 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %293, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 5
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %299 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 4
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @short_pack(i32 %297, i32 %302)
  %304 = load i32, i32* %10, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %10, align 4
  %306 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %307 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 8
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %312 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %311, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 7
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @short_pack(i32 %310, i32 %315)
  store i32 %316, i32* %11, align 4
  %317 = load i32, i32* %10, align 4
  %318 = load i32, i32* %11, align 4
  %319 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %317, i32 %318)
  %320 = load %struct.us_data*, %struct.us_data** %5, align 8
  %321 = load i32, i32* %10, align 4
  %322 = load i32, i32* %11, align 4
  %323 = call i32 @sddr09_write_data(%struct.us_data* %320, i32 %321, i32 %322)
  store i32 %323, i32* %6, align 4
  %324 = load i32, i32* %6, align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %279
  %327 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  br label %330

328:                                              ; preds = %279
  %329 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  br label %330

330:                                              ; preds = %328, %326
  %331 = phi i32 [ %327, %326 ], [ %329, %328 ]
  store i32 %331, i32* %3, align 4
  br label %471

332:                                              ; preds = %271
  %333 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %334 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %333, i32 0, i32 0
  %335 = load i32*, i32** %334, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 0
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @TEST_UNIT_READY, align 4
  %339 = icmp ne i32 %337, %338
  br i1 %339, label %340, label %350

340:                                              ; preds = %332
  %341 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %342 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %341, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 0
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* @REQUEST_SENSE, align 4
  %347 = icmp ne i32 %345, %346
  br i1 %347, label %348, label %350

348:                                              ; preds = %340
  store i8 5, i8* @sddr09_transport.sensekey, align 1
  store i8 32, i8* @sddr09_transport.sensecode, align 1
  store i8 1, i8* @sddr09_transport.havefakesense, align 1
  %349 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %349, i32* %3, align 4
  br label %471

350:                                              ; preds = %340, %332
  br label %351

351:                                              ; preds = %365, %350
  %352 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %353 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 8
  %355 = icmp slt i32 %354, 12
  br i1 %355, label %356, label %370

356:                                              ; preds = %351
  %357 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %358 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %357, i32 0, i32 0
  %359 = load i32*, i32** %358, align 8
  %360 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %361 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 8
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %359, i64 %363
  store i32 0, i32* %364, align 4
  br label %365

365:                                              ; preds = %356
  %366 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %367 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %367, align 8
  br label %351

370:                                              ; preds = %351
  %371 = load i32, i32* @LUNBITS, align 4
  %372 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %373 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %372, i32 0, i32 0
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 1
  store i32 %371, i32* %375, align 4
  %376 = load i8*, i8** %8, align 8
  %377 = getelementptr inbounds i8, i8* %376, i64 0
  store i8 0, i8* %377, align 1
  store i32 0, i32* %7, align 4
  br label %378

378:                                              ; preds = %395, %370
  %379 = load i32, i32* %7, align 4
  %380 = icmp slt i32 %379, 12
  br i1 %380, label %381, label %398

381:                                              ; preds = %378
  %382 = load i8*, i8** %8, align 8
  %383 = load i8*, i8** %8, align 8
  %384 = call i32 @strlen(i8* %383)
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8, i8* %382, i64 %385
  %387 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %388 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %387, i32 0, i32 0
  %389 = load i32*, i32** %388, align 8
  %390 = load i32, i32* %7, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %389, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = call i32 @sprintf(i8* %386, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %393)
  br label %395

395:                                              ; preds = %381
  %396 = load i32, i32* %7, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %7, align 4
  br label %378

398:                                              ; preds = %378
  %399 = load i8*, i8** %8, align 8
  %400 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %399)
  %401 = load %struct.us_data*, %struct.us_data** %5, align 8
  %402 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %403 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %402, i32 0, i32 0
  %404 = load i32*, i32** %403, align 8
  %405 = call i32 @sddr09_send_scsi_command(%struct.us_data* %401, i32* %404, i32 12)
  store i32 %405, i32* %6, align 4
  %406 = load i32, i32* %6, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %412

408:                                              ; preds = %398
  %409 = load i32, i32* %6, align 4
  %410 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %409)
  %411 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %411, i32* %3, align 4
  br label %471

412:                                              ; preds = %398
  %413 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %414 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %413)
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %418

416:                                              ; preds = %412
  %417 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %417, i32* %3, align 4
  br label %471

418:                                              ; preds = %412
  %419 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %420 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %419, i32 0, i32 2
  %421 = load i64, i64* %420, align 8
  %422 = load i64, i64* @DMA_TO_DEVICE, align 8
  %423 = icmp eq i64 %421, %422
  br i1 %423, label %430, label %424

424:                                              ; preds = %418
  %425 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %426 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %425, i32 0, i32 2
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %429 = icmp eq i64 %427, %428
  br i1 %429, label %430, label %469

430:                                              ; preds = %424, %418
  %431 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %432 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %431, i32 0, i32 2
  %433 = load i64, i64* %432, align 8
  %434 = load i64, i64* @DMA_TO_DEVICE, align 8
  %435 = icmp eq i64 %433, %434
  br i1 %435, label %436, label %440

436:                                              ; preds = %430
  %437 = load %struct.us_data*, %struct.us_data** %5, align 8
  %438 = getelementptr inbounds %struct.us_data, %struct.us_data* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 8
  br label %444

440:                                              ; preds = %430
  %441 = load %struct.us_data*, %struct.us_data** %5, align 8
  %442 = getelementptr inbounds %struct.us_data, %struct.us_data* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 4
  br label %444

444:                                              ; preds = %440, %436
  %445 = phi i32 [ %439, %436 ], [ %443, %440 ]
  store i32 %445, i32* %15, align 4
  %446 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %447 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %446, i32 0, i32 2
  %448 = load i64, i64* %447, align 8
  %449 = load i64, i64* @DMA_TO_DEVICE, align 8
  %450 = icmp eq i64 %448, %449
  %451 = zext i1 %450 to i64
  %452 = select i1 %450, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)
  %453 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %454 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %453)
  %455 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %452, i32 %454)
  %456 = load %struct.us_data*, %struct.us_data** %5, align 8
  %457 = load i32, i32* %15, align 4
  %458 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %459 = call i32 @usb_stor_bulk_srb(%struct.us_data* %456, i32 %457, %struct.scsi_cmnd* %458)
  store i32 %459, i32* %6, align 4
  %460 = load i32, i32* %6, align 4
  %461 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %462 = icmp eq i32 %460, %461
  br i1 %462, label %463, label %465

463:                                              ; preds = %444
  %464 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  br label %467

465:                                              ; preds = %444
  %466 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  br label %467

467:                                              ; preds = %465, %463
  %468 = phi i32 [ %464, %463 ], [ %466, %465 ]
  store i32 %468, i32* %3, align 4
  br label %471

469:                                              ; preds = %424
  %470 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %470, i32* %3, align 4
  br label %471

471:                                              ; preds = %469, %467, %416, %408, %348, %330, %269, %208, %198, %174, %127, %86, %59, %34
  %472 = load i32, i32* %3, align 4
  ret i32 %472
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @usb_stor_set_xfer_buf(i8*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fill_inquiry_response(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @sddr09_get_wp(%struct.us_data*, %struct.sddr09_card_info*) #1

declare dso_local %struct.nand_flash_dev* @sddr09_get_cardinfo(%struct.us_data*, i32) #1

declare dso_local i64 @sddr09_read_map(%struct.us_data*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @US_DEBUGP(i8*, ...) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @short_pack(i32, i32) #1

declare dso_local i32 @sddr09_read_data(%struct.us_data*, i32, i32) #1

declare dso_local i32 @sddr09_write_data(%struct.us_data*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sddr09_send_scsi_command(%struct.us_data*, i32*, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @usb_stor_bulk_srb(%struct.us_data*, i32, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
