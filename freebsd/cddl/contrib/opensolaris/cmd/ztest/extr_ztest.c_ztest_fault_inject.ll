; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_fault_inject.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_fault_inject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_21__** }
%struct.TYPE_21__ = type { i64, i32, i32, i8*, i8*, i64, %struct.TYPE_22__*, %struct.TYPE_18__* }
%struct.TYPE_22__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }

@ztest_shared = common dso_local global %struct.TYPE_20__* null, align 8
@ztest_spa = common dso_local global %struct.TYPE_23__* null, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@SPA_MAXBLOCKSHIFT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@ztest_vdev_lock = common dso_local global i32 0, align 4
@ztest_device_removal_active = common dso_local global i64 0, align 8
@ztest_opts = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@ztest_name_lock = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@SCL_STATE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@ztest_dev_template = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"injecting fault to vdev %llu; maxfaults=%d\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@ZFS_OFFLINE_TEMPORARY = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@O_RDWR = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@VDEV_LABEL_START_SIZE = common dso_local global i32 0, align 4
@VDEV_LABEL_END_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"can't inject bad word at 0x%llx in %s\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"injected bad word into %s, offset 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_fault_inject(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_21__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_22__*, align 8
  %26 = alloca %struct.TYPE_24__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** @ztest_shared, align 8
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %5, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** @ztest_spa, align 8
  store %struct.TYPE_23__* %30, %struct.TYPE_23__** %6, align 8
  store i32 -287388962, i32* %10, align 4
  %31 = load i32, i32* @MAXPATHLEN, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %13, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %14, align 8
  %35 = load i32, i32* @MAXPATHLEN, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %15, align 8
  %38 = load i32, i32* @SPA_MAXBLOCKSHIFT, align 4
  %39 = add nsw i32 %38, 2
  store i32 %39, i32* %17, align 4
  store i32 1000, i32* %18, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %21, align 8
  store i32 0, i32* %22, align 4
  %40 = load i8*, i8** @B_FALSE, align 8
  store i8* %40, i8** %23, align 8
  %41 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %42 = load i64, i64* @ztest_device_removal_active, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  store i32 1, i32* %24, align 4
  br label %365

46:                                               ; preds = %2
  %47 = call i32 (...) @MAXFAULTS()
  store i32 %47, i32* %19, align 4
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @MAX(i32 %50, i32 1)
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ztest_opts, i32 0, i32 0), align 4
  %53 = mul nsw i32 %51, %52
  store i32 %53, i32* %9, align 4
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %20, align 4
  %57 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  %58 = load i32, i32* %9, align 4
  %59 = icmp sge i32 %58, 1
  %60 = zext i1 %59 to i32
  %61 = call i32 @ASSERT(i32 %60)
  %62 = load i32, i32* @RW_READER, align 4
  %63 = call i32 @rw_enter(i32* @ztest_name_lock, i32 %62)
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %65 = load i32, i32* @SCL_STATE, align 4
  %66 = load i32, i32* @FTAG, align 4
  %67 = load i32, i32* @RW_READER, align 4
  %68 = call i32 @spa_config_enter(%struct.TYPE_23__* %64, i32 %65, i32 %66, i32 %67)
  %69 = call i64 @ztest_random(i64 2)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %180

71:                                               ; preds = %46
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %73 = load i8*, i8** @B_TRUE, align 8
  %74 = call i32 @ztest_random_vdev_top(%struct.TYPE_23__* %72, i8* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = call i64 @ztest_random(i64 %76)
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 %77, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %12, align 4
  %84 = trunc i64 %32 to i32
  %85 = load i8*, i8** @ztest_dev_template, align 8
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ztest_opts, i32 0, i32 3), align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ztest_opts, i32 0, i32 2), align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %9, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %90, %93
  %95 = call i32 @snprintf(i8* %34, i32 %84, i8* %85, i32 %86, i32 %87, i32 %94)
  %96 = trunc i64 %36 to i32
  %97 = load i8*, i8** @ztest_dev_template, align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ztest_opts, i32 0, i32 3), align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ztest_opts, i32 0, i32 2), align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %9, align 4
  %102 = mul nsw i32 %100, %101
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %102, %103
  %105 = call i32 @snprintf(i8* %37, i32 %96, i8* %97, i32 %98, i32 %99, i32 %104)
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call %struct.TYPE_21__* @vdev_lookup_by_path(i32 %108, i8* %34)
  store %struct.TYPE_21__* %109, %struct.TYPE_21__** %21, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %111 = icmp ne %struct.TYPE_21__* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %71
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 7
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i8*, i8** @B_TRUE, align 8
  store i8* %120, i8** %23, align 8
  br label %121

