; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_vdev_attach_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_vdev_attach_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, %struct.TYPE_22__ }
%struct.TYPE_20__ = type { i32, i64, %struct.TYPE_18__*, i32*, i32, %struct.TYPE_20__*, %struct.TYPE_20__** }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__** }
%struct.TYPE_23__ = type { i64, i32, i32 }

@ztest_shared = common dso_local global %struct.TYPE_19__* null, align 8
@ztest_spa = common dso_local global %struct.TYPE_21__* null, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ztest_vdev_lock = common dso_local global i32 0, align 4
@ztest_opts = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@SCL_ALL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@ztest_device_removal_active = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@vdev_mirror_ops = common dso_local global i32 0, align 4
@vdev_raidz_ops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@ZFS_ERR_CHECKPOINT_EXISTS = common dso_local global i32 0, align 4
@ZFS_ERR_DISCARDING_CHECKPOINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"detach (%s) returned %d\00", align 1
@ztest_dev_template = common dso_local global i8* null, align 8
@vdev_root_ops = common dso_local global i32 0, align 4
@vdev_replacing_ops = common dso_local global i32 0, align 4
@vdev_spare_ops = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"attach (%s %llu, %s %llu, %d) returned %d, expected %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_vdev_attach_detach(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** @ztest_shared, align 8
  store %struct.TYPE_19__* %31, %struct.TYPE_19__** %5, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** @ztest_spa, align 8
  store %struct.TYPE_21__* %32, %struct.TYPE_21__** %6, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  store %struct.TYPE_22__* %34, %struct.TYPE_22__** %7, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  store %struct.TYPE_20__* %37, %struct.TYPE_20__** %8, align 8
  %38 = call i64 (...) @ztest_get_ashift()
  store i64 %38, i64* %16, align 8
  %39 = load i32, i32* @MAXPATHLEN, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %21, align 8
  %42 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %22, align 8
  %43 = load i32, i32* @MAXPATHLEN, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %23, align 8
  %46 = load i32, i32* @B_FALSE, align 4
  store i32 %46, i32* %25, align 4
  %47 = load i32, i32* @B_FALSE, align 4
  store i32 %47, i32* %26, align 4
  %48 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @MAX(i32 %51, i32 1)
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ztest_opts, i32 0, i32 0), align 8
  %54 = mul i64 %52, %53
  store i64 %54, i64* %13, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %56 = load i32, i32* @SCL_ALL, align 4
  %57 = load i32, i32* @FTAG, align 4
  %58 = load i32, i32* @RW_WRITER, align 4
  %59 = call i32 @spa_config_enter(%struct.TYPE_21__* %55, i32 %56, i32 %57, i32 %58)
  %60 = load i64, i64* @ztest_device_removal_active, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %2
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %64 = load i32, i32* @SCL_ALL, align 4
  %65 = load i32, i32* @FTAG, align 4
  %66 = call i32 @spa_config_exit(%struct.TYPE_21__* %63, i32 %64, i32 %65)
  %67 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  store i32 1, i32* %30, align 4
  br label %435

68:                                               ; preds = %2
  %69 = call i32 @ztest_random(i32 2)
  store i32 %69, i32* %24, align 4
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %71 = load i32, i32* @B_TRUE, align 4
  %72 = call i64 @ztest_random_vdev_top(%struct.TYPE_21__* %70, i32 %71)
  store i64 %72, i64* %15, align 8
  %73 = load i64, i64* %13, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @ztest_random(i32 %74)
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %14, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 6
  %79 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %78, align 8
  %80 = load i64, i64* %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %79, i64 %80
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %81, align 8
  store %struct.TYPE_20__* %82, %struct.TYPE_20__** %9, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp sge i32 %85, 1
  br i1 %86, label %87, label %111

