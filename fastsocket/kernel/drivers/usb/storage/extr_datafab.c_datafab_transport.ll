; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_datafab.c_datafab_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_datafab.c_datafab_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64*, i32 }
%struct.us_data = type { i8*, i64, i32 }
%struct.datafab_info = type { i32, i32, i64, i8, i8, i8 }

@datafab_transport.inquiry_reply = internal global [8 x i8] c"\00\80\00\01\1F\00\00\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"datafab_transport:  Gah! Can't allocate storage for Datafab info struct!\0A\00", align 1
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@datafab_info_destructor = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"datafab_transport:  INQUIRY.  Returning bogus response\00", align 1
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@READ_CAPACITY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [71 x i8] c"datafab_transport:  READ_CAPACITY:  %ld sectors, %ld bytes per sector\0A\00", align 1
@MODE_SELECT_10 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"datafab_transport:  Gah! MODE_SELECT_10.\0A\00", align 1
@READ_10 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [60 x i8] c"datafab_transport:  READ_10: read block 0x%04lx  count %ld\0A\00", align 1
@READ_12 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [60 x i8] c"datafab_transport:  READ_12: read block 0x%04lx  count %ld\0A\00", align 1
@WRITE_10 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [62 x i8] c"datafab_transport:  WRITE_10: write block 0x%04lx  count %ld\0A\00", align 1
@WRITE_12 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [62 x i8] c"datafab_transport:  WRITE_12: write block 0x%04lx  count %ld\0A\00", align 1
@TEST_UNIT_READY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [38 x i8] c"datafab_transport:  TEST_UNIT_READY.\0A\00", align 1
@REQUEST_SENSE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [62 x i8] c"datafab_transport:  REQUEST_SENSE.  Returning faked response\0A\00", align 1
@MODE_SENSE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [43 x i8] c"datafab_transport:  MODE_SENSE_6 detected\0A\00", align 1
@MODE_SENSE_10 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [44 x i8] c"datafab_transport:  MODE_SENSE_10 detected\0A\00", align 1
@ALLOW_MEDIUM_REMOVAL = common dso_local global i64 0, align 8
@START_STOP = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [33 x i8] c"datafab_transport:  START_STOP.\0A\00", align 1
@NO_SENSE = common dso_local global i8 0, align 1
@SUCCESS = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i8 0, align 1
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [53 x i8] c"datafab_transport:  Gah! Unknown command: %d (0x%x)\0A\00", align 1
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.us_data*)* @datafab_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @datafab_transport(%struct.scsi_cmnd* %0, %struct.us_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca %struct.datafab_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.us_data* %1, %struct.us_data** %5, align 8
  %11 = load %struct.us_data*, %struct.us_data** %5, align 8
  %12 = getelementptr inbounds %struct.us_data, %struct.us_data* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %10, align 8
  %14 = load %struct.us_data*, %struct.us_data** %5, align 8
  %15 = getelementptr inbounds %struct.us_data, %struct.us_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_NOIO, align 4
  %20 = call i64 @kzalloc(i32 24, i32 %19)
  %21 = load %struct.us_data*, %struct.us_data** %5, align 8
  %22 = getelementptr inbounds %struct.us_data, %struct.us_data* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.us_data*, %struct.us_data** %5, align 8
  %24 = getelementptr inbounds %struct.us_data, %struct.us_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %29, i32* %3, align 4
  br label %536

30:                                               ; preds = %18
  %31 = load i32, i32* @datafab_info_destructor, align 4
  %32 = load %struct.us_data*, %struct.us_data** %5, align 8
  %33 = getelementptr inbounds %struct.us_data, %struct.us_data* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.us_data*, %struct.us_data** %5, align 8
  %35 = getelementptr inbounds %struct.us_data, %struct.us_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.datafab_info*
  %38 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 8
  br label %39

39:                                               ; preds = %30, %2
  %40 = load %struct.us_data*, %struct.us_data** %5, align 8
  %41 = getelementptr inbounds %struct.us_data, %struct.us_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.datafab_info*
  store %struct.datafab_info* %43, %struct.datafab_info** %6, align 8
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @INQUIRY, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %39
  %52 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @memcpy(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @datafab_transport.inquiry_reply, i64 0, i64 0), i32 8)
  %55 = load %struct.us_data*, %struct.us_data** %5, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @fill_inquiry_response(%struct.us_data* %55, i8* %56, i32 36)
  %58 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %58, i32* %3, align 4
  br label %536