121:                                              ; preds = %119, %112, %71
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %123 = icmp ne %struct.TYPE_21__* %122, null
  br i1 %123, label %124, label %179

124:                                              ; preds = %121
  %125 = load i32, i32* %19, align 4
  %126 = icmp ne i32 %125, 1
  br i1 %126, label %127, label %179

127:                                              ; preds = %124
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 7
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %129, align 8
  %131 = call i32 @vdev_resilver_needed(%struct.TYPE_18__* %130, i32* null, i32* null)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %179

138:                                              ; preds = %133, %127
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 6
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %140, align 8
  store %struct.TYPE_22__* %141, %struct.TYPE_22__** %25, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* %19, align 4
  %146 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %144, i32 %145)
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %148 = icmp ne %struct.TYPE_22__* %147, null
  br i1 %148, label %149, label %163

149:                                              ; preds = %138
  %150 = call i64 @ztest_random(i64 3)
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %149
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @close(i32 %157)
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 0
  store i32 -1, i32* %162, align 4
  br label %175

163:                                              ; preds = %149, %138
  %164 = call i64 @ztest_random(i64 2)
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load i8*, i8** @B_TRUE, align 8
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 4
  store i8* %167, i8** %169, align 8
  br label %174

170:                                              ; preds = %163
  %171 = load i8*, i8** @B_TRUE, align 8
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 3
  store i8* %171, i8** %173, align 8
  br label %174

174:                                              ; preds = %170, %166
  br label %175

175:                                              ; preds = %174, %152
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %22, align 4
  br label %179

179:                                              ; preds = %175, %133, %124, %121
  br label %215

180:                                              ; preds = %46
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 0
  store %struct.TYPE_24__* %182, %struct.TYPE_24__** %26, align 8
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %180
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %189 = load i32, i32* @SCL_STATE, align 4
  %190 = load i32, i32* @FTAG, align 4
  %191 = call i32 @spa_config_exit(%struct.TYPE_23__* %188, i32 %189, i32 %190)
  %192 = call i32 @rw_exit(i32* @ztest_name_lock)
  store i32 1, i32* %24, align 4
  br label %365

193:                                              ; preds = %180
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %195, align 8
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = call i64 @ztest_random(i64 %199)
  %201 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %196, i64 %200
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %201, align 8
  store %struct.TYPE_21__* %202, %struct.TYPE_21__** %21, align 8
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  store i32 %205, i32* %22, align 4
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @strcpy(i8* %34, i32 %208)
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @strcpy(i8* %37, i32 %212)
  store i32 0, i32* %12, align 4
  store i32 1, i32* %9, align 4
  %214 = load i32, i32* @INT_MAX, align 4
  store i32 %214, i32* %19, align 4
  br label %215

215:                                              ; preds = %193, %179
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %217 = load i32, i32* @SCL_STATE, align 4
  %218 = load i32, i32* @FTAG, align 4
  %219 = call i32 @spa_config_exit(%struct.TYPE_23__* %216, i32 %217, i32 %218)
  %220 = call i32 @rw_exit(i32* @ztest_name_lock)
  %221 = load i32, i32* %19, align 4
  %222 = icmp sge i32 %221, 2
  br i1 %222, label %226, label %223

223:                                              ; preds = %215
  %224 = load i8*, i8** %23, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %266

226:                                              ; preds = %223, %215
  %227 = load i32, i32* %22, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %266

229:                                              ; preds = %226
  %230 = call i64 @ztest_random(i64 10)
  %231 = icmp ult i64 %230, 6
  br i1 %231, label %232, label %259