87:                                               ; preds = %68
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, @vdev_mirror_ops
  %92 = zext i1 %91 to i32
  %93 = call i32 @ASSERT(i32 %92)
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sge i32 %96, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @ASSERT(i32 %101)
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 6
  %105 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %104, align 8
  %106 = load i64, i64* %14, align 8
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ztest_opts, i32 0, i32 0), align 8
  %108 = udiv i64 %106, %107
  %109 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %105, i64 %108
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %109, align 8
  store %struct.TYPE_20__* %110, %struct.TYPE_20__** %9, align 8
  br label %111

111:                                              ; preds = %87, %68
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ztest_opts, i32 0, i32 0), align 8
  %113 = icmp ugt i64 %112, 1
  br i1 %113, label %114, label %137

114:                                              ; preds = %111
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, @vdev_raidz_ops
  %119 = zext i1 %118 to i32
  %120 = call i32 @ASSERT(i32 %119)
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ztest_opts, i32 0, i32 0), align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @ASSERT(i32 %127)
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 6
  %131 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %130, align 8
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ztest_opts, i32 0, i32 0), align 8
  %134 = urem i64 %132, %133
  %135 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %131, i64 %134
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  store %struct.TYPE_20__* %136, %struct.TYPE_20__** %9, align 8
  br label %137

137:                                              ; preds = %114, %111
  br label %138

138:                                              ; preds = %143, %137
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %138
  %144 = load i32, i32* @B_TRUE, align 4
  store i32 %144, i32* %25, align 4
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp sge i32 %147, 2
  %149 = zext i1 %148 to i32
  %150 = call i32 @ASSERT(i32 %149)
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 6
  %153 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %152, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @ztest_random(i32 %156)
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %153, i64 %158
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %159, align 8
  store %struct.TYPE_20__* %160, %struct.TYPE_20__** %9, align 8
  br label %138

161:                                              ; preds = %138
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %17, align 8
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %166 = call i64 @vdev_get_min_asize(%struct.TYPE_20__* %165)
  store i64 %166, i64* %19, align 8
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %27, align 4
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @strcpy(i8* %42, i32 %174)
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 5
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %177, align 8
  store %struct.TYPE_20__* %178, %struct.TYPE_20__** %11, align 8
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %18, align 8
  %182 = load i32, i32* %25, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %225

184:                                              ; preds = %161
  %185 = call i32 @ztest_random(i32 2)
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %225

187:                                              ; preds = %184
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %189 = load i32, i32* @SCL_ALL, align 4
  %190 = load i32, i32* @FTAG, align 4
  %191 = call i32 @spa_config_exit(%struct.TYPE_21__* %188, i32 %189, i32 %190)
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %193 = load i64, i64* %17, align 8
  %194 = load i64, i64* %18, align 8
  %195 = load i32, i32* @B_FALSE, align 4
  %196 = call i32 @spa_vdev_detach(%struct.TYPE_21__* %192, i64 %193, i64 %194, i32 %195)
  store i32 %196, i32* %28, align 4
  %197 = load i32, i32* %28, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %223

199:                                              ; preds = %187
  %200 = load i32, i32* %28, align 4
  %201 = load i32, i32* @ENODEV, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %223

203:                                              ; preds = %199
  %204 = load i32, i32* %28, align 4
  %205 = load i32, i32* @EBUSY, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %223

207:                                              ; preds = %203
  %208 = load i32, i32* %28, align 4
  %209 = load i32, i32* @ENOTSUP, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %223

211:                                              ; preds = %207
  %212 = load i32, i32* %28, align 4
  %213 = load i32, i32* @ZFS_ERR_CHECKPOINT_EXISTS, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %215, label %223

215:                                              ; preds = %211
  %216 = load i32, i32* %28, align 4
  %217 = load i32, i32* @ZFS_ERR_DISCARDING_CHECKPOINT, align 4
  %218 = icmp ne i32 %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %215
  %220 = load i32, i32* %28, align 4
  %221 = sext i32 %220 to i64
  %222 = call i32 (i32, i8*, i8*, i64, ...) @fatal(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %42, i64 %221)
  br label %223

