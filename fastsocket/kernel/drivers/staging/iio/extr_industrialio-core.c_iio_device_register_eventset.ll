; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-core.c_iio_device_register_eventset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-core.c_iio_device_register_eventset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_10__, i32 }
%struct.TYPE_9__ = type { i32, i64, i64, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_10__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@iio_event_idr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"event_line%d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not get chrdev interface\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"event_line%d_sources\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to register sysfs for event attrs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @iio_device_register_eventset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_device_register_eventset(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %290

12:                                               ; preds = %1
  %13 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %14 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kzalloc(i32 %18, i32 %19)
  %21 = bitcast i8* %20 to %struct.TYPE_9__*
  %22 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %23 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %22, i32 0, i32 1
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %23, align 8
  %24 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = icmp eq %struct.TYPE_9__* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %12
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %288

31:                                               ; preds = %12
  %32 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = mul i64 8, %35
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kzalloc(i32 %37, i32 %38)
  %40 = bitcast i8* %39 to %struct.TYPE_9__*
  %41 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 2
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %42, align 8
  %43 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 2
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = icmp eq %struct.TYPE_9__* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %31
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %283

50:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %136, %50
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %139

57:                                               ; preds = %51
  %58 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %62 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  store i32 %60, i32* %67, align 8
  %68 = call i32 @iio_get_new_idr_val(i32* @iio_event_idr)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  br label %253

72:                                               ; preds = %57
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %75 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  store i32 %73, i32* %80, align 8
  br label %81

81:                                               ; preds = %72
  %82 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %83 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %82, i32 0, i32 1
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %91 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %90, i32 0, i32 1
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @snprintf(i64 %89, i32 20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %100 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i64 %103
  %105 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %106 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %115 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %118 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %117, i32 0, i32 4
  %119 = call i32 @iio_setup_ev_int(%struct.TYPE_9__* %104, i8* %113, i32 %116, %struct.TYPE_10__* %118)
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %81
  %123 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %124 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %123, i32 0, i32 4
  %125 = call i32 @dev_err(%struct.TYPE_10__* %124, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %126 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %127 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %126, i32 0, i32 1
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @iio_free_idr_val(i32* @iio_event_idr, i32 %133)
  br label %253

135:                                              ; preds = %81
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %51

139:                                              ; preds = %51
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %190, %139
  %141 = load i32, i32* %5, align 4
  %142 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %143 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %193

146:                                              ; preds = %140
  %147 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %148 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %147, i32 0, i32 1
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @snprintf(i64 %154, i32 20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  %157 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %158 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %157, i32 0, i32 1
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = inttoptr i64 %164 to i8*
  %166 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %167 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %166, i32 0, i32 3
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  store i8* %165, i8** %172, align 8
  %173 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %174 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %177 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %176, i32 0, i32 3
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i64 %180
  %182 = call i32 @sysfs_create_group(i32* %175, %struct.TYPE_8__* %181)
  store i32 %182, i32* %4, align 4
  %183 = load i32, i32* %4, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %146
  %186 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %187 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %186, i32 0, i32 4
  %188 = call i32 @dev_err(%struct.TYPE_10__* %187, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %229

189:                                              ; preds = %146
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %5, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %5, align 4
  br label %140

193:                                              ; preds = %140
  store i32 0, i32* %5, align 4
  br label %194

194:                                              ; preds = %208, %193
  %195 = load i32, i32* %5, align 4
  %196 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %197 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %211

200:                                              ; preds = %194
  %201 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %202 = load i32, i32* %5, align 4
  %203 = call i32 @__iio_add_event_config_attrs(%struct.iio_dev* %201, i32 %202)
  store i32 %203, i32* %4, align 4
  %204 = load i32, i32* %4, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  br label %212

207:                                              ; preds = %200
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %5, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %5, align 4
  br label %194

211:                                              ; preds = %194
  store i32 0, i32* %2, align 4
  br label %290

212:                                              ; preds = %206
  store i32 0, i32* %6, align 4
  br label %213

213:                                              ; preds = %221, %212
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* %5, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %224

217:                                              ; preds = %213
  %218 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %219 = load i32, i32* %5, align 4
  %220 = call i32 @__iio_remove_event_config_attrs(%struct.iio_dev* %218, i32 %219)
  br label %221

221:                                              ; preds = %217
  %222 = load i32, i32* %6, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %6, align 4
  br label %213

224:                                              ; preds = %213
  %225 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %226 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = sub nsw i32 %227, 1
  store i32 %228, i32* %5, align 4
  br label %229

229:                                              ; preds = %224, %185
  store i32 0, i32* %6, align 4
  br label %230

230:                                              ; preds = %245, %229
  %231 = load i32, i32* %6, align 4
  %232 = load i32, i32* %5, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %248

234:                                              ; preds = %230
  %235 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %236 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %239 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %238, i32 0, i32 3
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %239, align 8
  %241 = load i32, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i64 %242
  %244 = call i32 @sysfs_remove_group(i32* %237, %struct.TYPE_8__* %243)
  br label %245

245:                                              ; preds = %234
  %246 = load i32, i32* %6, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %6, align 4
  br label %230

248:                                              ; preds = %230
  %249 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %250 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = sub nsw i32 %251, 1
  store i32 %252, i32* %5, align 4
  br label %253

253:                                              ; preds = %248, %122, %71
  store i32 0, i32* %6, align 4
  br label %254

254:                                              ; preds = %275, %253
  %255 = load i32, i32* %6, align 4
  %256 = load i32, i32* %5, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %278

258:                                              ; preds = %254
  %259 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %260 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %259, i32 0, i32 1
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %260, align 8
  %262 = load i32, i32* %5, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @iio_free_idr_val(i32* @iio_event_idr, i32 %266)
  %268 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %269 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %268, i32 0, i32 1
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %269, align 8
  %271 = load i32, i32* %6, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i64 %272
  %274 = call i32 @iio_free_ev_int(%struct.TYPE_9__* %273)
  br label %275

275:                                              ; preds = %258
  %276 = load i32, i32* %6, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %6, align 4
  br label %254

278:                                              ; preds = %254
  %279 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %280 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %279, i32 0, i32 2
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %280, align 8
  %282 = call i32 @kfree(%struct.TYPE_9__* %281)
  br label %283

283:                                              ; preds = %278, %47
  %284 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %285 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %284, i32 0, i32 1
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %285, align 8
  %287 = call i32 @kfree(%struct.TYPE_9__* %286)
  br label %288

288:                                              ; preds = %283, %28
  %289 = load i32, i32* %4, align 4
  store i32 %289, i32* %2, align 4
  br label %290

290:                                              ; preds = %288, %211, %11
  %291 = load i32, i32* %2, align 4
  ret i32 %291
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @iio_get_new_idr_val(i32*) #1

declare dso_local i32 @snprintf(i64, i32, i8*, i32) #1

declare dso_local i32 @iio_setup_ev_int(%struct.TYPE_9__*, i8*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @iio_free_idr_val(i32*, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @__iio_add_event_config_attrs(%struct.iio_dev*, i32) #1

declare dso_local i32 @__iio_remove_event_config_attrs(%struct.iio_dev*, i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @iio_free_ev_int(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
