; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_jumpshot.c_jumpshot_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_jumpshot.c_jumpshot_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64*, i32 }
%struct.us_data = type { i8*, i64, i32 }
%struct.jumpshot_info = type { i32, i64, i8, i8, i8 }

@jumpshot_transport.inquiry_response = internal global [8 x i8] c"\00\80\00\01\1F\00\00\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"jumpshot_transport:  Gah! Can't allocate storage for jumpshot info struct!\0A\00", align 1
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@jumpshot_info_destructor = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"jumpshot_transport:  INQUIRY.  Returning bogus response.\0A\00", align 1
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@READ_CAPACITY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [72 x i8] c"jumpshot_transport:  READ_CAPACITY:  %ld sectors, %ld bytes per sector\0A\00", align 1
@MODE_SELECT_10 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"jumpshot_transport:  Gah! MODE_SELECT_10.\0A\00", align 1
@READ_10 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [61 x i8] c"jumpshot_transport:  READ_10: read block 0x%04lx  count %ld\0A\00", align 1
@READ_12 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [61 x i8] c"jumpshot_transport:  READ_12: read block 0x%04lx  count %ld\0A\00", align 1
@WRITE_10 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [63 x i8] c"jumpshot_transport:  WRITE_10: write block 0x%04lx  count %ld\0A\00", align 1
@WRITE_12 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [63 x i8] c"jumpshot_transport:  WRITE_12: write block 0x%04lx  count %ld\0A\00", align 1
@TEST_UNIT_READY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [39 x i8] c"jumpshot_transport:  TEST_UNIT_READY.\0A\00", align 1
@REQUEST_SENSE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [37 x i8] c"jumpshot_transport:  REQUEST_SENSE.\0A\00", align 1
@MODE_SENSE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [44 x i8] c"jumpshot_transport:  MODE_SENSE_6 detected\0A\00", align 1
@MODE_SENSE_10 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [45 x i8] c"jumpshot_transport:  MODE_SENSE_10 detected\0A\00", align 1
@ALLOW_MEDIUM_REMOVAL = common dso_local global i64 0, align 8
@START_STOP = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [34 x i8] c"jumpshot_transport:  START_STOP.\0A\00", align 1
@NO_SENSE = common dso_local global i8 0, align 1
@SUCCESS = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i8 0, align 1
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [54 x i8] c"jumpshot_transport:  Gah! Unknown command: %d (0x%x)\0A\00", align 1
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.us_data*)* @jumpshot_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jumpshot_transport(%struct.scsi_cmnd* %0, %struct.us_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca %struct.jumpshot_info*, align 8
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
  br i1 %17, label %34, label %18

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
  %28 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %29, i32* %3, align 4
  br label %538

30:                                               ; preds = %18
  %31 = load i32, i32* @jumpshot_info_destructor, align 4
  %32 = load %struct.us_data*, %struct.us_data** %5, align 8
  %33 = getelementptr inbounds %struct.us_data, %struct.us_data* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %2
  %35 = load %struct.us_data*, %struct.us_data** %5, align 8
  %36 = getelementptr inbounds %struct.us_data, %struct.us_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.jumpshot_info*
  store %struct.jumpshot_info* %38, %struct.jumpshot_info** %6, align 8
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @INQUIRY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @memcpy(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @jumpshot_transport.inquiry_response, i64 0, i64 0), i32 8)
  %50 = load %struct.us_data*, %struct.us_data** %5, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @fill_inquiry_response(%struct.us_data* %50, i8* %51, i32 36)
  %53 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %53, i32* %3, align 4
  br label %538

54:                                               ; preds = %34
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @READ_CAPACITY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %109