223:                                              ; preds = %219, %215, %211, %207, %203, %199, %187
  %224 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  store i32 1, i32* %30, align 4
  br label %435

225:                                              ; preds = %184, %161
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %249

230:                                              ; preds = %225
  %231 = call i32 @ztest_random(i32 3)
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %249

233:                                              ; preds = %230
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %235, align 8
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @ztest_random(i32 %239)
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %236, i64 %241
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %242, align 8
  store %struct.TYPE_20__* %243, %struct.TYPE_20__** %10, align 8
  %244 = load i32, i32* @B_TRUE, align 4
  store i32 %244, i32* %26, align 4
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @strcpy(i8* %45, i32 %247)
  br label %270

249:                                              ; preds = %230, %225
  %250 = trunc i64 %44 to i32
  %251 = load i8*, i8** @ztest_dev_template, align 8
  %252 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ztest_opts, i32 0, i32 2), align 4
  %253 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ztest_opts, i32 0, i32 1), align 8
  %254 = load i64, i64* %15, align 8
  %255 = load i64, i64* %13, align 8
  %256 = mul i64 %254, %255
  %257 = load i64, i64* %14, align 8
  %258 = add i64 %256, %257
  %259 = call i32 @snprintf(i8* %45, i32 %250, i8* %251, i32 %252, i32 %253, i64 %258)
  %260 = call i32 @ztest_random(i32 2)
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %249
  %263 = call i32 @strlen(i8* %45)
  %264 = sub nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %45, i64 %265
  store i8 98, i8* %266, align 1
  br label %267

267:                                              ; preds = %262, %249
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %269 = call %struct.TYPE_20__* @vdev_lookup_by_path(%struct.TYPE_20__* %268, i8* %45)
  store %struct.TYPE_20__* %269, %struct.TYPE_20__** %10, align 8
  br label %270

270:                                              ; preds = %267, %233
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %272 = icmp ne %struct.TYPE_20__* %271, null
  br i1 %272, label %273, label %278

273:                                              ; preds = %270
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %275 = call i32 @vdev_reopen(%struct.TYPE_20__* %274)
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %277 = call i64 @vdev_get_min_asize(%struct.TYPE_20__* %276)
  store i64 %277, i64* %20, align 8
  br label %285

278:                                              ; preds = %270
  %279 = load i64, i64* %19, align 8
  %280 = mul i64 10, %279
  %281 = call i32 @ztest_random(i32 3)
  %282 = add nsw i32 9, %281
  %283 = sext i32 %282 to i64
  %284 = udiv i64 %280, %283
  store i64 %284, i64* %20, align 8
  br label %285

285:                                              ; preds = %278, %273
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 3
  %288 = load i32*, i32** %287, align 8
  %289 = icmp ne i32* %288, @vdev_mirror_ops
  br i1 %289, label %290, label %310

290:                                              ; preds = %285
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 3
  %293 = load i32*, i32** %292, align 8
  %294 = icmp ne i32* %293, @vdev_root_ops
  br i1 %294, label %295, label %310

295:                                              ; preds = %290
  %296 = load i32, i32* %24, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %308

298:                                              ; preds = %295
  %299 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 3
  %301 = load i32*, i32** %300, align 8
  %302 = icmp eq i32* %301, @vdev_replacing_ops
  br i1 %302, label %308, label %303

303:                                              ; preds = %298
  %304 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %305 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %304, i32 0, i32 3
  %306 = load i32*, i32** %305, align 8
  %307 = icmp eq i32* %306, @vdev_spare_ops
  br i1 %307, label %308, label %310

308:                                              ; preds = %303, %298, %295
  %309 = load i32, i32* @ENOTSUP, align 4
  store i32 %309, i32* %29, align 4
  br label %361

310:                                              ; preds = %303, %290, %285
  %311 = load i32, i32* %26, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %321

313:                                              ; preds = %310
  %314 = load i32, i32* %24, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %313
  %317 = load i32, i32* %27, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %316, %313
  %320 = load i32, i32* @ENOTSUP, align 4
  store i32 %320, i32* %29, align 4
  br label %360

