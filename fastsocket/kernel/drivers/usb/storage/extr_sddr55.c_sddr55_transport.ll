; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_sddr55.c_sddr55_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_sddr55.c_sddr55_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.us_data = type { i8*, i64, i32 }
%struct.sddr55_card_info = type { i8*, i32*, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@sddr55_transport.inquiry_response = internal global [8 x i8] c"\00\80\00\02\1F\00\00\00", align 1
@sddr55_transport.mode_page_01 = internal global <{ [10 x i8], [10 x i8] }> <{ [10 x i8] c"\00\12\00\80\00\00\00\00\01\0A", [10 x i8] zeroinitializer }>, align 16
@GFP_NOIO = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@sddr55_card_info_destructor = common dso_local global i32 0, align 4
@REQUEST_SENSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"SDDR55: request sense %02x/%02x/%02x\0A\00", align 1
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@READ_CAPACITY = common dso_local global i32 0, align 4
@PAGESIZE = common dso_local global i64 0, align 8
@MODE_SENSE_10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"SDDR55: Dummy up request for mode page 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"SDDR55: Dummy up request for all mode pages\0A\00", align 1
@ALLOW_MEDIUM_REMOVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"SDDR55: %s medium removal. Not that I can do anything about it...\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Prevent\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Allow\00", align 1
@READ_10 = common dso_local global i32 0, align 4
@WRITE_10 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [54 x i8] c"Error: Requested LBA %04X exceeds maximum block %04X\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"WRITE_10: write block %04X (LBA %04X) page %01X pages %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"READ_10: read block %04X (LBA %04X) page %01X pages %d\0A\00", align 1
@TEST_UNIT_READY = common dso_local global i32 0, align 4
@START_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.us_data*)* @sddr55_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sddr55_transport(%struct.scsi_cmnd* %0, %struct.us_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca %struct.sddr55_card_info*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.us_data* %1, %struct.us_data** %5, align 8
  %14 = load %struct.us_data*, %struct.us_data** %5, align 8
  %15 = getelementptr inbounds %struct.us_data, %struct.us_data* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load %struct.us_data*, %struct.us_data** %5, align 8
  %18 = getelementptr inbounds %struct.us_data, %struct.us_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @GFP_NOIO, align 4
  %23 = call i64 @kzalloc(i32 80, i32 %22)
  %24 = load %struct.us_data*, %struct.us_data** %5, align 8
  %25 = getelementptr inbounds %struct.us_data, %struct.us_data* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.us_data*, %struct.us_data** %5, align 8
  %27 = getelementptr inbounds %struct.us_data, %struct.us_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %31, i32* %3, align 4
  br label %425

32:                                               ; preds = %21
  %33 = load i32, i32* @sddr55_card_info_destructor, align 4
  %34 = load %struct.us_data*, %struct.us_data** %5, align 8
  %35 = getelementptr inbounds %struct.us_data, %struct.us_data* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %32, %2
  %37 = load %struct.us_data*, %struct.us_data** %5, align 8
  %38 = getelementptr inbounds %struct.us_data, %struct.us_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.sddr55_card_info*
  store %struct.sddr55_card_info* %40, %struct.sddr55_card_info** %13, align 8
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %42 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @REQUEST_SENSE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %85

48:                                               ; preds = %36
  %49 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %50 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %56 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 12
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %62 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 13
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %60, i32 %66)
  %68 = load i8*, i8** %7, align 8
  %69 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %70 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @memcpy(i8* %68, i8* %71, i32 8)
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  store i8 112, i8* %74, align 1
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 7
  store i8 11, i8* %76, align 1
  %77 = load i8*, i8** %7, align 8
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %79 = call i32 @usb_stor_set_xfer_buf(i8* %77, i32 8, %struct.scsi_cmnd* %78)
  %80 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %81 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @memset(i8* %82, i32 0, i32 8)
  %84 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %84, i32* %3, align 4
  br label %425

