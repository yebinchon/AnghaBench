; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_transport.c_usb_stor_invoke_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_transport.c_usb_stor_invoke_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i64, i32*, i32, i32*, i64 }
%struct.us_data = type { i32 (%struct.scsi_cmnd.0*, %struct.us_data*)*, i64, i32, i64, i32, i32 (%struct.us_data*)*, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd.0 = type opaque
%struct.scsi_eh_save = type { i32 }

@US_FLIDX_TIMED_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"-- command was aborted\0A\00", align 1
@DID_ABORT = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"-- transport indicates error, resetting\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_NO_SENSE = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i8* null, align 8
@SAM_STAT_GOOD = common dso_local global i8* null, align 8
@US_PR_CB = common dso_local global i64 0, align 8
@US_PR_DPCM_USB = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"-- CB transport device requiring auto-sense\0A\00", align 1
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"-- transport indicates command failure\0A\00", align 1
@ATA_16 = common dso_local global i32 0, align 4
@ATA_12 = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@US_FL_SANE_SENSE = common dso_local global i32 0, align 4
@US_FL_BAD_SENSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"-- SAT supported, increasing auto-sense\0A\00", align 1
@REQUEST_SENSE = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i32 0, align 4
@MODE_SENSE = common dso_local global i32 0, align 4
@LOG_SENSE = common dso_local global i32 0, align 4
@MODE_SENSE_10 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"-- unexpectedly short transfer\0A\00", align 1
@US_SENSE_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Issuing auto-REQUEST_SENSE\0A\00", align 1
@US_SC_RBC = common dso_local global i64 0, align 8
@US_SC_SCSI = common dso_local global i64 0, align 8
@US_SC_CYP_ATACB = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"-- auto-sense aborted\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"-- auto-sense failure, retry small sense\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"-- auto-sense failure\0A\00", align 1
@US_FL_SCM_MULT_TARG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"-- SANE_SENSE support enabled\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"-- Sense data truncated to %i from %i\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"-- Result from auto-sense is %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"-- code: 0x%x, key: 0x%x, ASC: 0x%x, ASCQ: 0x%x\0A\00", align 1
@HARDWARE_ERROR = common dso_local global i32 0, align 4
@US_FLIDX_RESETTING = common dso_local global i32 0, align 4
@US_FLIDX_ABORTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_stor_invoke_transport(%struct.scsi_cmnd* %0, %struct.us_data* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_eh_save, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store %struct.us_data* %1, %struct.us_data** %4, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %11 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %10, i32 0)
  %12 = load %struct.us_data*, %struct.us_data** %4, align 8
  %13 = getelementptr inbounds %struct.us_data, %struct.us_data* %12, i32 0, i32 0
  %14 = load i32 (%struct.scsi_cmnd.0*, %struct.us_data*)*, i32 (%struct.scsi_cmnd.0*, %struct.us_data*)** %13, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %16 = bitcast %struct.scsi_cmnd* %15 to %struct.scsi_cmnd.0*
  %17 = load %struct.us_data*, %struct.us_data** %4, align 8
  %18 = call i32 %14(%struct.scsi_cmnd.0* %16, %struct.us_data* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @US_FLIDX_TIMED_OUT, align 4
  %20 = load %struct.us_data*, %struct.us_data** %4, align 8
  %21 = getelementptr inbounds %struct.us_data, %struct.us_data* %20, i32 0, i32 4
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @DID_ABORT, align 4
  %27 = shl i32 %26, 16
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %466

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @DID_ERROR, align 4
  %37 = shl i32 %36, 16
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %39 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %466

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @USB_STOR_TRANSPORT_NO_SENSE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i8*, i8** @SAM_STAT_CHECK_CONDITION, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.us_data*, %struct.us_data** %4, align 8
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %51 = call i32 @last_sector_hacks(%struct.us_data* %49, %struct.scsi_cmnd* %50)
  br label %513

52:                                               ; preds = %40
  %53 = load i8*, i8** @SAM_STAT_GOOD, align 8
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  store i32 0, i32* %5, align 4
  %57 = load %struct.us_data*, %struct.us_data** %4, align 8
  %58 = getelementptr inbounds %struct.us_data, %struct.us_data* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @US_PR_CB, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %52
  %63 = load %struct.us_data*, %struct.us_data** %4, align 8
  %64 = getelementptr inbounds %struct.us_data, %struct.us_data* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @US_PR_DPCM_USB, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62, %52
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %70 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %68, %62
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %76
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %84 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ATA_16, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %98, label %90

90:                                               ; preds = %82
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %92 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ATA_12, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %125

98:                                               ; preds = %90, %82
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %125

102:                                              ; preds = %98
  %103 = load %struct.us_data*, %struct.us_data** %4, align 8
  %104 = getelementptr inbounds %struct.us_data, %struct.us_data* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @US_FL_SANE_SENSE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %125, label %109

109:                                              ; preds = %102
  %110 = load %struct.us_data*, %struct.us_data** %4, align 8
  %111 = getelementptr inbounds %struct.us_data, %struct.us_data* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @US_FL_BAD_SENSE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %109
  %117 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %118 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 32
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  br label %125

125:                                              ; preds = %116, %109, %102, %98, %90
  %126 = phi i1 [ false, %109 ], [ false, %102 ], [ false, %98 ], [ false, %90 ], [ %124, %116 ]
  %127 = zext i1 %126 to i32
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %132 = load i32, i32* @US_FL_SANE_SENSE, align 4
  %133 = load %struct.us_data*, %struct.us_data** %4, align 8
  %134 = getelementptr inbounds %struct.us_data, %struct.us_data* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %130, %125
  %138 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %139 = call i64 @scsi_get_resid(%struct.scsi_cmnd* %138)
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %183

141:                                              ; preds = %137
  %142 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %143 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @REQUEST_SENSE, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %183, label %149

149:                                              ; preds = %141
  %150 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %151 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @INQUIRY, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %183, label %157

157:                                              ; preds = %149
  %158 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %159 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @MODE_SENSE, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %183, label %165

165:                                              ; preds = %157
  %166 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %167 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @LOG_SENSE, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %183, label %173

173:                                              ; preds = %165
  %174 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %175 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @MODE_SENSE_10, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %183, label %181

181:                                              ; preds = %173
  %182 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %173, %165, %157, %149, %141, %137
  %184 = load i32, i32* %5, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %432

186:                                              ; preds = %183
  %187 = load i32, i32* @US_SENSE_SIZE, align 4
  store i32 %187, i32* %9, align 4
  %188 = load %struct.us_data*, %struct.us_data** %4, align 8
  %189 = getelementptr inbounds %struct.us_data, %struct.us_data* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @US_FL_SANE_SENSE, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  store i32 -1, i32* %9, align 4
  br label %195

195:                                              ; preds = %194, %186
  br label %196

196:                                              ; preds = %273, %195
  %197 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %198 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @scsi_eh_prep_cmnd(%struct.scsi_cmnd* %198, %struct.scsi_eh_save* %8, i32* null, i32 0, i32 %199)
  %201 = load %struct.us_data*, %struct.us_data** %4, align 8
  %202 = getelementptr inbounds %struct.us_data, %struct.us_data* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @US_SC_RBC, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %218, label %206

206:                                              ; preds = %196
  %207 = load %struct.us_data*, %struct.us_data** %4, align 8
  %208 = getelementptr inbounds %struct.us_data, %struct.us_data* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @US_SC_SCSI, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %218, label %212

212:                                              ; preds = %206
  %213 = load %struct.us_data*, %struct.us_data** %4, align 8
  %214 = getelementptr inbounds %struct.us_data, %struct.us_data* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @US_SC_CYP_ATACB, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %212, %206, %196
  %219 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %220 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %219, i32 0, i32 3
  store i32 6, i32* %220, align 8
  br label %224

221:                                              ; preds = %212
  %222 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %223 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %222, i32 0, i32 3
  store i32 12, i32* %223, align 8
  br label %224

224:                                              ; preds = %221, %218
  %225 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %226 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %225, i32 0)
  %227 = load %struct.us_data*, %struct.us_data** %4, align 8
  %228 = getelementptr inbounds %struct.us_data, %struct.us_data* %227, i32 0, i32 0
  %229 = load i32 (%struct.scsi_cmnd.0*, %struct.us_data*)*, i32 (%struct.scsi_cmnd.0*, %struct.us_data*)** %228, align 8
  %230 = load %struct.us_data*, %struct.us_data** %4, align 8
  %231 = getelementptr inbounds %struct.us_data, %struct.us_data* %230, i32 0, i32 7
  %232 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %231, align 8
  %233 = bitcast %struct.scsi_cmnd* %232 to %struct.scsi_cmnd.0*
  %234 = load %struct.us_data*, %struct.us_data** %4, align 8
  %235 = call i32 %229(%struct.scsi_cmnd.0* %233, %struct.us_data* %234)
  store i32 %235, i32* %7, align 4
  %236 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %237 = call i32 @scsi_eh_restore_cmnd(%struct.scsi_cmnd* %236, %struct.scsi_eh_save* %8)
  %238 = load i32, i32* @US_FLIDX_TIMED_OUT, align 4
  %239 = load %struct.us_data*, %struct.us_data** %4, align 8
  %240 = getelementptr inbounds %struct.us_data, %struct.us_data* %239, i32 0, i32 4
  %241 = call i64 @test_bit(i32 %238, i32* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %265

243:                                              ; preds = %224
  %244 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %245 = load i32, i32* @DID_ABORT, align 4
  %246 = shl i32 %245, 16
  %247 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %248 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 8
  %249 = load i32, i32* %9, align 4
  %250 = load i32, i32* @US_SENSE_SIZE, align 4
  %251 = icmp ne i32 %249, %250
  br i1 %251, label %252, label %264

252:                                              ; preds = %243
  %253 = load i32, i32* @US_FL_SANE_SENSE, align 4
  %254 = xor i32 %253, -1
  %255 = load %struct.us_data*, %struct.us_data** %4, align 8
  %256 = getelementptr inbounds %struct.us_data, %struct.us_data* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = and i32 %257, %254
  store i32 %258, i32* %256, align 8
  %259 = load i32, i32* @US_FL_BAD_SENSE, align 4
  %260 = load %struct.us_data*, %struct.us_data** %4, align 8
  %261 = getelementptr inbounds %struct.us_data, %struct.us_data* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 8
  br label %264

264:                                              ; preds = %252, %243
  br label %466

265:                                              ; preds = %224
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %287

269:                                              ; preds = %265
  %270 = load i32, i32* %9, align 4
  %271 = load i32, i32* @US_SENSE_SIZE, align 4
  %272 = icmp ne i32 %270, %271
  br i1 %272, label %273, label %287

273:                                              ; preds = %269
  %274 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %275 = load i32, i32* @US_SENSE_SIZE, align 4
  store i32 %275, i32* %9, align 4
  %276 = load i32, i32* @US_FL_SANE_SENSE, align 4
  %277 = xor i32 %276, -1
  %278 = load %struct.us_data*, %struct.us_data** %4, align 8
  %279 = getelementptr inbounds %struct.us_data, %struct.us_data* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = and i32 %280, %277
  store i32 %281, i32* %279, align 8
  %282 = load i32, i32* @US_FL_BAD_SENSE, align 4
  %283 = load %struct.us_data*, %struct.us_data** %4, align 8
  %284 = getelementptr inbounds %struct.us_data, %struct.us_data* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = or i32 %285, %282
  store i32 %286, i32* %284, align 8
  br label %196

287:                                              ; preds = %269, %265
  %288 = load i32, i32* %7, align 4
  %289 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %290 = icmp ne i32 %288, %289
  br i1 %290, label %291, label %305

291:                                              ; preds = %287
  %292 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %293 = load i32, i32* @DID_ERROR, align 4
  %294 = shl i32 %293, 16
  %295 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %296 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %295, i32 0, i32 0
  store i32 %294, i32* %296, align 8
  %297 = load %struct.us_data*, %struct.us_data** %4, align 8
  %298 = getelementptr inbounds %struct.us_data, %struct.us_data* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @US_FL_SCM_MULT_TARG, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %291
  br label %466

304:                                              ; preds = %291
  br label %513

305:                                              ; preds = %287
  %306 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %307 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %306, i32 0, i32 4
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 7
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @US_SENSE_SIZE, align 4
  %312 = sub nsw i32 %311, 8
  %313 = icmp sgt i32 %310, %312
  br i1 %313, label %314, label %357

314:                                              ; preds = %305
  %315 = load %struct.us_data*, %struct.us_data** %4, align 8
  %316 = getelementptr inbounds %struct.us_data, %struct.us_data* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @US_FL_SANE_SENSE, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %357, label %321

321:                                              ; preds = %314
  %322 = load %struct.us_data*, %struct.us_data** %4, align 8
  %323 = getelementptr inbounds %struct.us_data, %struct.us_data* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @US_FL_BAD_SENSE, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %357, label %328

328:                                              ; preds = %321
  %329 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %330 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %329, i32 0, i32 4
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 0
  %333 = load i32, i32* %332, align 4
  %334 = and i32 %333, 124
  %335 = icmp eq i32 %334, 112
  br i1 %335, label %336, label %357

336:                                              ; preds = %328
  %337 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %338 = load i32, i32* @US_FL_SANE_SENSE, align 4
  %339 = load %struct.us_data*, %struct.us_data** %4, align 8
  %340 = getelementptr inbounds %struct.us_data, %struct.us_data* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = or i32 %341, %338
  store i32 %342, i32* %340, align 8
  %343 = load i32, i32* @US_SENSE_SIZE, align 4
  %344 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %345 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %344, i32 0, i32 4
  %346 = load i32*, i32** %345, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 7
  %348 = load i32, i32* %347, align 4
  %349 = add nsw i32 %348, 8
  %350 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i32 %343, i32 %349)
  %351 = load i32, i32* @US_SENSE_SIZE, align 4
  %352 = sub nsw i32 %351, 8
  %353 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %354 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %353, i32 0, i32 4
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 7
  store i32 %352, i32* %356, align 4
  br label %357

357:                                              ; preds = %336, %328, %321, %314, %305
  %358 = load i32, i32* %7, align 4
  %359 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %358)
  %360 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %361 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %360, i32 0, i32 4
  %362 = load i32*, i32** %361, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 0
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %366 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %365, i32 0, i32 4
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 2
  %369 = load i32, i32* %368, align 4
  %370 = and i32 %369, 15
  %371 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %372 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %371, i32 0, i32 4
  %373 = load i32*, i32** %372, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 12
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %377 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %376, i32 0, i32 4
  %378 = load i32*, i32** %377, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 13
  %380 = load i32, i32* %379, align 4
  %381 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0), i32 %364, i32 %370, i32 %375, i32 %380)
  %382 = load i8*, i8** @SAM_STAT_CHECK_CONDITION, align 8
  %383 = ptrtoint i8* %382 to i32
  %384 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %385 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %384, i32 0, i32 0
  store i32 %383, i32* %385, align 8
  %386 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %387 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %386, i32 0, i32 4
  %388 = load i32*, i32** %387, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 2
  %390 = load i32, i32* %389, align 4
  %391 = and i32 %390, 175
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %431