321:                                              ; preds = %316, %310
  %322 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %323 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %324 = icmp eq %struct.TYPE_20__* %322, %323
  br i1 %324, label %325, label %333

325:                                              ; preds = %321
  %326 = load i32, i32* %24, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %325
  br label %331

329:                                              ; preds = %325
  %330 = load i32, i32* @EBUSY, align 4
  br label %331

331:                                              ; preds = %329, %328
  %332 = phi i32 [ 0, %328 ], [ %330, %329 ]
  store i32 %332, i32* %29, align 4
  br label %359

333:                                              ; preds = %321
  %334 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %335 = call %struct.TYPE_20__* @vdev_lookup_by_path(%struct.TYPE_20__* %334, i8* %45)
  %336 = icmp ne %struct.TYPE_20__* %335, null
  br i1 %336, label %337, label %339

337:                                              ; preds = %333
  %338 = load i32, i32* @EBUSY, align 4
  store i32 %338, i32* %29, align 4
  br label %358

339:                                              ; preds = %333
  %340 = load i64, i64* %20, align 8
  %341 = load i64, i64* %19, align 8
  %342 = icmp ult i64 %340, %341
  br i1 %342, label %343, label %345

343:                                              ; preds = %339
  %344 = load i32, i32* @EOVERFLOW, align 4
  store i32 %344, i32* %29, align 4
  br label %357

345:                                              ; preds = %339
  %346 = load i64, i64* %16, align 8
  %347 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %348 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %347, i32 0, i32 2
  %349 = load %struct.TYPE_18__*, %struct.TYPE_18__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %349, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = icmp ugt i64 %346, %351
  br i1 %352, label %353, label %355

353:                                              ; preds = %345
  %354 = load i32, i32* @EDOM, align 4
  store i32 %354, i32* %29, align 4
  br label %356

355:                                              ; preds = %345
  store i32 0, i32* %29, align 4
  br label %356

356:                                              ; preds = %355, %353
  br label %357

357:                                              ; preds = %356, %343
  br label %358

358:                                              ; preds = %357, %337
  br label %359

359:                                              ; preds = %358, %331
  br label %360

360:                                              ; preds = %359, %319
  br label %361

361:                                              ; preds = %360, %308
  %362 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %363 = load i32, i32* @SCL_ALL, align 4
  %364 = load i32, i32* @FTAG, align 4
  %365 = call i32 @spa_config_exit(%struct.TYPE_21__* %362, i32 %363, i32 %364)
  %366 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %367 = icmp eq %struct.TYPE_20__* %366, null
  br i1 %367, label %368, label %370

368:                                              ; preds = %361
  %369 = load i64, i64* %20, align 8
  br label %371

370:                                              ; preds = %361
  br label %371

371:                                              ; preds = %370, %368
  %372 = phi i64 [ %369, %368 ], [ 0, %370 ]
  %373 = load i64, i64* %16, align 8
  %374 = call i32* @make_vdev_root(i8* %45, i32* null, i32* null, i64 %372, i64 %373, i32 0, i32 0, i32 0, i32 1)
  store i32* %374, i32** %12, align 8
  %375 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %376 = load i64, i64* %17, align 8
  %377 = load i32*, i32** %12, align 8
  %378 = load i32, i32* %24, align 4
  %379 = call i32 @spa_vdev_attach(%struct.TYPE_21__* %375, i64 %376, i32* %377, i32 %378)
  store i32 %379, i32* %28, align 4
  %380 = load i32*, i32** %12, align 8
  %381 = call i32 @nvlist_free(i32* %380)
  %382 = load i32, i32* %29, align 4
  %383 = load i32, i32* @ENOTSUP, align 4
  %384 = icmp eq i32 %382, %383
  br i1 %384, label %385, label %398

385:                                              ; preds = %371
  %386 = load i32, i32* %28, align 4
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %396, label %388