85:                                               ; preds = %36
  %86 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %87 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @memset(i8* %88, i32 0, i32 8)
  %90 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %91 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @INQUIRY, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %85
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @memcpy(i8* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @sddr55_transport.inquiry_response, i64 0, i64 0), i32 8)
  %100 = load %struct.us_data*, %struct.us_data** %5, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @fill_inquiry_response(%struct.us_data* %100, i8* %101, i32 36)
  %103 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %103, i32* %3, align 4
  br label %425

104:                                              ; preds = %85
  %105 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %106 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %120, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* @jiffies, align 4
  %111 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %112 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %111, i32 0, i32 11
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* @HZ, align 4
  %115 = sdiv i32 %114, 2
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %113, %116
  %118 = call i64 @time_after(i32 %110, i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %109, %104
  %121 = load %struct.us_data*, %struct.us_data** %5, align 8
  %122 = call i32 @sddr55_status(%struct.us_data* %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load %struct.us_data*, %struct.us_data** %5, align 8
  %127 = call i32 @sddr55_status(%struct.us_data* %126)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %125
  %131 = call i32 @set_sense_info(i32 6, i32 40, i32 0)
  br label %132

132:                                              ; preds = %130, %125
  %133 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %133, i32* %3, align 4
  br label %425

134:                                              ; preds = %120
  br label %135

135:                                              ; preds = %134, %109
  %136 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %137 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %136, i32 0, i32 10
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = call i32 @set_sense_info(i32 3, i32 49, i32 0)
  %142 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %142, i32* %3, align 4
  br label %425

143:                                              ; preds = %135
  %144 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %145 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @READ_CAPACITY, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %204

151:                                              ; preds = %143
  %152 = load %struct.us_data*, %struct.us_data** %5, align 8
  %153 = call i64 @sddr55_get_capacity(%struct.us_data* %152)
  store i64 %153, i64* %8, align 8
  %154 = load i64, i64* %8, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %151
  %157 = call i32 @set_sense_info(i32 3, i32 48, i32 0)
  %158 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %158, i32* %3, align 4
  br label %425

159:                                              ; preds = %151
  %160 = load i64, i64* %8, align 8
  %161 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %162 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  %163 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %164 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %167 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %170 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %168, %171
  %173 = zext i32 %172 to i64
  %174 = lshr i64 %165, %173
  %175 = udiv i64 %174, 256
  %176 = mul i64 %175, 250
  %177 = trunc i64 %176 to i32
  %178 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %179 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 8
  %180 = load i64, i64* %8, align 8
  %181 = udiv i64 %180, 256
  %182 = mul i64 %181, 250
  store i64 %182, i64* %8, align 8
  %183 = load i64, i64* @PAGESIZE, align 8
  %184 = load i64, i64* %8, align 8
  %185 = udiv i64 %184, %183
  store i64 %185, i64* %8, align 8
  %186 = load i64, i64* %8, align 8
  %187 = add i64 %186, -1
  store i64 %187, i64* %8, align 8
  %188 = load i64, i64* %8, align 8
  %189 = call i32 @cpu_to_be32(i64 %188)
  %190 = load i8*, i8** %7, align 8
  %191 = bitcast i8* %190 to i32*
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  store i32 %189, i32* %192, align 4
  %193 = load i64, i64* @PAGESIZE, align 8
  %194 = call i32 @cpu_to_be32(i64 %193)
  %195 = load i8*, i8** %7, align 8
  %196 = bitcast i8* %195 to i32*
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  store i32 %194, i32* %197, align 4
  %198 = load i8*, i8** %7, align 8
  %199 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %200 = call i32 @usb_stor_set_xfer_buf(i8* %198, i32 8, %struct.scsi_cmnd* %199)
  %201 = load %struct.us_data*, %struct.us_data** %5, align 8
  %202 = call i32 @sddr55_read_map(%struct.us_data* %201)
  %203 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %203, i32* %3, align 4
  br label %425

204:                                              ; preds = %143
  %205 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %206 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @MODE_SENSE_10, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %259

212:                                              ; preds = %204
  %213 = load i8*, i8** %7, align 8
  %214 = call i32 @memcpy(i8* %213, i8* getelementptr inbounds ([20 x i8], [20 x i8]* bitcast (<{ [10 x i8], [10 x i8] }>* @sddr55_transport.mode_page_01 to [20 x i8]*), i64 0, i64 0), i32 20)
  %215 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %216 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %215, i32 0, i32 9
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %212
  %220 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %221 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %220, i32 0, i32 8
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br label %224

224:                                              ; preds = %219, %212
  %225 = phi i1 [ true, %212 ], [ %223, %219 ]
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i32 128, i32 0
  %228 = trunc i32 %227 to i8
  %229 = load i8*, i8** %7, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 3
  store i8 %228, i8* %230, align 1
  %231 = load i8*, i8** %7, align 8
  %232 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %233 = call i32 @usb_stor_set_xfer_buf(i8* %231, i32 20, %struct.scsi_cmnd* %232)
  %234 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %235 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 2
  %238 = load i32, i32* %237, align 4
  %239 = and i32 %238, 63
  %240 = icmp eq i32 %239, 1
  br i1 %240, label %241, label %244

241:                                              ; preds = %224
  %242 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %243 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %243, i32* %3, align 4
  br label %425

244:                                              ; preds = %224
  %245 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %246 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 2
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, 63
  %251 = icmp eq i32 %250, 63
  br i1 %251, label %252, label %255

252:                                              ; preds = %244
  %253 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %254 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %254, i32* %3, align 4
  br label %425

255:                                              ; preds = %244
  br label %256

256:                                              ; preds = %255
  %257 = call i32 @set_sense_info(i32 5, i32 36, i32 0)
  %258 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %258, i32* %3, align 4
  br label %425

259:                                              ; preds = %204
  %260 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %261 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @ALLOW_MEDIUM_REMOVAL, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %279

267:                                              ; preds = %259
  %268 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %269 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 4
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %272, 3
  %274 = icmp ne i32 %273, 0
  %275 = zext i1 %274 to i64
  %276 = select i1 %274, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %277 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i8* %276)
  %278 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %278, i32* %3, align 4
  br label %425

279:                                              ; preds = %259
  %280 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %281 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 0
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @READ_10, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %295, label %287

287:                                              ; preds = %279
  %288 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %289 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @WRITE_10, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %402

295:                                              ; preds = %287, %279
  %296 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %297 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 3
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %302 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 2
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @short_pack(i32 %300, i32 %305)
  store i32 %306, i32* %11, align 4
  %307 = load i32, i32* %11, align 4
  %308 = shl i32 %307, 16
  store i32 %308, i32* %11, align 4
  %309 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %310 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %309, i32 0, i32 0
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 5
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %315 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 4
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @short_pack(i32 %313, i32 %318)
  %320 = load i32, i32* %11, align 4
  %321 = or i32 %320, %319
  store i32 %321, i32* %11, align 4
  %322 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %323 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %322, i32 0, i32 0
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 8
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %328 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 7
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @short_pack(i32 %326, i32 %331)
  %333 = trunc i32 %332 to i16
  store i16 %333, i16* %12, align 2
  %334 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %335 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %334, i32 0, i32 6
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* %11, align 4
  %338 = shl i32 %337, %336
  store i32 %338, i32* %11, align 4
  %339 = load i32, i32* %11, align 4
  %340 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %341 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %340, i32 0, i32 5
  %342 = load i32, i32* %341, align 8
  %343 = lshr i32 %339, %342
  store i32 %343, i32* %9, align 4
  %344 = load i32, i32* %11, align 4
  %345 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %346 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %345, i32 0, i32 7
  %347 = load i32, i32* %346, align 8
  %348 = and i32 %344, %347
  store i32 %348, i32* %11, align 4
  %349 = load i32, i32* %9, align 4
  %350 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %351 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 8
  %353 = icmp uge i32 %349, %352
  br i1 %353, label %354, label %363

354:                                              ; preds = %295
  %355 = load i32, i32* %9, align 4
  %356 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %357 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 8
  %359 = sub nsw i32 %358, 1
  %360 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %355, i32 %359)
  %361 = call i32 @set_sense_info(i32 5, i32 36, i32 0)
  %362 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %362, i32* %3, align 4
  br label %425