393:                                              ; preds = %357
  %394 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %395 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %394, i32 0, i32 4
  %396 = load i32*, i32** %395, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 12
  %398 = load i32, i32* %397, align 4
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %431

400:                                              ; preds = %393
  %401 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %402 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %401, i32 0, i32 4
  %403 = load i32*, i32** %402, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 13
  %405 = load i32, i32* %404, align 4
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %431

407:                                              ; preds = %400
  %408 = load i32, i32* %6, align 4
  %409 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %410 = icmp eq i32 %408, %409
  br i1 %410, label %411, label %420

411:                                              ; preds = %407
  %412 = load i8*, i8** @SAM_STAT_GOOD, align 8
  %413 = ptrtoint i8* %412 to i32
  %414 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %415 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %414, i32 0, i32 0
  store i32 %413, i32* %415, align 8
  %416 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %417 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %416, i32 0, i32 4
  %418 = load i32*, i32** %417, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 0
  store i32 0, i32* %419, align 4
  br label %430

420:                                              ; preds = %407
  %421 = load i32, i32* @DID_ERROR, align 4
  %422 = shl i32 %421, 16
  %423 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %424 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %423, i32 0, i32 0
  store i32 %422, i32* %424, align 8
  %425 = load i32, i32* @HARDWARE_ERROR, align 4
  %426 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %427 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %426, i32 0, i32 4
  %428 = load i32*, i32** %427, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 2
  store i32 %425, i32* %429, align 4
  br label %430