59:                                               ; preds = %39
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @READ_CAPACITY, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %106

67:                                               ; preds = %59
  %68 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %69 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %68, i32 0, i32 1
  store i32 512, i32* %69, align 4
  %70 = load %struct.us_data*, %struct.us_data** %5, align 8
  %71 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %72 = call i32 @datafab_id_device(%struct.us_data* %70, %struct.datafab_info* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %536

78:                                               ; preds = %67
  %79 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %80 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %83 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i64 %81, i32 %84)
  %86 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %87 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = sub i64 %88, 1
  %90 = call i32 @cpu_to_be32(i64 %89)
  %91 = load i8*, i8** %10, align 8
  %92 = bitcast i8* %91 to i32*
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %90, i32* %93, align 4
  %94 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %95 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = call i32 @cpu_to_be32(i64 %97)
  %99 = load i8*, i8** %10, align 8
  %100 = bitcast i8* %99 to i32*
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 %98, i32* %101, align 4
  %102 = load i8*, i8** %10, align 8
  %103 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %104 = call i32 @usb_stor_set_xfer_buf(i8* %102, i32 8, %struct.scsi_cmnd* %103)
  %105 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %105, i32* %3, align 4
  br label %536

106:                                              ; preds = %59
  %107 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %108 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @MODE_SELECT_10, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %116 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %116, i32* %3, align 4
  br label %536

117:                                              ; preds = %106
  %118 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %119 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @READ_10, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %180

125:                                              ; preds = %117
  %126 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %127 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 2
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = shl i32 %131, 24
  %133 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %134 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 3
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = shl i32 %138, 16
  %140 = or i32 %132, %139
  %141 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %142 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 4
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = shl i32 %146, 8
  %148 = or i32 %140, %147
  %149 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %150 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %149, i32 0, i32 0
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 5
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = or i32 %148, %154
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %8, align 8
  %157 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %158 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %157, i32 0, i32 0
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 7
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = shl i32 %162, 8
  %164 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %165 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %164, i32 0, i32 0
  %166 = load i64*, i64** %165, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 8
  %168 = load i64, i64* %167, align 8
  %169 = trunc i64 %168 to i32
  %170 = or i32 %163, %169
  %171 = sext i32 %170 to i64
  store i64 %171, i64* %9, align 8
  %172 = load i64, i64* %8, align 8
  %173 = load i64, i64* %9, align 8
  %174 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i64 %172, i64 %173)
  %175 = load %struct.us_data*, %struct.us_data** %5, align 8
  %176 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %177 = load i64, i64* %8, align 8
  %178 = load i64, i64* %9, align 8
  %179 = call i32 @datafab_read_data(%struct.us_data* %175, %struct.datafab_info* %176, i64 %177, i64 %178)
  store i32 %179, i32* %3, align 4
  br label %536

180:                                              ; preds = %117
  %181 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %182 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %181, i32 0, i32 0
  %183 = load i64*, i64** %182, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @READ_12, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %259