363:                                              ; preds = %295
  %364 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %365 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %364, i32 0, i32 1
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* %9, align 4
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  %370 = load i32, i32* %369, align 4
  store i32 %370, i32* %10, align 4
  %371 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %372 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %371, i32 0, i32 0
  %373 = load i32*, i32** %372, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 0
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* @WRITE_10, align 4
  %377 = icmp eq i32 %375, %376
  br i1 %377, label %378, label %390

378:                                              ; preds = %363
  %379 = load i32, i32* %10, align 4
  %380 = load i32, i32* %9, align 4
  %381 = load i32, i32* %11, align 4
  %382 = load i16, i16* %12, align 2
  %383 = zext i16 %382 to i32
  %384 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i32 %379, i32 %380, i32 %381, i32 %383)
  %385 = load %struct.us_data*, %struct.us_data** %5, align 8
  %386 = load i32, i32* %9, align 4
  %387 = load i32, i32* %11, align 4
  %388 = load i16, i16* %12, align 2
  %389 = call i32 @sddr55_write_data(%struct.us_data* %385, i32 %386, i32 %387, i16 zeroext %388)
  store i32 %389, i32* %3, align 4
  br label %425

390:                                              ; preds = %363
  %391 = load i32, i32* %10, align 4
  %392 = load i32, i32* %9, align 4
  %393 = load i32, i32* %11, align 4
  %394 = load i16, i16* %12, align 2
  %395 = zext i16 %394 to i32
  %396 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32 %391, i32 %392, i32 %393, i32 %395)
  %397 = load %struct.us_data*, %struct.us_data** %5, align 8
  %398 = load i32, i32* %9, align 4
  %399 = load i32, i32* %11, align 4
  %400 = load i16, i16* %12, align 2
  %401 = call i32 @sddr55_read_data(%struct.us_data* %397, i32 %398, i32 %399, i16 zeroext %400)
  store i32 %401, i32* %3, align 4
  br label %425