62:                                               ; preds = %54
  %63 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %64 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %63, i32 0, i32 0
  store i32 512, i32* %64, align 8
  %65 = load %struct.us_data*, %struct.us_data** %5, align 8
  %66 = call i32 @jumpshot_get_status(%struct.us_data* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %538

72:                                               ; preds = %62
  %73 = load %struct.us_data*, %struct.us_data** %5, align 8
  %74 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %75 = call i32 @jumpshot_id_device(%struct.us_data* %73, %struct.jumpshot_info* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %538

81:                                               ; preds = %72
  %82 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %83 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %86 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i64 %84, i32 %87)
  %89 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %90 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sub i64 %91, 1
  %93 = call i32 @cpu_to_be32(i64 %92)
  %94 = load i8*, i8** %10, align 8
  %95 = bitcast i8* %94 to i32*
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 %93, i32* %96, align 4
  %97 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %98 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = call i32 @cpu_to_be32(i64 %100)
  %102 = load i8*, i8** %10, align 8
  %103 = bitcast i8* %102 to i32*
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 %101, i32* %104, align 4
  %105 = load i8*, i8** %10, align 8
  %106 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %107 = call i32 @usb_stor_set_xfer_buf(i8* %105, i32 8, %struct.scsi_cmnd* %106)
  %108 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %108, i32* %3, align 4
  br label %538

109:                                              ; preds = %54
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %111 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @MODE_SELECT_10, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %119, i32* %3, align 4
  br label %538

120:                                              ; preds = %109
  %121 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %122 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @READ_10, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %183

128:                                              ; preds = %120
  %129 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %130 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 2
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = shl i32 %134, 24
  %136 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %137 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 3
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = shl i32 %141, 16
  %143 = or i32 %135, %142
  %144 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %145 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 4
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = shl i32 %149, 8
  %151 = or i32 %143, %150
  %152 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %153 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %152, i32 0, i32 0
  %154 = load i64*, i64** %153, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 5
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = or i32 %151, %157
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %8, align 8
  %160 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %161 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %160, i32 0, i32 0
  %162 = load i64*, i64** %161, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 7
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = shl i32 %165, 8
  %167 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %168 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %167, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 8
  %171 = load i64, i64* %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = or i32 %166, %172
  %174 = sext i32 %173 to i64
  store i64 %174, i64* %9, align 8
  %175 = load i64, i64* %8, align 8
  %176 = load i64, i64* %9, align 8
  %177 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i64 %175, i64 %176)
  %178 = load %struct.us_data*, %struct.us_data** %5, align 8
  %179 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %180 = load i64, i64* %8, align 8
  %181 = load i64, i64* %9, align 8
  %182 = call i32 @jumpshot_read_data(%struct.us_data* %178, %struct.jumpshot_info* %179, i64 %180, i64 %181)
  store i32 %182, i32* %3, align 4
  br label %538

183:                                              ; preds = %120
  %184 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %185 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %184, i32 0, i32 0
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @READ_12, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %262

191:                                              ; preds = %183
  %192 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %193 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %192, i32 0, i32 0
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 2
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  %198 = shl i32 %197, 24
  %199 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %200 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %199, i32 0, i32 0
  %201 = load i64*, i64** %200, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 3
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = shl i32 %204, 16
  %206 = or i32 %198, %205
  %207 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %208 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %207, i32 0, i32 0
  %209 = load i64*, i64** %208, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 4
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  %213 = shl i32 %212, 8
  %214 = or i32 %206, %213
  %215 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %216 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %215, i32 0, i32 0
  %217 = load i64*, i64** %216, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 5
  %219 = load i64, i64* %218, align 8
  %220 = trunc i64 %219 to i32
  %221 = or i32 %214, %220
  %222 = sext i32 %221 to i64
  store i64 %222, i64* %8, align 8
  %223 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %224 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %223, i32 0, i32 0
  %225 = load i64*, i64** %224, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 6
  %227 = load i64, i64* %226, align 8
  %228 = trunc i64 %227 to i32
  %229 = shl i32 %228, 24
  %230 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %231 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %230, i32 0, i32 0
  %232 = load i64*, i64** %231, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 7
  %234 = load i64, i64* %233, align 8
  %235 = trunc i64 %234 to i32
  %236 = shl i32 %235, 16
  %237 = or i32 %229, %236
  %238 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %239 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %238, i32 0, i32 0
  %240 = load i64*, i64** %239, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 8
  %242 = load i64, i64* %241, align 8
  %243 = trunc i64 %242 to i32
  %244 = shl i32 %243, 8
  %245 = or i32 %237, %244
  %246 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %247 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %246, i32 0, i32 0
  %248 = load i64*, i64** %247, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 9
  %250 = load i64, i64* %249, align 8
  %251 = trunc i64 %250 to i32
  %252 = or i32 %245, %251
  %253 = sext i32 %252 to i64
  store i64 %253, i64* %9, align 8
  %254 = load i64, i64* %8, align 8
  %255 = load i64, i64* %9, align 8
  %256 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i64 %254, i64 %255)
  %257 = load %struct.us_data*, %struct.us_data** %5, align 8
  %258 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %259 = load i64, i64* %8, align 8
  %260 = load i64, i64* %9, align 8
  %261 = call i32 @jumpshot_read_data(%struct.us_data* %257, %struct.jumpshot_info* %258, i64 %259, i64 %260)
  store i32 %261, i32* %3, align 4
  br label %538

