; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_vdev_split.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_vdev_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i32* }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i8*, i8* }

@B_FALSE = common dso_local global i8* null, align 8
@B_TRUE = common dso_local global i8* null, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unable to split %s\00", align 1
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Internal error: unable to retrieve pool configuration\0A\00", align 1
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VERSION = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Source pool is missing vdev tree\00", align 1
@ZPOOL_CONFIG_IS_LOG = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_HOLE = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_HOLE = common dso_local global i8* null, align 8
@VDEV_TYPE_MIRROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Source pool must be composed only of mirrors\0A\00", align 1
@EZFS_INVALCONFIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"Device list must include at most one disk from each mirror\00", align 1
@VDEV_TYPE_ROOT = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@ZPOOL_EXPORT_AFTER_SPLIT = common dso_local global i32 0, align 4
@ZFS_IOC_VDEV_SPLIT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_vdev_split(%struct.TYPE_14__* %0, i8* %1, i32** %2, i32* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_15__, align 4
  %14 = alloca [1024 x i8], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca %struct.TYPE_17__, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i32**, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = bitcast %struct.TYPE_16__* %8 to { i32, i64 }*
  %43 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %42, i32 0, i32 0
  store i32 %4, i32* %43, align 8
  %44 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %42, i32 0, i32 1
  store i64 %5, i64* %44, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32** %2, i32*** %11, align 8
  store i32* %3, i32** %12, align 8
  %45 = bitcast %struct.TYPE_15__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %45, i8 0, i64 16, i1 false)
  store i32* null, i32** %19, align 8
  store i32** null, i32*** %20, align 8
  store i32* null, i32** %21, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %27, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %28, align 8
  %49 = load i8*, i8** @B_FALSE, align 8
  store i8* %49, i8** %30, align 8
  %50 = load i8*, i8** @B_TRUE, align 8
  store i8* %50, i8** %31, align 8
  store i32 0, i32* %32, align 4
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %52 = load i32, i32* @TEXT_DOMAIN, align 4
  %53 = call i8* @dgettext(i32 %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @snprintf(i8* %51, i32 1024, i8* %53, i8* %56)
  %58 = load i32*, i32** %28, align 8
  %59 = load i8*, i8** @B_FALSE, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @zpool_name_valid(i32* %58, i8* %59, i8* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %6
  %64 = load i32*, i32** %28, align 8
  %65 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %67 = call i32 @zfs_error(i32* %64, i32 %65, i8* %66)
  store i32 %67, i32* %7, align 4
  br label %454

68:                                               ; preds = %6
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %70 = call i32* @zpool_get_config(%struct.TYPE_14__* %69, i32* null)
  store i32* %70, i32** %16, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* @stderr, align 4
  %74 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %75 = call i32 @fprintf(i32 %73, i8* %74)
  store i32 -1, i32* %7, align 4
  br label %454

76:                                               ; preds = %68
  %77 = load i32*, i32** %16, align 8
  %78 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %79 = call i64 @nvlist_lookup_nvlist(i32* %77, i32 %78, i32** %15)
  %80 = icmp eq i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @verify(i32 %81)
  %83 = load i32*, i32** %16, align 8
  %84 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %85 = call i64 @nvlist_lookup_uint64(i32* %83, i32 %84, i32* %29)
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @verify(i32 %87)
  %89 = load i32*, i32** %12, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %112

91:                                               ; preds = %76
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %93 = load i8*, i8** @B_FALSE, align 8
  store i8* %93, i8** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %95 = load i8*, i8** @B_TRUE, align 8
  store i8* %95, i8** %94, align 8
  %96 = load i32*, i32** %28, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %29, align 4
  %102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %103 = bitcast %struct.TYPE_17__* %33 to { i8*, i8* }*
  %104 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %103, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32* @zpool_valid_proplist(i32* %96, i8* %99, i32* %100, i32 %101, i8* %105, i8* %107, i8* %102)
  store i32* %108, i32** %21, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %91
  store i32 -1, i32* %7, align 4
  br label %454

111:                                              ; preds = %91
  br label %112

112:                                              ; preds = %111, %76
  %113 = load i32*, i32** %15, align 8
  %114 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %115 = call i64 @nvlist_lookup_nvlist_array(i32* %113, i32 %114, i32*** %17, i32* %23)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load i32*, i32** %28, align 8
  %119 = load i32, i32* @TEXT_DOMAIN, align 4
  %120 = call i8* @dgettext(i32 %119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %121 = call i32 @zfs_error_aux(i32* %118, i8* %120)
  %122 = load i32*, i32** %21, align 8
  %123 = call i32 @nvlist_free(i32* %122)
  store i32 -1, i32* %7, align 4
  br label %454

124:                                              ; preds = %112
  %125 = load i32*, i32** %28, align 8
  %126 = load i32, i32* %23, align 4
  %127 = sext i32 %126 to i64
  %128 = mul i64 %127, 8
  %129 = trunc i64 %128 to i32
  %130 = call i32** @zfs_alloc(i32* %125, i32 %129)
  store i32** %130, i32*** %20, align 8
  store i32 0, i32* %26, align 4
  %131 = load i32**, i32*** %11, align 8
  %132 = load i32*, i32** %131, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %140, label %134

134:                                              ; preds = %124
  %135 = load i32**, i32*** %11, align 8
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %138 = call i64 @nvlist_lookup_nvlist_array(i32* %136, i32 %137, i32*** %18, i32* %24)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134, %124
  store i32 0, i32* %24, align 4
  br label %141

141:                                              ; preds = %140, %134
  store i32 0, i32* %22, align 4
  br label %142

142:                                              ; preds = %271, %141
  %143 = load i32, i32* %22, align 4
  %144 = load i32, i32* %23, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %274

146:                                              ; preds = %142
  %147 = load i8*, i8** @B_FALSE, align 8
  %148 = ptrtoint i8* %147 to i32
  store i32 %148, i32* %34, align 4
  %149 = load i8*, i8** @B_FALSE, align 8
  %150 = ptrtoint i8* %149 to i32
  store i32 %150, i32* %35, align 4
  %151 = load i32**, i32*** %17, align 8
  %152 = load i32, i32* %22, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* @ZPOOL_CONFIG_IS_LOG, align 4
  %157 = call i64 @nvlist_lookup_uint64(i32* %155, i32 %156, i32* %34)
  %158 = load i32**, i32*** %17, align 8
  %159 = load i32, i32* %22, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %158, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* @ZPOOL_CONFIG_IS_HOLE, align 4
  %164 = call i64 @nvlist_lookup_uint64(i32* %162, i32 %163, i32* %35)
  %165 = load i32, i32* %34, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %146
  %168 = load i32, i32* %35, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %200

170:                                              ; preds = %167, %146
  %171 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %172 = call i64 @nvlist_alloc(i32** %38, i32 %171, i32 0)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  br label %408

175:                                              ; preds = %170
  %176 = load i32*, i32** %38, align 8
  %177 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %178 = load i8*, i8** @VDEV_TYPE_HOLE, align 8
  %179 = call i64 @nvlist_add_string(i32* %176, i32 %177, i8* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  br label %408

182:                                              ; preds = %175
  %183 = load i32*, i32** %38, align 8
  %184 = load i32, i32* @ZPOOL_CONFIG_IS_HOLE, align 4
  %185 = call i64 @nvlist_add_uint64(i32* %183, i32 %184, i32 1)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  br label %408

188:                                              ; preds = %182
  %189 = load i32, i32* %25, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = load i32, i32* %26, align 4
  store i32 %192, i32* %25, align 4
  br label %193

193:                                              ; preds = %191, %188
  %194 = load i32*, i32** %38, align 8
  %195 = load i32**, i32*** %20, align 8
  %196 = load i32, i32* %26, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %26, align 4
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i32*, i32** %195, i64 %198
  store i32* %194, i32** %199, align 8
  br label %271

200:                                              ; preds = %167
  store i32 0, i32* %25, align 4
  %201 = load i32**, i32*** %17, align 8
  %202 = load i32, i32* %22, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %207 = call i64 @nvlist_lookup_string(i32* %205, i32 %206, i8** %36)
  %208 = icmp eq i64 %207, 0
  %209 = zext i1 %208 to i32
  %210 = call i32 @verify(i32 %209)
  %211 = load i8*, i8** %36, align 8
  %212 = load i32, i32* @VDEV_TYPE_MIRROR, align 4
  %213 = call i64 @strcmp(i8* %211, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %200
  %216 = load i32*, i32** %28, align 8
  %217 = load i32, i32* @TEXT_DOMAIN, align 4
  %218 = call i8* @dgettext(i32 %217, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %219 = call i32 @zfs_error_aux(i32* %216, i8* %218)
  %220 = load i32*, i32** %28, align 8
  %221 = load i32, i32* @EZFS_INVALCONFIG, align 4
  %222 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %223 = call i32 @zfs_error(i32* %220, i32 %221, i8* %222)
  store i32 %223, i32* %32, align 4
  br label %408

224:                                              ; preds = %200
  %225 = load i32**, i32*** %17, align 8
  %226 = load i32, i32* %22, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32*, i32** %225, i64 %227
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %231 = call i64 @nvlist_lookup_nvlist_array(i32* %229, i32 %230, i32*** %37, i32* %39)
  %232 = icmp eq i64 %231, 0
  %233 = zext i1 %232 to i32
  %234 = call i32 @verify(i32 %233)
  %235 = load i32, i32* %24, align 4
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %253

237:                                              ; preds = %224
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %239 = load i32**, i32*** %37, align 8
  %240 = load i32, i32* %39, align 4
  %241 = load i32**, i32*** %18, align 8
  %242 = load i32, i32* %24, align 4
  %243 = call i32 @find_vdev_entry(%struct.TYPE_14__* %238, i32** %239, i32 %240, i32** %241, i32 %242)
  store i32 %243, i32* %40, align 4
  %244 = icmp sge i32 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %237
  %246 = load i32**, i32*** %37, align 8
  %247 = load i32, i32* %40, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32*, i32** %246, i64 %248
  %250 = load i32*, i32** %249, align 8
  store i32* %250, i32** %38, align 8
  %251 = load i32, i32* %27, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %27, align 4
  br label %260

253:                                              ; preds = %237, %224
  %254 = load i32**, i32*** %37, align 8
  %255 = load i32, i32* %39, align 4
  %256 = sub nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32*, i32** %254, i64 %257
  %259 = load i32*, i32** %258, align 8
  store i32* %259, i32** %38, align 8
  br label %260

260:                                              ; preds = %253, %245
  %261 = load i32*, i32** %38, align 8
  %262 = load i32**, i32*** %20, align 8
  %263 = load i32, i32* %26, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %26, align 4
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds i32*, i32** %262, i64 %265
  %267 = call i64 @nvlist_dup(i32* %261, i32** %266, i32 0)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %260
  br label %408

270:                                              ; preds = %260
  br label %271

271:                                              ; preds = %270, %193
  %272 = load i32, i32* %22, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %22, align 4
  br label %142

274:                                              ; preds = %142
  %275 = load i32, i32* %27, align 4
  %276 = load i32, i32* %24, align 4
  %277 = icmp ne i32 %275, %276
  br i1 %277, label %278, label %287

278:                                              ; preds = %274
  %279 = load i32*, i32** %28, align 8
  %280 = load i32, i32* @TEXT_DOMAIN, align 4
  %281 = call i8* @dgettext(i32 %280, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %282 = call i32 @zfs_error_aux(i32* %279, i8* %281)
  %283 = load i32*, i32** %28, align 8
  %284 = load i32, i32* @EZFS_INVALCONFIG, align 4
  %285 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %286 = call i32 @zfs_error(i32* %283, i32 %284, i8* %285)
  store i32 %286, i32* %32, align 4
  br label %408

287:                                              ; preds = %274
  %288 = load i32**, i32*** %11, align 8
  %289 = load i32*, i32** %288, align 8
  %290 = icmp eq i32* %289, null
  br i1 %290, label %291, label %307

291:                                              ; preds = %287
  %292 = load i32**, i32*** %11, align 8
  %293 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %294 = call i64 @nvlist_alloc(i32** %292, i32 %293, i32 0)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %291
  br label %408

297:                                              ; preds = %291
  %298 = load i8*, i8** @B_TRUE, align 8
  store i8* %298, i8** %30, align 8
  %299 = load i32**, i32*** %11, align 8
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %302 = load i8*, i8** @VDEV_TYPE_ROOT, align 8
  %303 = call i64 @nvlist_add_string(i32* %300, i32 %301, i8* %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %297
  br label %408

306:                                              ; preds = %297
  br label %315

307:                                              ; preds = %287
  %308 = load i32**, i32*** %11, align 8
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %311 = call i64 @nvlist_remove_all(i32* %309, i32 %310)
  %312 = icmp eq i64 %311, 0
  %313 = zext i1 %312 to i32
  %314 = call i32 @verify(i32 %313)
  br label %315

315:                                              ; preds = %307, %306
  %316 = load i32**, i32*** %11, align 8
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %319 = load i32**, i32*** %20, align 8
  %320 = load i32, i32* %25, align 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %315
  %323 = load i32, i32* %26, align 4
  br label %326

324:                                              ; preds = %315
  %325 = load i32, i32* %25, align 4
  br label %326

326:                                              ; preds = %324, %322
  %327 = phi i32 [ %323, %322 ], [ %325, %324 ]
  %328 = call i64 @nvlist_add_nvlist_array(i32* %317, i32 %318, i32** %319, i32 %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %326
  br label %408

331:                                              ; preds = %326
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %331
  %336 = load i8*, i8** @B_FALSE, align 8
  store i8* %336, i8** %31, align 8
  %337 = load i8*, i8** @B_FALSE, align 8
  store i8* %337, i8** %30, align 8
  br label %408

338:                                              ; preds = %331
  %339 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %340 = call i64 @nvlist_alloc(i32** %19, i32 %339, i32 0)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %338
  br label %408

343:                                              ; preds = %338
  %344 = load i32*, i32** %19, align 8
  %345 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %346 = load i32**, i32*** %11, align 8
  %347 = load i32*, i32** %346, align 8
  %348 = call i64 @nvlist_add_nvlist(i32* %344, i32 %345, i32* %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %362, label %350

350:                                              ; preds = %343
  %351 = load i32*, i32** %19, align 8
  %352 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %353 = load i8*, i8** %10, align 8
  %354 = call i64 @nvlist_add_string(i32* %351, i32 %352, i8* %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %362, label %356

356:                                              ; preds = %350
  %357 = load i32*, i32** %19, align 8
  %358 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %359 = load i32, i32* %29, align 4
  %360 = call i64 @nvlist_add_uint64(i32* %357, i32 %358, i32 %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %356, %350, %343
  br label %408

363:                                              ; preds = %356
  %364 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %370, label %367

367:                                              ; preds = %363
  %368 = load i32, i32* @ZPOOL_EXPORT_AFTER_SPLIT, align 4
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  store i32 %368, i32* %369, align 4
  br label %370

370:                                              ; preds = %367, %363
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %374 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %373, i32 0, i32 0
  %375 = load i8*, i8** %374, align 8
  %376 = call i32 @strlcpy(i32 %372, i8* %375, i32 4)
  %377 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = load i8*, i8** %10, align 8
  %380 = call i32 @strlcpy(i32 %378, i8* %379, i32 4)
  %381 = load i32*, i32** %28, align 8
  %382 = load i32*, i32** %19, align 8
  %383 = call i64 @zcmd_write_conf_nvlist(i32* %381, %struct.TYPE_15__* %13, i32* %382)
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %370
  br label %408

386:                                              ; preds = %370
  %387 = load i32*, i32** %21, align 8
  %388 = icmp ne i32* %387, null
  br i1 %388, label %389, label %395

389:                                              ; preds = %386
  %390 = load i32*, i32** %28, align 8
  %391 = load i32*, i32** %21, align 8
  %392 = call i64 @zcmd_write_src_nvlist(i32* %390, %struct.TYPE_15__* %13, i32* %391)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %395

394:                                              ; preds = %389
  br label %408

395:                                              ; preds = %389, %386
  %396 = load i32*, i32** %28, align 8
  %397 = load i32, i32* @ZFS_IOC_VDEV_SPLIT, align 4
  %398 = call i64 @zfs_ioctl(i32* %396, i32 %397, %struct.TYPE_15__* %13)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %395
  %401 = load i32*, i32** %28, align 8
  %402 = load i32, i32* @errno, align 4
  %403 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %404 = call i32 @zpool_standard_error(i32* %401, i32 %402, i8* %403)
  store i32 %404, i32* %32, align 4
  br label %408

405:                                              ; preds = %395
  %406 = load i8*, i8** @B_FALSE, align 8
  store i8* %406, i8** %30, align 8
  %407 = load i8*, i8** @B_FALSE, align 8
  store i8* %407, i8** %31, align 8
  br label %408

408:                                              ; preds = %405, %400, %394, %385, %362, %342, %335, %330, %305, %296, %278, %269, %215, %187, %181, %174
  %409 = load i32**, i32*** %20, align 8
  %410 = icmp ne i32** %409, null
  br i1 %410, label %411, label %429

411:                                              ; preds = %408
  store i32 0, i32* %41, align 4
  br label %412

412:                                              ; preds = %423, %411
  %413 = load i32, i32* %41, align 4
  %414 = load i32, i32* %26, align 4
  %415 = icmp slt i32 %413, %414
  br i1 %415, label %416, label %426

416:                                              ; preds = %412
  %417 = load i32**, i32*** %20, align 8
  %418 = load i32, i32* %41, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32*, i32** %417, i64 %419
  %421 = load i32*, i32** %420, align 8
  %422 = call i32 @nvlist_free(i32* %421)
  br label %423

423:                                              ; preds = %416
  %424 = load i32, i32* %41, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %41, align 4
  br label %412

426:                                              ; preds = %412
  %427 = load i32**, i32*** %20, align 8
  %428 = call i32 @free(i32** %427)
  br label %429

429:                                              ; preds = %426, %408
  %430 = call i32 @zcmd_free_nvlists(%struct.TYPE_15__* %13)
  %431 = load i32*, i32** %21, align 8
  %432 = call i32 @nvlist_free(i32* %431)
  %433 = load i32*, i32** %19, align 8
  %434 = call i32 @nvlist_free(i32* %433)
  %435 = load i8*, i8** %30, align 8
  %436 = icmp ne i8* %435, null
  br i1 %436, label %437, label %442

437:                                              ; preds = %429
  %438 = load i32**, i32*** %11, align 8
  %439 = load i32*, i32** %438, align 8
  %440 = call i32 @nvlist_free(i32* %439)
  %441 = load i32**, i32*** %11, align 8
  store i32* null, i32** %441, align 8
  br label %442

442:                                              ; preds = %437, %429
  %443 = load i32, i32* %32, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %447

445:                                              ; preds = %442
  %446 = load i32, i32* %32, align 4
  store i32 %446, i32* %7, align 4
  br label %454

447:                                              ; preds = %442
  %448 = load i8*, i8** %31, align 8
  %449 = icmp ne i8* %448, null
  br i1 %449, label %450, label %453

450:                                              ; preds = %447
  %451 = load i32*, i32** %28, align 8
  %452 = call i32 @no_memory(i32* %451)
  store i32 %452, i32* %7, align 4
  br label %454

453:                                              ; preds = %447
  store i32 0, i32* %7, align 4
  br label %454

454:                                              ; preds = %453, %450, %445, %117, %110, %72, %63
  %455 = load i32, i32* %7, align 4
  ret i32 %455
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zpool_name_valid(i32*, i8*, i8*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32* @zpool_get_config(%struct.TYPE_14__*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #2

declare dso_local i32* @zpool_valid_proplist(i32*, i8*, i32*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i32*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32** @zfs_alloc(i32*, i32) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #2

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i32) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @find_vdev_entry(%struct.TYPE_14__*, i32**, i32, i32**, i32) #2

declare dso_local i64 @nvlist_dup(i32*, i32**, i32) #2

declare dso_local i64 @nvlist_remove_all(i32*, i32) #2

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i32, i32**, i32) #2

declare dso_local i64 @nvlist_add_nvlist(i32*, i32, i32*) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i64 @zcmd_write_conf_nvlist(i32*, %struct.TYPE_15__*, i32*) #2

declare dso_local i64 @zcmd_write_src_nvlist(i32*, %struct.TYPE_15__*, i32*) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_15__*) #2

declare dso_local i32 @zpool_standard_error(i32*, i32, i8*) #2

declare dso_local i32 @free(i32**) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_15__*) #2

declare dso_local i32 @no_memory(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