188:                                              ; preds = %180
  %189 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %190 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %189, i32 0, i32 0
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 2
  %193 = load i64, i64* %192, align 8
  %194 = trunc i64 %193 to i32
  %195 = shl i32 %194, 24
  %196 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %197 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %196, i32 0, i32 0
  %198 = load i64*, i64** %197, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 3
  %200 = load i64, i64* %199, align 8
  %201 = trunc i64 %200 to i32
  %202 = shl i32 %201, 16
  %203 = or i32 %195, %202
  %204 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %205 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %204, i32 0, i32 0
  %206 = load i64*, i64** %205, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 4
  %208 = load i64, i64* %207, align 8
  %209 = trunc i64 %208 to i32
  %210 = shl i32 %209, 8
  %211 = or i32 %203, %210
  %212 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %213 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %212, i32 0, i32 0
  %214 = load i64*, i64** %213, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 5
  %216 = load i64, i64* %215, align 8
  %217 = trunc i64 %216 to i32
  %218 = or i32 %211, %217
  %219 = sext i32 %218 to i64
  store i64 %219, i64* %8, align 8
  %220 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %221 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %220, i32 0, i32 0
  %222 = load i64*, i64** %221, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 6
  %224 = load i64, i64* %223, align 8
  %225 = trunc i64 %224 to i32
  %226 = shl i32 %225, 24
  %227 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %228 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %227, i32 0, i32 0
  %229 = load i64*, i64** %228, align 8
  %230 = getelementptr inbounds i64, i64* %229, i64 7
  %231 = load i64, i64* %230, align 8
  %232 = trunc i64 %231 to i32
  %233 = shl i32 %232, 16
  %234 = or i32 %226, %233
  %235 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %236 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %235, i32 0, i32 0
  %237 = load i64*, i64** %236, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 8
  %239 = load i64, i64* %238, align 8
  %240 = trunc i64 %239 to i32
  %241 = shl i32 %240, 8
  %242 = or i32 %234, %241
  %243 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %244 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %243, i32 0, i32 0
  %245 = load i64*, i64** %244, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 9
  %247 = load i64, i64* %246, align 8
  %248 = trunc i64 %247 to i32
  %249 = or i32 %242, %248
  %250 = sext i32 %249 to i64
  store i64 %250, i64* %9, align 8
  %251 = load i64, i64* %8, align 8
  %252 = load i64, i64* %9, align 8
  %253 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i64 %251, i64 %252)
  %254 = load %struct.us_data*, %struct.us_data** %5, align 8
  %255 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %256 = load i64, i64* %8, align 8
  %257 = load i64, i64* %9, align 8
  %258 = call i32 @datafab_read_data(%struct.us_data* %254, %struct.datafab_info* %255, i64 %256, i64 %257)
  store i32 %258, i32* %3, align 4
  br label %536

259:                                              ; preds = %180
  %260 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %261 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %260, i32 0, i32 0
  %262 = load i64*, i64** %261, align 8
  %263 = getelementptr inbounds i64, i64* %262, i64 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @WRITE_10, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %322

267:                                              ; preds = %259
  %268 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %269 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %268, i32 0, i32 0
  %270 = load i64*, i64** %269, align 8
  %271 = getelementptr inbounds i64, i64* %270, i64 2
  %272 = load i64, i64* %271, align 8
  %273 = trunc i64 %272 to i32
  %274 = shl i32 %273, 24
  %275 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %276 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %275, i32 0, i32 0
  %277 = load i64*, i64** %276, align 8
  %278 = getelementptr inbounds i64, i64* %277, i64 3
  %279 = load i64, i64* %278, align 8
  %280 = trunc i64 %279 to i32
  %281 = shl i32 %280, 16
  %282 = or i32 %274, %281
  %283 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %284 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %283, i32 0, i32 0
  %285 = load i64*, i64** %284, align 8
  %286 = getelementptr inbounds i64, i64* %285, i64 4
  %287 = load i64, i64* %286, align 8
  %288 = trunc i64 %287 to i32
  %289 = shl i32 %288, 8
  %290 = or i32 %282, %289
  %291 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %292 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %291, i32 0, i32 0
  %293 = load i64*, i64** %292, align 8
  %294 = getelementptr inbounds i64, i64* %293, i64 5
  %295 = load i64, i64* %294, align 8
  %296 = trunc i64 %295 to i32
  %297 = or i32 %290, %296
  %298 = sext i32 %297 to i64
  store i64 %298, i64* %8, align 8
  %299 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %300 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %299, i32 0, i32 0
  %301 = load i64*, i64** %300, align 8
  %302 = getelementptr inbounds i64, i64* %301, i64 7
  %303 = load i64, i64* %302, align 8
  %304 = trunc i64 %303 to i32
  %305 = shl i32 %304, 8
  %306 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %307 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %306, i32 0, i32 0
  %308 = load i64*, i64** %307, align 8
  %309 = getelementptr inbounds i64, i64* %308, i64 8
  %310 = load i64, i64* %309, align 8
  %311 = trunc i64 %310 to i32
  %312 = or i32 %305, %311
  %313 = sext i32 %312 to i64
  store i64 %313, i64* %9, align 8
  %314 = load i64, i64* %8, align 8
  %315 = load i64, i64* %9, align 8
  %316 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i64 %314, i64 %315)
  %317 = load %struct.us_data*, %struct.us_data** %5, align 8
  %318 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %319 = load i64, i64* %8, align 8
  %320 = load i64, i64* %9, align 8
  %321 = call i32 @datafab_write_data(%struct.us_data* %317, %struct.datafab_info* %318, i64 %319, i64 %320)
  store i32 %321, i32* %3, align 4
  br label %536