262:                                              ; preds = %183
  %263 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %264 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %263, i32 0, i32 0
  %265 = load i64*, i64** %264, align 8
  %266 = getelementptr inbounds i64, i64* %265, i64 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @WRITE_10, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %325

270:                                              ; preds = %262
  %271 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %272 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %271, i32 0, i32 0
  %273 = load i64*, i64** %272, align 8
  %274 = getelementptr inbounds i64, i64* %273, i64 2
  %275 = load i64, i64* %274, align 8
  %276 = trunc i64 %275 to i32
  %277 = shl i32 %276, 24
  %278 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %279 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %278, i32 0, i32 0
  %280 = load i64*, i64** %279, align 8
  %281 = getelementptr inbounds i64, i64* %280, i64 3
  %282 = load i64, i64* %281, align 8
  %283 = trunc i64 %282 to i32
  %284 = shl i32 %283, 16
  %285 = or i32 %277, %284
  %286 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %287 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %286, i32 0, i32 0
  %288 = load i64*, i64** %287, align 8
  %289 = getelementptr inbounds i64, i64* %288, i64 4
  %290 = load i64, i64* %289, align 8
  %291 = trunc i64 %290 to i32
  %292 = shl i32 %291, 8
  %293 = or i32 %285, %292
  %294 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %295 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %294, i32 0, i32 0
  %296 = load i64*, i64** %295, align 8
  %297 = getelementptr inbounds i64, i64* %296, i64 5
  %298 = load i64, i64* %297, align 8
  %299 = trunc i64 %298 to i32
  %300 = or i32 %293, %299
  %301 = sext i32 %300 to i64
  store i64 %301, i64* %8, align 8
  %302 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %303 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %302, i32 0, i32 0
  %304 = load i64*, i64** %303, align 8
  %305 = getelementptr inbounds i64, i64* %304, i64 7
  %306 = load i64, i64* %305, align 8
  %307 = trunc i64 %306 to i32
  %308 = shl i32 %307, 8
  %309 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %310 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %309, i32 0, i32 0
  %311 = load i64*, i64** %310, align 8
  %312 = getelementptr inbounds i64, i64* %311, i64 8
  %313 = load i64, i64* %312, align 8
  %314 = trunc i64 %313 to i32
  %315 = or i32 %308, %314
  %316 = sext i32 %315 to i64
  store i64 %316, i64* %9, align 8
  %317 = load i64, i64* %8, align 8
  %318 = load i64, i64* %9, align 8
  %319 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i64 %317, i64 %318)
  %320 = load %struct.us_data*, %struct.us_data** %5, align 8
  %321 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %322 = load i64, i64* %8, align 8
  %323 = load i64, i64* %9, align 8
  %324 = call i32 @jumpshot_write_data(%struct.us_data* %320, %struct.jumpshot_info* %321, i64 %322, i64 %323)
  store i32 %324, i32* %3, align 4
  br label %538

