; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_usb.c_usb_stor_control_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_usb.c_usb_stor_control_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i64, i32, %struct.TYPE_6__*, i32, i32, i32 (%struct.TYPE_6__*, %struct.us_data*)*, i32 }
%struct.TYPE_6__ = type { i32, i64, i64*, i32 (%struct.TYPE_6__*)*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.Scsi_Host = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"*** thread sleeping.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"*** thread awakened.\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"-- exiting\0A\00", align 1
@US_FLIDX_TIMED_OUT = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"UNKNOWN data direction\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@US_FL_SCM_MULT_TARG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Bad target number (%d:%d)\0A\00", align 1
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"Bad LUN (%d:%d)\0A\00", align 1
@INQUIRY = common dso_local global i64 0, align 8
@US_FL_FIX_INQUIRY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Faking INQUIRY command\0A\00", align 1
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"scsi cmd done, result=0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"scsi command aborted\0A\00", align 1
@US_FLIDX_ABORTING = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @usb_stor_control_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_stor_control_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca [36 x i8], align 16
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.us_data*
  store %struct.us_data* %7, %struct.us_data** %3, align 8
  %8 = load %struct.us_data*, %struct.us_data** %3, align 8
  %9 = call %struct.Scsi_Host* @us_to_host(%struct.us_data* %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %4, align 8
  br label %10

10:                                               ; preds = %236, %1
  %11 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.us_data*, %struct.us_data** %3, align 8
  %13 = getelementptr inbounds %struct.us_data, %struct.us_data* %12, i32 0, i32 7
  %14 = call i64 @wait_for_completion_interruptible(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %244

17:                                               ; preds = %10
  %18 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.us_data*, %struct.us_data** %3, align 8
  %20 = getelementptr inbounds %struct.us_data, %struct.us_data* %19, i32 0, i32 2
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %23 = call i32 @scsi_lock(%struct.Scsi_Host* %22)
  %24 = load %struct.us_data*, %struct.us_data** %3, align 8
  %25 = getelementptr inbounds %struct.us_data, %struct.us_data* %24, i32 0, i32 3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp eq %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %17
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %30 = call i32 @scsi_unlock(%struct.Scsi_Host* %29)
  %31 = load %struct.us_data*, %struct.us_data** %3, align 8
  %32 = getelementptr inbounds %struct.us_data, %struct.us_data* %31, i32 0, i32 2
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %244

35:                                               ; preds = %17
  %36 = load i32, i32* @US_FLIDX_TIMED_OUT, align 4
  %37 = load %struct.us_data*, %struct.us_data** %3, align 8
  %38 = getelementptr inbounds %struct.us_data, %struct.us_data* %37, i32 0, i32 4
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32, i32* @DID_ABORT, align 4
  %43 = shl i32 %42, 16
  %44 = load %struct.us_data*, %struct.us_data** %3, align 8
  %45 = getelementptr inbounds %struct.us_data, %struct.us_data* %44, i32 0, i32 3
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 8
  br label %216

48:                                               ; preds = %35
  %49 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %50 = call i32 @scsi_unlock(%struct.Scsi_Host* %49)
  %51 = load %struct.us_data*, %struct.us_data** %3, align 8
  %52 = getelementptr inbounds %struct.us_data, %struct.us_data* %51, i32 0, i32 3
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DMA_BIDIRECTIONAL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* @DID_ERROR, align 4
  %61 = shl i32 %60, 16
  %62 = load %struct.us_data*, %struct.us_data** %3, align 8
  %63 = getelementptr inbounds %struct.us_data, %struct.us_data* %62, i32 0, i32 3
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 8
  br label %188

66:                                               ; preds = %48
  %67 = load %struct.us_data*, %struct.us_data** %3, align 8
  %68 = getelementptr inbounds %struct.us_data, %struct.us_data* %67, i32 0, i32 3
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %66
  %76 = load %struct.us_data*, %struct.us_data** %3, align 8
  %77 = getelementptr inbounds %struct.us_data, %struct.us_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @US_FL_SCM_MULT_TARG, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %104, label %82

82:                                               ; preds = %75
  %83 = load %struct.us_data*, %struct.us_data** %3, align 8
  %84 = getelementptr inbounds %struct.us_data, %struct.us_data* %83, i32 0, i32 3
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.us_data*, %struct.us_data** %3, align 8
  %91 = getelementptr inbounds %struct.us_data, %struct.us_data* %90, i32 0, i32 3
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %89, i64 %96)
  %98 = load i32, i32* @DID_BAD_TARGET, align 4
  %99 = shl i32 %98, 16
  %100 = load %struct.us_data*, %struct.us_data** %3, align 8
  %101 = getelementptr inbounds %struct.us_data, %struct.us_data* %100, i32 0, i32 3
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i32 %99, i32* %103, align 8
  br label %187

104:                                              ; preds = %75, %66
  %105 = load %struct.us_data*, %struct.us_data** %3, align 8
  %106 = getelementptr inbounds %struct.us_data, %struct.us_data* %105, i32 0, i32 3
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.us_data*, %struct.us_data** %3, align 8
  %113 = getelementptr inbounds %struct.us_data, %struct.us_data* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp sgt i64 %111, %114
  br i1 %115, label %116, label %138

116:                                              ; preds = %104
  %117 = load %struct.us_data*, %struct.us_data** %3, align 8
  %118 = getelementptr inbounds %struct.us_data, %struct.us_data* %117, i32 0, i32 3
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.us_data*, %struct.us_data** %3, align 8
  %125 = getelementptr inbounds %struct.us_data, %struct.us_data* %124, i32 0, i32 3
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i64 %123, i64 %130)
  %132 = load i32, i32* @DID_BAD_TARGET, align 4
  %133 = shl i32 %132, 16
  %134 = load %struct.us_data*, %struct.us_data** %3, align 8
  %135 = getelementptr inbounds %struct.us_data, %struct.us_data* %134, i32 0, i32 3
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  store i32 %133, i32* %137, align 8
  br label %186

138:                                              ; preds = %104
  %139 = load %struct.us_data*, %struct.us_data** %3, align 8
  %140 = getelementptr inbounds %struct.us_data, %struct.us_data* %139, i32 0, i32 3
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  %143 = load i64*, i64** %142, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @INQUIRY, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %171

148:                                              ; preds = %138
  %149 = load %struct.us_data*, %struct.us_data** %3, align 8
  %150 = getelementptr inbounds %struct.us_data, %struct.us_data* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @US_FL_FIX_INQUIRY, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %171

155:                                              ; preds = %148
  %156 = bitcast [36 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %156, i8 0, i64 36, i1 false)
  %157 = bitcast i8* %156 to <{ i8, i8, i8, i8, i8, [31 x i8] }>*
  %158 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [31 x i8] }>, <{ i8, i8, i8, i8, i8, [31 x i8] }>* %157, i32 0, i32 1
  store i8 -128, i8* %158, align 1
  %159 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [31 x i8] }>, <{ i8, i8, i8, i8, i8, [31 x i8] }>* %157, i32 0, i32 2
  store i8 2, i8* %159, align 2
  %160 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [31 x i8] }>, <{ i8, i8, i8, i8, i8, [31 x i8] }>* %157, i32 0, i32 3
  store i8 2, i8* %160, align 1
  %161 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [31 x i8] }>, <{ i8, i8, i8, i8, i8, [31 x i8] }>* %157, i32 0, i32 4
  store i8 31, i8* %161, align 4
  %162 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %163 = load %struct.us_data*, %struct.us_data** %3, align 8
  %164 = getelementptr inbounds [36 x i8], [36 x i8]* %5, i64 0, i64 0
  %165 = call i32 @fill_inquiry_response(%struct.us_data* %163, i8* %164, i32 36)
  %166 = load i32, i32* @SAM_STAT_GOOD, align 4
  %167 = load %struct.us_data*, %struct.us_data** %3, align 8
  %168 = getelementptr inbounds %struct.us_data, %struct.us_data* %167, i32 0, i32 3
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  store i32 %166, i32* %170, align 8
  br label %185