322:                                              ; preds = %259
  %323 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %324 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %323, i32 0, i32 0
  %325 = load i64*, i64** %324, align 8
  %326 = getelementptr inbounds i64, i64* %325, i64 0
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @WRITE_12, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %401

330:                                              ; preds = %322
  %331 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %332 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %331, i32 0, i32 0
  %333 = load i64*, i64** %332, align 8
  %334 = getelementptr inbounds i64, i64* %333, i64 2
  %335 = load i64, i64* %334, align 8
  %336 = trunc i64 %335 to i32
  %337 = shl i32 %336, 24
  %338 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %339 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %338, i32 0, i32 0
  %340 = load i64*, i64** %339, align 8
  %341 = getelementptr inbounds i64, i64* %340, i64 3
  %342 = load i64, i64* %341, align 8
  %343 = trunc i64 %342 to i32
  %344 = shl i32 %343, 16
  %345 = or i32 %337, %344
  %346 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %347 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %346, i32 0, i32 0
  %348 = load i64*, i64** %347, align 8
  %349 = getelementptr inbounds i64, i64* %348, i64 4
  %350 = load i64, i64* %349, align 8
  %351 = trunc i64 %350 to i32
  %352 = shl i32 %351, 8
  %353 = or i32 %345, %352
  %354 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %355 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %354, i32 0, i32 0
  %356 = load i64*, i64** %355, align 8
  %357 = getelementptr inbounds i64, i64* %356, i64 5
  %358 = load i64, i64* %357, align 8
  %359 = trunc i64 %358 to i32
  %360 = or i32 %353, %359
  %361 = sext i32 %360 to i64
  store i64 %361, i64* %8, align 8
  %362 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %363 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %362, i32 0, i32 0
  %364 = load i64*, i64** %363, align 8
  %365 = getelementptr inbounds i64, i64* %364, i64 6
  %366 = load i64, i64* %365, align 8
  %367 = trunc i64 %366 to i32
  %368 = shl i32 %367, 24
  %369 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %370 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %369, i32 0, i32 0
  %371 = load i64*, i64** %370, align 8
  %372 = getelementptr inbounds i64, i64* %371, i64 7
  %373 = load i64, i64* %372, align 8
  %374 = trunc i64 %373 to i32
  %375 = shl i32 %374, 16
  %376 = or i32 %368, %375
  %377 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %378 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %377, i32 0, i32 0
  %379 = load i64*, i64** %378, align 8
  %380 = getelementptr inbounds i64, i64* %379, i64 8
  %381 = load i64, i64* %380, align 8
  %382 = trunc i64 %381 to i32
  %383 = shl i32 %382, 8
  %384 = or i32 %376, %383
  %385 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %386 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %385, i32 0, i32 0
  %387 = load i64*, i64** %386, align 8
  %388 = getelementptr inbounds i64, i64* %387, i64 9
  %389 = load i64, i64* %388, align 8
  %390 = trunc i64 %389 to i32
  %391 = or i32 %384, %390
  %392 = sext i32 %391 to i64
  store i64 %392, i64* %9, align 8
  %393 = load i64, i64* %8, align 8
  %394 = load i64, i64* %9, align 8
  %395 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i64 %393, i64 %394)
  %396 = load %struct.us_data*, %struct.us_data** %5, align 8
  %397 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %398 = load i64, i64* %8, align 8
  %399 = load i64, i64* %9, align 8
  %400 = call i32 @datafab_write_data(%struct.us_data* %396, %struct.datafab_info* %397, i64 %398, i64 %399)
  store i32 %400, i32* %3, align 4
  br label %536