430:                                              ; preds = %420, %411
  br label %431

431:                                              ; preds = %430, %400, %393, %357
  br label %432

432:                                              ; preds = %431, %183
  %433 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %434 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = sext i32 %435 to i64
  %437 = inttoptr i64 %436 to i8*
  %438 = load i8*, i8** @SAM_STAT_GOOD, align 8
  %439 = icmp eq i8* %437, %438
  br i1 %439, label %447, label %440

440:                                              ; preds = %432
  %441 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %442 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %441, i32 0, i32 4
  %443 = load i32*, i32** %442, align 8
  %444 = getelementptr inbounds i32, i32* %443, i64 2
  %445 = load i32, i32* %444, align 4
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %462

447:                                              ; preds = %440, %432
  %448 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %449 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %448)
  %450 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %451 = call i64 @scsi_get_resid(%struct.scsi_cmnd* %450)
  %452 = sub nsw i64 %449, %451
  %453 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %454 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %453, i32 0, i32 5
  %455 = load i64, i64* %454, align 8
  %456 = icmp slt i64 %452, %455
  br i1 %456, label %457, label %462

457:                                              ; preds = %447
  %458 = load i32, i32* @DID_ERROR, align 4
  %459 = shl i32 %458, 16
  %460 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %461 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %460, i32 0, i32 0
  store i32 %459, i32* %461, align 8
  br label %462