325:                                              ; preds = %262
  %326 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %327 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %326, i32 0, i32 0
  %328 = load i64*, i64** %327, align 8
  %329 = getelementptr inbounds i64, i64* %328, i64 0
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @WRITE_12, align 8
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %333, label %404

333:                                              ; preds = %325
  %334 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %335 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %334, i32 0, i32 0
  %336 = load i64*, i64** %335, align 8
  %337 = getelementptr inbounds i64, i64* %336, i64 2
  %338 = load i64, i64* %337, align 8
  %339 = trunc i64 %338 to i32
  %340 = shl i32 %339, 24
  %341 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %342 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %341, i32 0, i32 0
  %343 = load i64*, i64** %342, align 8
  %344 = getelementptr inbounds i64, i64* %343, i64 3
  %345 = load i64, i64* %344, align 8
  %346 = trunc i64 %345 to i32
  %347 = shl i32 %346, 16
  %348 = or i32 %340, %347
  %349 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %350 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %349, i32 0, i32 0
  %351 = load i64*, i64** %350, align 8
  %352 = getelementptr inbounds i64, i64* %351, i64 4
  %353 = load i64, i64* %352, align 8
  %354 = trunc i64 %353 to i32
  %355 = shl i32 %354, 8
  %356 = or i32 %348, %355
  %357 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %358 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %357, i32 0, i32 0
  %359 = load i64*, i64** %358, align 8
  %360 = getelementptr inbounds i64, i64* %359, i64 5
  %361 = load i64, i64* %360, align 8
  %362 = trunc i64 %361 to i32
  %363 = or i32 %356, %362
  %364 = sext i32 %363 to i64
  store i64 %364, i64* %8, align 8
  %365 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %366 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %365, i32 0, i32 0
  %367 = load i64*, i64** %366, align 8
  %368 = getelementptr inbounds i64, i64* %367, i64 6
  %369 = load i64, i64* %368, align 8
  %370 = trunc i64 %369 to i32
  %371 = shl i32 %370, 24
  %372 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %373 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %372, i32 0, i32 0
  %374 = load i64*, i64** %373, align 8
  %375 = getelementptr inbounds i64, i64* %374, i64 7
  %376 = load i64, i64* %375, align 8
  %377 = trunc i64 %376 to i32
  %378 = shl i32 %377, 16
  %379 = or i32 %371, %378
  %380 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %381 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %380, i32 0, i32 0
  %382 = load i64*, i64** %381, align 8
  %383 = getelementptr inbounds i64, i64* %382, i64 8
  %384 = load i64, i64* %383, align 8
  %385 = trunc i64 %384 to i32
  %386 = shl i32 %385, 8
  %387 = or i32 %379, %386
  %388 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %389 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %388, i32 0, i32 0
  %390 = load i64*, i64** %389, align 8
  %391 = getelementptr inbounds i64, i64* %390, i64 9
  %392 = load i64, i64* %391, align 8
  %393 = trunc i64 %392 to i32
  %394 = or i32 %387, %393
  %395 = sext i32 %394 to i64
  store i64 %395, i64* %9, align 8
  %396 = load i64, i64* %8, align 8
  %397 = load i64, i64* %9, align 8
  %398 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i64 %396, i64 %397)
  %399 = load %struct.us_data*, %struct.us_data** %5, align 8
  %400 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %401 = load i64, i64* %8, align 8
  %402 = load i64, i64* %9, align 8
  %403 = call i32 @jumpshot_write_data(%struct.us_data* %399, %struct.jumpshot_info* %400, i64 %401, i64 %402)
  store i32 %403, i32* %3, align 4
  br label %538