402:                                              ; preds = %287
  %403 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %404 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %403, i32 0, i32 0
  %405 = load i32*, i32** %404, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 0
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* @TEST_UNIT_READY, align 4
  %409 = icmp eq i32 %407, %408
  br i1 %409, label %410, label %412

410:                                              ; preds = %402
  %411 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %411, i32* %3, align 4
  br label %425

412:                                              ; preds = %402
  %413 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %414 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %413, i32 0, i32 0
  %415 = load i32*, i32** %414, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 0
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* @START_STOP, align 4
  %419 = icmp eq i32 %417, %418
  br i1 %419, label %420, label %422

420:                                              ; preds = %412
  %421 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %421, i32* %3, align 4
  br label %425

422:                                              ; preds = %412
  %423 = call i32 @set_sense_info(i32 5, i32 32, i32 0)
  %424 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %424, i32* %3, align 4
  br label %425

425:                                              ; preds = %422, %420, %410, %390, %378, %354, %267, %256, %252, %241, %159, %156, %140, %132, %97, %48, %30
  %426 = load i32, i32* %3, align 4
  ret i32 %426
}

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @US_DEBUGP(i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @usb_stor_set_xfer_buf(i8*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fill_inquiry_response(%struct.us_data*, i8*, i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @sddr55_status(%struct.us_data*) #1

declare dso_local i32 @set_sense_info(i32, i32, i32) #1

declare dso_local i64 @sddr55_get_capacity(%struct.us_data*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @sddr55_read_map(%struct.us_data*) #1

declare dso_local i32 @short_pack(i32, i32) #1

declare dso_local i32 @sddr55_write_data(%struct.us_data*, i32, i32, i16 zeroext) #1

declare dso_local i32 @sddr55_read_data(%struct.us_data*, i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