232:                                              ; preds = %229
  %233 = call i64 @ztest_random(i64 2)
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = load i32, i32* @ZFS_OFFLINE_TEMPORARY, align 4
  br label %238

237:                                              ; preds = %232
  br label %238

238:                                              ; preds = %237, %235
  %239 = phi i32 [ %236, %235 ], [ 0, %237 ]
  store i32 %239, i32* %27, align 4
  %240 = load i8*, i8** %23, align 8
  %241 = icmp ne i8* %240, null
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = load i32, i32* @RW_WRITER, align 4
  %244 = call i32 @rw_enter(i32* @ztest_name_lock, i32 %243)
  br label %245

245:                                              ; preds = %242, %238
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %247 = load i32, i32* %22, align 4
  %248 = load i32, i32* %27, align 4
  %249 = call i64 @vdev_offline(%struct.TYPE_23__* %246, i32 %247, i32 %248)
  %250 = load i64, i64* @EBUSY, align 8
  %251 = icmp ne i64 %249, %250
  %252 = zext i1 %251 to i32
  %253 = call i32 @VERIFY(i32 %252)
  %254 = load i8*, i8** %23, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %256, label %258

256:                                              ; preds = %245
  %257 = call i32 @rw_exit(i32* @ztest_name_lock)
  br label %258

258:                                              ; preds = %256, %245
  br label %265

259:                                              ; preds = %229
  %260 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %262 = load i32, i32* %22, align 4
  %263 = call i32 @vdev_online(%struct.TYPE_23__* %261, i32 %262, i32 0, i32* null)
  %264 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %265

265:                                              ; preds = %259, %258
  br label %266

266:                                              ; preds = %265, %226, %223
  %267 = load i32, i32* %19, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %266
  store i32 1, i32* %24, align 4
  br label %365

270:                                              ; preds = %266
  %271 = load i32, i32* @O_RDWR, align 4
  %272 = call i32 @open(i8* %37, i32 %271)
  store i32 %272, i32* %7, align 4
  %273 = load i32, i32* %7, align 4
  %274 = icmp eq i32 %273, -1
  br i1 %274, label %275, label %276

275:                                              ; preds = %270
  store i32 1, i32* %24, align 4
  br label %365

276:                                              ; preds = %270
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* @SEEK_END, align 4
  %279 = call i64 @lseek(i32 %277, i32 0, i32 %278)
  store i64 %279, i64* %16, align 8
  br label %280

280:                                              ; preds = %361, %333, %317, %276
  %281 = load i32, i32* %18, align 4
  %282 = add nsw i32 %281, -1
  store i32 %282, i32* %18, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %362

284:                                              ; preds = %280
  %285 = load i64, i64* %16, align 8
  %286 = load i32, i32* %9, align 4
  %287 = load i32, i32* %17, align 4
  %288 = shl i32 %286, %287
  %289 = sext i32 %288 to i64
  %290 = udiv i64 %285, %289
  %291 = call i64 @ztest_random(i64 %290)
  %292 = load i32, i32* %9, align 4
  %293 = load i32, i32* %17, align 4
  %294 = shl i32 %292, %293
  %295 = sext i32 %294 to i64
  %296 = mul i64 %291, %295
  %297 = load i32, i32* %12, align 4
  %298 = load i32, i32* %17, align 4
  %299 = shl i32 %297, %298
  %300 = sext i32 %299 to i64
  %301 = add i64 %296, %300
  %302 = load i32, i32* %17, align 4
  %303 = sub nsw i32 %302, 1
  %304 = zext i32 %303 to i64
  %305 = shl i64 1, %304
  %306 = call i64 @ztest_random(i64 %305)
  %307 = and i64 %306, -8
  %308 = add i64 %301, %307
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %8, align 4
  %310 = load i32, i32* %12, align 4
  %311 = and i32 %310, 1
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %284
  %314 = load i32, i32* %8, align 4
  %315 = load i32, i32* @VDEV_LABEL_START_SIZE, align 4
  %316 = icmp slt i32 %314, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %313
  br label %280