404:                                              ; preds = %325
  %405 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %406 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %405, i32 0, i32 0
  %407 = load i64*, i64** %406, align 8
  %408 = getelementptr inbounds i64, i64* %407, i64 0
  %409 = load i64, i64* %408, align 8
  %410 = load i64, i64* @TEST_UNIT_READY, align 8
  %411 = icmp eq i64 %409, %410
  br i1 %411, label %412, label %416

412:                                              ; preds = %404
  %413 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %414 = load %struct.us_data*, %struct.us_data** %5, align 8
  %415 = call i32 @jumpshot_get_status(%struct.us_data* %414)
  store i32 %415, i32* %3, align 4
  br label %538

416:                                              ; preds = %404
  %417 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %418 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %417, i32 0, i32 0
  %419 = load i64*, i64** %418, align 8
  %420 = getelementptr inbounds i64, i64* %419, i64 0
  %421 = load i64, i64* %420, align 8
  %422 = load i64, i64* @REQUEST_SENSE, align 8
  %423 = icmp eq i64 %421, %422
  br i1 %423, label %424, label %451

424:                                              ; preds = %416
  %425 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %426 = load i8*, i8** %10, align 8
  %427 = call i32 @memset(i8* %426, i32 0, i32 18)
  %428 = load i8*, i8** %10, align 8
  %429 = getelementptr inbounds i8, i8* %428, i64 0
  store i8 -16, i8* %429, align 1
  %430 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %431 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %430, i32 0, i32 2
  %432 = load i8, i8* %431, align 8
  %433 = load i8*, i8** %10, align 8
  %434 = getelementptr inbounds i8, i8* %433, i64 2
  store i8 %432, i8* %434, align 1
  %435 = load i8*, i8** %10, align 8
  %436 = getelementptr inbounds i8, i8* %435, i64 7
  store i8 11, i8* %436, align 1
  %437 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %438 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %437, i32 0, i32 3
  %439 = load i8, i8* %438, align 1
  %440 = load i8*, i8** %10, align 8
  %441 = getelementptr inbounds i8, i8* %440, i64 12
  store i8 %439, i8* %441, align 1
  %442 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %443 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %442, i32 0, i32 4
  %444 = load i8, i8* %443, align 2
  %445 = load i8*, i8** %10, align 8
  %446 = getelementptr inbounds i8, i8* %445, i64 13
  store i8 %444, i8* %446, align 1
  %447 = load i8*, i8** %10, align 8
  %448 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %449 = call i32 @usb_stor_set_xfer_buf(i8* %447, i32 18, %struct.scsi_cmnd* %448)
  %450 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %450, i32* %3, align 4
  br label %538

451:                                              ; preds = %416
  %452 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %453 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %452, i32 0, i32 0
  %454 = load i64*, i64** %453, align 8
  %455 = getelementptr inbounds i64, i64* %454, i64 0
  %456 = load i64, i64* %455, align 8
  %457 = load i64, i64* @MODE_SENSE, align 8
  %458 = icmp eq i64 %456, %457
  br i1 %458, label %459, label %464

459:                                              ; preds = %451
  %460 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  %461 = load %struct.us_data*, %struct.us_data** %5, align 8
  %462 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %463 = call i32 @jumpshot_handle_mode_sense(%struct.us_data* %461, %struct.scsi_cmnd* %462, i32 1)
  store i32 %463, i32* %3, align 4
  br label %538

464:                                              ; preds = %451
  %465 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %466 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %465, i32 0, i32 0
  %467 = load i64*, i64** %466, align 8
  %468 = getelementptr inbounds i64, i64* %467, i64 0
  %469 = load i64, i64* %468, align 8
  %470 = load i64, i64* @MODE_SENSE_10, align 8
  %471 = icmp eq i64 %469, %470
  br i1 %471, label %472, label %477

472:                                              ; preds = %464
  %473 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  %474 = load %struct.us_data*, %struct.us_data** %5, align 8
  %475 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %476 = call i32 @jumpshot_handle_mode_sense(%struct.us_data* %474, %struct.scsi_cmnd* %475, i32 0)
  store i32 %476, i32* %3, align 4
  br label %538