171:                                              ; preds = %148, %138
  %172 = load %struct.us_data*, %struct.us_data** %3, align 8
  %173 = getelementptr inbounds %struct.us_data, %struct.us_data* %172, i32 0, i32 3
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = call i32 @usb_stor_show_command(%struct.TYPE_6__* %174)
  %176 = call i32 @US_DEBUG(i32 %175)
  %177 = load %struct.us_data*, %struct.us_data** %3, align 8
  %178 = getelementptr inbounds %struct.us_data, %struct.us_data* %177, i32 0, i32 6
  %179 = load i32 (%struct.TYPE_6__*, %struct.us_data*)*, i32 (%struct.TYPE_6__*, %struct.us_data*)** %178, align 8
  %180 = load %struct.us_data*, %struct.us_data** %3, align 8
  %181 = getelementptr inbounds %struct.us_data, %struct.us_data* %180, i32 0, i32 3
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = load %struct.us_data*, %struct.us_data** %3, align 8
  %184 = call i32 %179(%struct.TYPE_6__* %182, %struct.us_data* %183)
  br label %185

185:                                              ; preds = %171, %155
  br label %186

186:                                              ; preds = %185, %116
  br label %187

187:                                              ; preds = %186, %82
  br label %188

188:                                              ; preds = %187, %58
  %189 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %190 = call i32 @scsi_lock(%struct.Scsi_Host* %189)
  %191 = load %struct.us_data*, %struct.us_data** %3, align 8
  %192 = getelementptr inbounds %struct.us_data, %struct.us_data* %191, i32 0, i32 3
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @DID_ABORT, align 4
  %197 = shl i32 %196, 16
  %198 = icmp ne i32 %195, %197
  br i1 %198, label %199, label %215

