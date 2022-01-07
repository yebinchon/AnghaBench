; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_diff.c_get_snapshot_names.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_diff.c_get_snapshot_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Badly formed snapshot name %s\00", align 1
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Unable to determine which snapshots to compare\00", align 1
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_PROP_ORIGIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Not an earlier snapshot from the same fs\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i8*)* @get_snapshot_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_snapshot_names(%struct.TYPE_6__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %80

28:                                               ; preds = %3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TEXT_DOMAIN, align 4
  %33 = call i8* @dgettext(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %31, i32 4, i8* %33, i8* %34)
  %36 = load i32*, i32** %8, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %39 = load i32, i32* @B_FALSE, align 4
  %40 = call i32 @zfs_validate_name(i32* %36, i8* %37, i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %28
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @zfs_error(i32* %43, i32 %44, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %330

49:                                               ; preds = %28
  %50 = load i8*, i8** %6, align 8
  %51 = call i8* @strchr(i8* %50, i8 signext 64)
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ne i8* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT(i32 %54)
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %11, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i8* @zfs_strdup(i32* %62, i8* %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i8* @zfs_strdup(i32* %67, i8* %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 0, i8* %77, align 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = call i32 @make_temp_snapshot(%struct.TYPE_6__* %78)
  store i32 %79, i32* %4, align 4
  br label %330

80:                                               ; preds = %3
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @TEXT_DOMAIN, align 4
  %85 = call i8* @dgettext(i32 %84, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %86 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %83, i32 4, i8* %85)
  %87 = load i8*, i8** %6, align 8
  %88 = call i8* @strchr(i8* %87, i8 signext 64)
  store i8* %88, i8** %9, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = call i8* @strchr(i8* %89, i8 signext 64)
  store i8* %90, i8** %10, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %80
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  br label %103

99:                                               ; preds = %80
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @strlen(i8* %100)
  %102 = sext i32 %101 to i64
  br label %103

103:                                              ; preds = %99, %93
  %104 = phi i64 [ %98, %93 ], [ %102, %99 ]
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %11, align 4
  %106 = load i8*, i8** %10, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i8*, i8** %10, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  br label %118

114:                                              ; preds = %103
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @strlen(i8* %115)
  %117 = sext i32 %116 to i64
  br label %118

118:                                              ; preds = %114, %108
  %119 = phi i64 [ %113, %108 ], [ %117, %114 ]
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %13, align 4
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 @strlen(i8* %121)
  %123 = load i32, i32* %11, align 4
  %124 = sub nsw i32 %122, %123
  store i32 %124, i32* %12, align 4
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 @strlen(i8* %125)
  %127 = load i32, i32* %13, align 4
  %128 = sub nsw i32 %126, %127
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp sle i32 %129, 1
  br i1 %130, label %146, label %131

131:                                              ; preds = %118
  %132 = load i32, i32* %14, align 4
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %146, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %11, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %13, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %137, %134
  %141 = load i32, i32* %12, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %140
  %144 = load i32, i32* %14, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %143, %137, %131, %118
  %147 = load i32*, i32** %8, align 8
  %148 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @zfs_error(i32* %147, i32 %148, i32 %151)
  store i32 %152, i32* %4, align 4
  br label %330

153:                                              ; preds = %143, %140
  %154 = load i32, i32* %11, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %271

156:                                              ; preds = %153
  %157 = load i32, i32* %13, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %271

159:                                              ; preds = %156
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %169, label %163

163:                                              ; preds = %159
  %164 = load i8*, i8** %6, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = load i32, i32* %11, align 4
  %167 = call i64 @strncmp(i8* %164, i8* %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %271

169:                                              ; preds = %163, %159
  %170 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %171 = zext i32 %170 to i64
  %172 = call i8* @llvm.stacksave()
  store i8* %172, i8** %15, align 8
  %173 = alloca i8, i64 %171, align 16
  store i64 %171, i64* %16, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 5
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %179, 1
  %181 = call i8* @zfs_alloc(i32* %178, i32 %180)
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  store i8* %181, i8** %183, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = load i8*, i8** %7, align 8
  %188 = load i32, i32* %13, align 4
  %189 = call i32 @strncpy(i8* %186, i8* %187, i32 %188)
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  store i8 0, i8* %195, align 1
  %196 = load i32*, i32** %8, align 8
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %201 = call i32* @zfs_open(i32* %196, i8* %199, i32 %200)
  store i32* %201, i32** %18, align 8
  br label %202

202:                                              ; preds = %221, %169
  %203 = load i32*, i32** %18, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %227

205:                                              ; preds = %202
  %206 = load i32*, i32** %18, align 8
  %207 = load i32, i32* @ZFS_PROP_ORIGIN, align 4
  %208 = trunc i64 %171 to i32
  %209 = load i32, i32* @B_FALSE, align 4
  %210 = call i64 @zfs_prop_get(i32* %206, i32 %207, i8* %173, i32 %208, i32* %17, i32* null, i32 0, i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %205
  %213 = load i32*, i32** %18, align 8
  %214 = call i32 @zfs_close(i32* %213)
  store i32* null, i32** %18, align 8
  br label %227

215:                                              ; preds = %205
  %216 = load i8*, i8** %6, align 8
  %217 = load i32, i32* %12, align 4
  %218 = call i64 @strncmp(i8* %173, i8* %216, i32 %217)
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  br label %227

221:                                              ; preds = %215
  %222 = load i32*, i32** %18, align 8
  %223 = call i32 @zfs_close(i32* %222)
  %224 = load i32*, i32** %8, align 8
  %225 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %226 = call i32* @zfs_open(i32* %224, i8* %173, i32 %225)
  store i32* %226, i32** %18, align 8
  br label %202

227:                                              ; preds = %220, %212, %202
  %228 = load i32*, i32** %18, align 8
  %229 = icmp eq i32* %228, null
  br i1 %229, label %230, label %243

230:                                              ; preds = %227
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @TEXT_DOMAIN, align 4
  %235 = call i8* @dgettext(i32 %234, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %236 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %233, i32 4, i8* %235)
  %237 = load i32*, i32** %8, align 8
  %238 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @zfs_error(i32* %237, i32 %238, i32 %241)
  store i32 %242, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %267

243:                                              ; preds = %227
  %244 = load i32*, i32** %18, align 8
  %245 = call i32 @zfs_close(i32* %244)
  br label %246

246:                                              ; preds = %243
  %247 = load i32, i32* @B_TRUE, align 4
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 3
  store i32 %247, i32* %249, align 8
  %250 = load i32*, i32** %8, align 8
  %251 = load i8*, i8** %6, align 8
  %252 = call i8* @zfs_strdup(i32* %250, i8* %251)
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 2
  store i8* %252, i8** %254, align 8
  %255 = load i32, i32* %14, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %246
  %258 = load i32*, i32** %8, align 8
  %259 = load i8*, i8** %7, align 8
  %260 = call i8* @zfs_strdup(i32* %258, i8* %259)
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 1
  store i8* %260, i8** %262, align 8
  br label %266

263:                                              ; preds = %246
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %265 = call i32 @make_temp_snapshot(%struct.TYPE_6__* %264)
  store i32 %265, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %267

266:                                              ; preds = %257
  store i32 0, i32* %19, align 4
  br label %267

267:                                              ; preds = %266, %263, %230
  %268 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %268)
  %269 = load i32, i32* %19, align 4
  switch i32 %269, label %332 [
    i32 0, label %270
    i32 1, label %330
  ]

270:                                              ; preds = %267
  br label %328

271:                                              ; preds = %163, %156, %153
  %272 = load i32, i32* %11, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %271
  %275 = load i32, i32* %11, align 4
  br label %278

276:                                              ; preds = %271
  %277 = load i32, i32* %13, align 4
  br label %278

278:                                              ; preds = %276, %274
  %279 = phi i32 [ %275, %274 ], [ %277, %276 ]
  store i32 %279, i32* %20, align 4
  %280 = load i32*, i32** %8, align 8
  %281 = load i32, i32* %20, align 4
  %282 = add nsw i32 %281, 1
  %283 = call i8* @zfs_alloc(i32* %280, i32 %282)
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 0
  store i8* %283, i8** %285, align 8
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  %289 = load i32, i32* %11, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %278
  %292 = load i8*, i8** %6, align 8
  br label %295

293:                                              ; preds = %278
  %294 = load i8*, i8** %7, align 8
  br label %295

295:                                              ; preds = %293, %291
  %296 = phi i8* [ %292, %291 ], [ %294, %293 ]
  %297 = load i32, i32* %20, align 4
  %298 = call i32 @strncpy(i8* %288, i8* %296, i32 %297)
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 0
  %301 = load i8*, i8** %300, align 8
  %302 = load i32, i32* %20, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, i8* %301, i64 %303
  store i8 0, i8* %304, align 1
  %305 = load i32*, i32** %8, align 8
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 0
  %308 = load i8*, i8** %307, align 8
  %309 = load i8*, i8** %9, align 8
  %310 = call i8* @zfs_asprintf(i32* %305, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %308, i8* %309)
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 2
  store i8* %310, i8** %312, align 8
  %313 = load i32, i32* %14, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %324

315:                                              ; preds = %295
  %316 = load i32*, i32** %8, align 8
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = load i8*, i8** %10, align 8
  %321 = call i8* @zfs_asprintf(i32* %316, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %319, i8* %320)
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 1
  store i8* %321, i8** %323, align 8
  br label %327

324:                                              ; preds = %295
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %326 = call i32 @make_temp_snapshot(%struct.TYPE_6__* %325)
  store i32 %326, i32* %4, align 4
  br label %330

327:                                              ; preds = %315
  br label %328

328:                                              ; preds = %327, %270
  br label %329

329:                                              ; preds = %328
  store i32 0, i32* %4, align 4
  br label %330

330:                                              ; preds = %329, %324, %267, %146, %49, %42
  %331 = load i32, i32* %4, align 4
  ret i32 %331

332:                                              ; preds = %267
  unreachable
}

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_validate_name(i32*, i8*, i32, i32) #1

declare dso_local i32 @zfs_error(i32*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @zfs_strdup(i32*, i8*) #1

declare dso_local i32 @make_temp_snapshot(%struct.TYPE_6__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @zfs_alloc(i32*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32* @zfs_open(i32*, i8*, i32) #1

declare dso_local i64 @zfs_prop_get(i32*, i32, i8*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @zfs_close(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @zfs_asprintf(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