388:                                              ; preds = %385
  %389 = load i32, i32* %28, align 4
  %390 = load i32, i32* @ENODEV, align 4
  %391 = icmp eq i32 %389, %390
  br i1 %391, label %396, label %392

392:                                              ; preds = %388
  %393 = load i32, i32* %28, align 4
  %394 = load i32, i32* @EOVERFLOW, align 4
  %395 = icmp eq i32 %393, %394
  br i1 %395, label %396, label %398

396:                                              ; preds = %392, %388, %385
  %397 = load i32, i32* %28, align 4
  store i32 %397, i32* %29, align 4
  br label %398

398:                                              ; preds = %396, %392, %371
  %399 = load i32, i32* %28, align 4
  %400 = load i32, i32* @EOVERFLOW, align 4
  %401 = icmp eq i32 %399, %400
  br i1 %401, label %406, label %402

402:                                              ; preds = %398
  %403 = load i32, i32* %28, align 4
  %404 = load i32, i32* @EBUSY, align 4
  %405 = icmp eq i32 %403, %404
  br i1 %405, label %406, label %408

406:                                              ; preds = %402, %398
  %407 = load i32, i32* %28, align 4
  store i32 %407, i32* %29, align 4
  br label %408

408:                                              ; preds = %406, %402
  %409 = load i32, i32* %28, align 4
  %410 = load i32, i32* @ZFS_ERR_CHECKPOINT_EXISTS, align 4
  %411 = icmp eq i32 %409, %410
  br i1 %411, label %416, label %412

412:                                              ; preds = %408
  %413 = load i32, i32* %28, align 4
  %414 = load i32, i32* @ZFS_ERR_DISCARDING_CHECKPOINT, align 4
  %415 = icmp eq i32 %413, %414
  br i1 %415, label %416, label %418

416:                                              ; preds = %412, %408
  %417 = load i32, i32* %28, align 4
  store i32 %417, i32* %29, align 4
  br label %418

418:                                              ; preds = %416, %412
  %419 = load i32, i32* %28, align 4
  %420 = load i32, i32* %29, align 4
  %421 = icmp ne i32 %419, %420
  br i1 %421, label %422, label %433

422:                                              ; preds = %418
  %423 = load i32, i32* %29, align 4
  %424 = load i32, i32* @EBUSY, align 4
  %425 = icmp ne i32 %423, %424
  br i1 %425, label %426, label %433

426:                                              ; preds = %422
  %427 = load i64, i64* %19, align 8
  %428 = load i64, i64* %20, align 8
  %429 = load i32, i32* %24, align 4
  %430 = load i32, i32* %28, align 4
  %431 = load i32, i32* %29, align 4
  %432 = call i32 (i32, i8*, i8*, i64, ...) @fatal(i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %42, i64 %427, i8* %45, i64 %428, i32 %429, i32 %430, i32 %431)
  br label %433

433:                                              ; preds = %426, %422, %418
  %434 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  store i32 0, i32* %30, align 4
  br label %435

435:                                              ; preds = %433, %223, %62
  %436 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %436)
  %437 = load i32, i32* %30, align 4
  switch i32 %437, label %439 [
    i32 0, label %438
    i32 1, label %438
  ]

438:                                              ; preds = %435, %435
  ret void

439:                                              ; preds = %435
  unreachable
}

declare dso_local i64 @ztest_get_ashift(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @ztest_random(i32) #1

declare dso_local i64 @ztest_random_vdev_top(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @vdev_get_min_asize(%struct.TYPE_20__*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @spa_vdev_detach(%struct.TYPE_21__*, i64, i64, i32) #1

declare dso_local i32 @fatal(i32, i8*, i8*, i64, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_20__* @vdev_lookup_by_path(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @vdev_reopen(%struct.TYPE_20__*) #1

declare dso_local i32* @make_vdev_root(i8*, i32*, i32*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @spa_vdev_attach(%struct.TYPE_21__*, i64, i32*, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