199:                                              ; preds = %188
  %200 = load %struct.us_data*, %struct.us_data** %3, align 8
  %201 = getelementptr inbounds %struct.us_data, %struct.us_data* %200, i32 0, i32 3
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %204)
  %206 = load %struct.us_data*, %struct.us_data** %3, align 8
  %207 = getelementptr inbounds %struct.us_data, %struct.us_data* %206, i32 0, i32 3
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 3
  %210 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %209, align 8
  %211 = load %struct.us_data*, %struct.us_data** %3, align 8
  %212 = getelementptr inbounds %struct.us_data, %struct.us_data* %211, i32 0, i32 3
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = call i32 %210(%struct.TYPE_6__* %213)
  br label %218

215:                                              ; preds = %188
  br label %216

216:                                              ; preds = %215, %41
  %217 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %218

218:                                              ; preds = %216, %199
  %219 = load i32, i32* @US_FLIDX_TIMED_OUT, align 4
  %220 = load %struct.us_data*, %struct.us_data** %3, align 8
  %221 = getelementptr inbounds %struct.us_data, %struct.us_data* %220, i32 0, i32 4
  %222 = call i64 @test_bit(i32 %219, i32* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %236

224:                                              ; preds = %218
  %225 = load %struct.us_data*, %struct.us_data** %3, align 8
  %226 = getelementptr inbounds %struct.us_data, %struct.us_data* %225, i32 0, i32 5
  %227 = call i32 @complete(i32* %226)
  %228 = load i32, i32* @US_FLIDX_ABORTING, align 4
  %229 = load %struct.us_data*, %struct.us_data** %3, align 8
  %230 = getelementptr inbounds %struct.us_data, %struct.us_data* %229, i32 0, i32 4
  %231 = call i32 @clear_bit(i32 %228, i32* %230)
  %232 = load i32, i32* @US_FLIDX_TIMED_OUT, align 4
  %233 = load %struct.us_data*, %struct.us_data** %3, align 8
  %234 = getelementptr inbounds %struct.us_data, %struct.us_data* %233, i32 0, i32 4
  %235 = call i32 @clear_bit(i32 %232, i32* %234)
  br label %236

236:                                              ; preds = %224, %218
  %237 = load %struct.us_data*, %struct.us_data** %3, align 8
  %238 = getelementptr inbounds %struct.us_data, %struct.us_data* %237, i32 0, i32 3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %238, align 8
  %239 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %240 = call i32 @scsi_unlock(%struct.Scsi_Host* %239)
  %241 = load %struct.us_data*, %struct.us_data** %3, align 8
  %242 = getelementptr inbounds %struct.us_data, %struct.us_data* %241, i32 0, i32 2
  %243 = call i32 @mutex_unlock(i32* %242)
  br label %10

244:                                              ; preds = %28, %16
  br label %245

245:                                              ; preds = %251, %244
  %246 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %247 = call i32 @set_current_state(i32 %246)
  %248 = call i64 (...) @kthread_should_stop()
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %245
  br label %253

251:                                              ; preds = %245
  %252 = call i32 (...) @schedule()
  br label %245

253:                                              ; preds = %250
  %254 = load i32, i32* @TASK_RUNNING, align 4
  %255 = call i32 @__set_current_state(i32 %254)
  ret i32 0
}

declare dso_local %struct.Scsi_Host* @us_to_host(%struct.us_data*) #1

declare dso_local i32 @US_DEBUGP(i8*, ...) #1

declare dso_local i64 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @scsi_lock(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_unlock(%struct.Scsi_Host*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fill_inquiry_response(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @US_DEBUG(i32) #1

declare dso_local i32 @usb_stor_show_command(%struct.TYPE_6__*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