462:                                              ; preds = %457, %447, %440
  %463 = load %struct.us_data*, %struct.us_data** %4, align 8
  %464 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %465 = call i32 @last_sector_hacks(%struct.us_data* %463, %struct.scsi_cmnd* %464)
  br label %513

466:                                              ; preds = %303, %264, %34, %24
  %467 = load %struct.us_data*, %struct.us_data** %4, align 8
  %468 = call i32 @us_to_host(%struct.us_data* %467)
  %469 = call i32 @scsi_lock(i32 %468)
  %470 = load i32, i32* @US_FLIDX_RESETTING, align 4
  %471 = load %struct.us_data*, %struct.us_data** %4, align 8
  %472 = getelementptr inbounds %struct.us_data, %struct.us_data* %471, i32 0, i32 4
  %473 = call i32 @set_bit(i32 %470, i32* %472)
  %474 = load i32, i32* @US_FLIDX_ABORTING, align 4
  %475 = load %struct.us_data*, %struct.us_data** %4, align 8
  %476 = getelementptr inbounds %struct.us_data, %struct.us_data* %475, i32 0, i32 4
  %477 = call i32 @clear_bit(i32 %474, i32* %476)
  %478 = load %struct.us_data*, %struct.us_data** %4, align 8
  %479 = call i32 @us_to_host(%struct.us_data* %478)
  %480 = call i32 @scsi_unlock(i32 %479)
  %481 = load %struct.us_data*, %struct.us_data** %4, align 8
  %482 = getelementptr inbounds %struct.us_data, %struct.us_data* %481, i32 0, i32 6
  %483 = call i32 @mutex_unlock(i32* %482)
  %484 = load %struct.us_data*, %struct.us_data** %4, align 8
  %485 = call i32 @usb_stor_port_reset(%struct.us_data* %484)
  store i32 %485, i32* %6, align 4
  %486 = load %struct.us_data*, %struct.us_data** %4, align 8
  %487 = getelementptr inbounds %struct.us_data, %struct.us_data* %486, i32 0, i32 6
  %488 = call i32 @mutex_lock(i32* %487)
  %489 = load i32, i32* %6, align 4
  %490 = icmp slt i32 %489, 0
  br i1 %490, label %491, label %505