318:                                              ; preds = %313, %284
  %319 = load i64, i64* %16, align 8
  %320 = call i32 @P2ALIGN(i64 %319, i32 4)
  store i32 %320, i32* %28, align 4
  %321 = load i32, i32* %12, align 4
  %322 = and i32 %321, 1
  %323 = icmp eq i32 %322, 1
  br i1 %323, label %324, label %334

324:                                              ; preds = %318
  %325 = load i32, i32* %8, align 4
  %326 = sext i32 %325 to i64
  %327 = add i64 %326, 4
  %328 = load i32, i32* %28, align 4
  %329 = load i32, i32* @VDEV_LABEL_END_SIZE, align 4
  %330 = sub nsw i32 %328, %329
  %331 = sext i32 %330 to i64
  %332 = icmp ugt i64 %327, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %324
  br label %280

334:                                              ; preds = %324, %318
  %335 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %336 = load i32, i32* %20, align 4
  %337 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = icmp ne i32 %336, %339
  br i1 %340, label %341, label %345

341:                                              ; preds = %334
  %342 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  %343 = load i32, i32* %7, align 4
  %344 = call i32 @close(i32 %343)
  store i32 1, i32* %24, align 4
  br label %365

345:                                              ; preds = %334
  %346 = load i32, i32* %7, align 4
  %347 = load i32, i32* %8, align 4
  %348 = call i32 @pwrite(i32 %346, i32* %10, i32 4, i32 %347)
  %349 = sext i32 %348 to i64
  %350 = icmp ne i64 %349, 4
  br i1 %350, label %351, label %354

351:                                              ; preds = %345
  %352 = load i32, i32* %8, align 4
  %353 = call i32 @fatal(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %352, i8* %37)
  br label %354

354:                                              ; preds = %351, %345
  %355 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  %356 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ztest_opts, i32 0, i32 1), align 4
  %357 = icmp sge i32 %356, 7
  br i1 %357, label %358, label %361

358:                                              ; preds = %354
  %359 = load i32, i32* %8, align 4
  %360 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %37, i32 %359)
  br label %361

361:                                              ; preds = %358, %354
  br label %280

362:                                              ; preds = %280
  %363 = load i32, i32* %7, align 4
  %364 = call i32 @close(i32 %363)
  store i32 0, i32* %24, align 4
  br label %365

365:                                              ; preds = %362, %341, %275, %269, %187, %44
  %366 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %366)
  %367 = load i32, i32* %24, align 4
  switch i32 %367, label %369 [
    i32 0, label %368
    i32 1, label %368
  ]

368:                                              ; preds = %365, %365
  ret void

369:                                              ; preds = %365
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_enter(i32*) #2

declare dso_local i32 @mutex_exit(i32*) #2

declare dso_local i32 @MAXFAULTS(...) #2

declare dso_local i32 @MAX(i32, i32) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @rw_enter(i32*, i32) #2

declare dso_local i32 @spa_config_enter(%struct.TYPE_23__*, i32, i32, i32) #2

declare dso_local i64 @ztest_random(i64) #2

declare dso_local i32 @ztest_random_vdev_top(%struct.TYPE_23__*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #2

declare dso_local %struct.TYPE_21__* @vdev_lookup_by_path(i32, i8*) #2

declare dso_local i32 @vdev_resilver_needed(%struct.TYPE_18__*, i32*, i32*) #2

declare dso_local i32 @zfs_dbgmsg(i8*, i64, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @spa_config_exit(%struct.TYPE_23__*, i32, i32) #2

declare dso_local i32 @rw_exit(i32*) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i64 @vdev_offline(%struct.TYPE_23__*, i32, i32) #2

declare dso_local i32 @vdev_online(%struct.TYPE_23__*, i32, i32, i32*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i64 @lseek(i32, i32, i32) #2

declare dso_local i32 @P2ALIGN(i64, i32) #2

declare dso_local i32 @pwrite(i32, i32*, i32, i32) #2

declare dso_local i32 @fatal(i32, i8*, i32, i8*) #2

declare dso_local i32 @printf(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