401:                                              ; preds = %322
  %402 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %403 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %402, i32 0, i32 0
  %404 = load i64*, i64** %403, align 8
  %405 = getelementptr inbounds i64, i64* %404, i64 0
  %406 = load i64, i64* %405, align 8
  %407 = load i64, i64* @TEST_UNIT_READY, align 8
  %408 = icmp eq i64 %406, %407
  br i1 %408, label %409, label %414

409:                                              ; preds = %401
  %410 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %411 = load %struct.us_data*, %struct.us_data** %5, align 8
  %412 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %413 = call i32 @datafab_id_device(%struct.us_data* %411, %struct.datafab_info* %412)
  store i32 %413, i32* %3, align 4
  br label %536

414:                                              ; preds = %401
  %415 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %416 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %415, i32 0, i32 0
  %417 = load i64*, i64** %416, align 8
  %418 = getelementptr inbounds i64, i64* %417, i64 0
  %419 = load i64, i64* %418, align 8
  %420 = load i64, i64* @REQUEST_SENSE, align 8
  %421 = icmp eq i64 %419, %420
  br i1 %421, label %422, label %449

422:                                              ; preds = %414
  %423 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0))
  %424 = load i8*, i8** %10, align 8
  %425 = call i32 @memset(i8* %424, i32 0, i32 18)
  %426 = load i8*, i8** %10, align 8
  %427 = getelementptr inbounds i8, i8* %426, i64 0
  store i8 -16, i8* %427, align 1
  %428 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %429 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %428, i32 0, i32 3
  %430 = load i8, i8* %429, align 8
  %431 = load i8*, i8** %10, align 8
  %432 = getelementptr inbounds i8, i8* %431, i64 2
  store i8 %430, i8* %432, align 1
  %433 = load i8*, i8** %10, align 8
  %434 = getelementptr inbounds i8, i8* %433, i64 7
  store i8 11, i8* %434, align 1
  %435 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %436 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %435, i32 0, i32 4
  %437 = load i8, i8* %436, align 1
  %438 = load i8*, i8** %10, align 8
  %439 = getelementptr inbounds i8, i8* %438, i64 12
  store i8 %437, i8* %439, align 1
  %440 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %441 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %440, i32 0, i32 5
  %442 = load i8, i8* %441, align 2
  %443 = load i8*, i8** %10, align 8
  %444 = getelementptr inbounds i8, i8* %443, i64 13
  store i8 %442, i8* %444, align 1
  %445 = load i8*, i8** %10, align 8
  %446 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %447 = call i32 @usb_stor_set_xfer_buf(i8* %445, i32 18, %struct.scsi_cmnd* %446)
  %448 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %448, i32* %3, align 4
  br label %536

449:                                              ; preds = %414
  %450 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %451 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %450, i32 0, i32 0
  %452 = load i64*, i64** %451, align 8
  %453 = getelementptr inbounds i64, i64* %452, i64 0
  %454 = load i64, i64* %453, align 8
  %455 = load i64, i64* @MODE_SENSE, align 8
  %456 = icmp eq i64 %454, %455
  br i1 %456, label %457, label %462

457:                                              ; preds = %449
  %458 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %459 = load %struct.us_data*, %struct.us_data** %5, align 8
  %460 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %461 = call i32 @datafab_handle_mode_sense(%struct.us_data* %459, %struct.scsi_cmnd* %460, i32 1)
  store i32 %461, i32* %3, align 4
  br label %536

462:                                              ; preds = %449
  %463 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %464 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %463, i32 0, i32 0
  %465 = load i64*, i64** %464, align 8
  %466 = getelementptr inbounds i64, i64* %465, i64 0
  %467 = load i64, i64* %466, align 8
  %468 = load i64, i64* @MODE_SENSE_10, align 8
  %469 = icmp eq i64 %467, %468
  br i1 %469, label %470, label %475