477:                                              ; preds = %464
  %478 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %479 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %478, i32 0, i32 0
  %480 = load i64*, i64** %479, align 8
  %481 = getelementptr inbounds i64, i64* %480, i64 0
  %482 = load i64, i64* %481, align 8
  %483 = load i64, i64* @ALLOW_MEDIUM_REMOVAL, align 8
  %484 = icmp eq i64 %482, %483
  br i1 %484, label %485, label %487

485:                                              ; preds = %477
  %486 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %486, i32* %3, align 4
  br label %538

487:                                              ; preds = %477
  %488 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %489 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %488, i32 0, i32 0
  %490 = load i64*, i64** %489, align 8
  %491 = getelementptr inbounds i64, i64* %490, i64 0
  %492 = load i64, i64* %491, align 8
  %493 = load i64, i64* @START_STOP, align 8
  %494 = icmp eq i64 %492, %493
  br i1 %494, label %495, label %519

495:                                              ; preds = %487
  %496 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %497 = load %struct.us_data*, %struct.us_data** %5, align 8
  %498 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %499 = call i32 @jumpshot_id_device(%struct.us_data* %497, %struct.jumpshot_info* %498)
  store i32 %499, i32* %7, align 4
  %500 = load i32, i32* %7, align 4
  %501 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %502 = icmp eq i32 %500, %501
  br i1 %502, label %503, label %510

503:                                              ; preds = %495
  %504 = load i8, i8* @NO_SENSE, align 1
  %505 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %506 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %505, i32 0, i32 2
  store i8 %504, i8* %506, align 8
  %507 = load i32, i32* @SUCCESS, align 4
  %508 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %509 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %508, i32 0, i32 1
  store i32 %507, i32* %509, align 8
  br label %517

510:                                              ; preds = %495
  %511 = load i8, i8* @UNIT_ATTENTION, align 1
  %512 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %513 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %512, i32 0, i32 2
  store i8 %511, i8* %513, align 8
  %514 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %515 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %516 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %515, i32 0, i32 1
  store i32 %514, i32* %516, align 8
  br label %517

517:                                              ; preds = %510, %503
  %518 = load i32, i32* %7, align 4
  store i32 %518, i32* %3, align 4
  br label %538

519:                                              ; preds = %487
  %520 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %521 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %520, i32 0, i32 0
  %522 = load i64*, i64** %521, align 8
  %523 = getelementptr inbounds i64, i64* %522, i64 0
  %524 = load i64, i64* %523, align 8
  %525 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %526 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %525, i32 0, i32 0
  %527 = load i64*, i64** %526, align 8
  %528 = getelementptr inbounds i64, i64* %527, i64 0
  %529 = load i64, i64* %528, align 8
  %530 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0), i64 %524, i64 %529)
  %531 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %532 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %531, i32 0, i32 2
  store i8 5, i8* %532, align 8
  %533 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %534 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %533, i32 0, i32 3
  store i8 32, i8* %534, align 1
  %535 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %536 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %535, i32 0, i32 4
  store i8 0, i8* %536, align 2
  %537 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %537, i32* %3, align 4
  br label %538

538:                                              ; preds = %519, %517, %485, %472, %459, %424, %412, %333, %270, %191, %128, %117, %81, %79, %70, %46, %27
  %539 = load i32, i32* %3, align 4
  ret i32 %539
}

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @US_DEBUGP(i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fill_inquiry_response(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @jumpshot_get_status(%struct.us_data*) #1

declare dso_local i32 @jumpshot_id_device(%struct.us_data*, %struct.jumpshot_info*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @usb_stor_set_xfer_buf(i8*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @jumpshot_read_data(%struct.us_data*, %struct.jumpshot_info*, i64, i64) #1

declare dso_local i32 @jumpshot_write_data(%struct.us_data*, %struct.jumpshot_info*, i64, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @jumpshot_handle_mode_sense(%struct.us_data*, %struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