491:                                              ; preds = %466
  %492 = load %struct.us_data*, %struct.us_data** %4, align 8
  %493 = call i32 @us_to_host(%struct.us_data* %492)
  %494 = call i32 @scsi_lock(i32 %493)
  %495 = load %struct.us_data*, %struct.us_data** %4, align 8
  %496 = call i32 @usb_stor_report_device_reset(%struct.us_data* %495)
  %497 = load %struct.us_data*, %struct.us_data** %4, align 8
  %498 = call i32 @us_to_host(%struct.us_data* %497)
  %499 = call i32 @scsi_unlock(i32 %498)
  %500 = load %struct.us_data*, %struct.us_data** %4, align 8
  %501 = getelementptr inbounds %struct.us_data, %struct.us_data* %500, i32 0, i32 5
  %502 = load i32 (%struct.us_data*)*, i32 (%struct.us_data*)** %501, align 8
  %503 = load %struct.us_data*, %struct.us_data** %4, align 8
  %504 = call i32 %502(%struct.us_data* %503)
  br label %505

505:                                              ; preds = %491, %466
  %506 = load i32, i32* @US_FLIDX_RESETTING, align 4
  %507 = load %struct.us_data*, %struct.us_data** %4, align 8
  %508 = getelementptr inbounds %struct.us_data, %struct.us_data* %507, i32 0, i32 4
  %509 = call i32 @clear_bit(i32 %506, i32* %508)
  %510 = load %struct.us_data*, %struct.us_data** %4, align 8
  %511 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %512 = call i32 @last_sector_hacks(%struct.us_data* %510, %struct.scsi_cmnd* %511)
  br label %513

513:                                              ; preds = %505, %462, %304, %44
  ret void
}

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @US_DEBUGP(i8*, ...) #1

declare dso_local i32 @last_sector_hacks(%struct.us_data*, %struct.scsi_cmnd*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @scsi_get_resid(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_eh_prep_cmnd(%struct.scsi_cmnd*, %struct.scsi_eh_save*, i32*, i32, i32) #1

declare dso_local i32 @scsi_eh_restore_cmnd(%struct.scsi_cmnd*, %struct.scsi_eh_save*) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_lock(i32) #1

declare dso_local i32 @us_to_host(%struct.us_data*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @scsi_unlock(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_stor_port_reset(%struct.us_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_stor_report_device_reset(%struct.us_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