470:                                              ; preds = %462
  %471 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  %472 = load %struct.us_data*, %struct.us_data** %5, align 8
  %473 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %474 = call i32 @datafab_handle_mode_sense(%struct.us_data* %472, %struct.scsi_cmnd* %473, i32 0)
  store i32 %474, i32* %3, align 4
  br label %536

475:                                              ; preds = %462
  %476 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %477 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %476, i32 0, i32 0
  %478 = load i64*, i64** %477, align 8
  %479 = getelementptr inbounds i64, i64* %478, i64 0
  %480 = load i64, i64* %479, align 8
  %481 = load i64, i64* @ALLOW_MEDIUM_REMOVAL, align 8
  %482 = icmp eq i64 %480, %481
  br i1 %482, label %483, label %485

483:                                              ; preds = %475
  %484 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %484, i32* %3, align 4
  br label %536

485:                                              ; preds = %475
  %486 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %487 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %486, i32 0, i32 0
  %488 = load i64*, i64** %487, align 8
  %489 = getelementptr inbounds i64, i64* %488, i64 0
  %490 = load i64, i64* %489, align 8
  %491 = load i64, i64* @START_STOP, align 8
  %492 = icmp eq i64 %490, %491
  br i1 %492, label %493, label %517

493:                                              ; preds = %485
  %494 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %495 = load %struct.us_data*, %struct.us_data** %5, align 8
  %496 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %497 = call i32 @datafab_id_device(%struct.us_data* %495, %struct.datafab_info* %496)
  store i32 %497, i32* %7, align 4
  %498 = load i32, i32* %7, align 4
  %499 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %500 = icmp eq i32 %498, %499
  br i1 %500, label %501, label %508

501:                                              ; preds = %493
  %502 = load i8, i8* @NO_SENSE, align 1
  %503 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %504 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %503, i32 0, i32 3
  store i8 %502, i8* %504, align 8
  %505 = load i32, i32* @SUCCESS, align 4
  %506 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %507 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %506, i32 0, i32 1
  store i32 %505, i32* %507, align 8
  br label %515

508:                                              ; preds = %493
  %509 = load i8, i8* @UNIT_ATTENTION, align 1
  %510 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %511 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %510, i32 0, i32 3
  store i8 %509, i8* %511, align 8
  %512 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %513 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %514 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %513, i32 0, i32 1
  store i32 %512, i32* %514, align 8
  br label %515

515:                                              ; preds = %508, %501
  %516 = load i32, i32* %7, align 4
  store i32 %516, i32* %3, align 4
  br label %536

517:                                              ; preds = %485
  %518 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %519 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %518, i32 0, i32 0
  %520 = load i64*, i64** %519, align 8
  %521 = getelementptr inbounds i64, i64* %520, i64 0
  %522 = load i64, i64* %521, align 8
  %523 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %524 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %523, i32 0, i32 0
  %525 = load i64*, i64** %524, align 8
  %526 = getelementptr inbounds i64, i64* %525, i64 0
  %527 = load i64, i64* %526, align 8
  %528 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i64 %522, i64 %527)
  %529 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %530 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %529, i32 0, i32 3
  store i8 5, i8* %530, align 8
  %531 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %532 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %531, i32 0, i32 4
  store i8 32, i8* %532, align 1
  %533 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %534 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %533, i32 0, i32 5
  store i8 0, i8* %534, align 2
  %535 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %535, i32* %3, align 4
  br label %536

536:                                              ; preds = %517, %515, %483, %470, %457, %422, %409, %330, %267, %188, %125, %114, %78, %76, %51, %27
  %537 = load i32, i32* %3, align 4
  ret i32 %537
}

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @US_DEBUGP(i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fill_inquiry_response(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @datafab_id_device(%struct.us_data*, %struct.datafab_info*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @usb_stor_set_xfer_buf(i8*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @datafab_read_data(%struct.us_data*, %struct.datafab_info*, i64, i64) #1

declare dso_local i32 @datafab_write_data(%struct.us_data*, %struct.datafab_info*, i64, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @datafab_handle_mode_sense(%struct.us_data*, %struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
